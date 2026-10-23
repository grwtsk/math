/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #764. Direct stacked parent: draft PR #760 at exact head
`395f9ad19fc917835855081fc2e77b64dc05bb09`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitMathlibZModDFTBridge
import Mathlib.Analysis.Complex.Norm

/-!
# Unnormalized Parseval for Mathlib's ZMod DFT

Mathlib's DFT inversion proof already uses the primitive-character identity

`sum_k stdAddChar (t*k) = N` for `t=0`, and zero otherwise.

This module applies the same finite orthogonality to the quadratic DFT energy.
The target normalization is counting-measure / unnormalized:

`sum_k ||dft C k||^2 = N * sum_s ||C s||^2`.

For the RH branch we instantiate `N=d*d`.

No estimate of the signed residue-space energy is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators ComplexConjugate

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact primitive-character orthogonality for the standard additive
character at square modulus `d^2`. -/
theorem sum_stdAddChar_mul_eq_ite
    (d : ℕ) [NeZero d]
    (t : ZMod (d * d)) :
    (∑ k : ZMod (d * d), ZMod.stdAddChar (t * k)) =
      if t = 0 then (((d * d : ℕ) : ℂ)) else 0 := by
  split_ifs with ht
  · simp [ht]
  · exact
      AddChar.sum_eq_zero_of_ne_one
        (ZMod.isPrimitive_stdAddChar (d * d) ht)

/-- Orthogonality in difference form. -/
theorem sum_stdAddChar_sub_mul
    (d : ℕ) [NeZero d]
    (s t : ZMod (d * d)) :
    (∑ k : ZMod (d * d),
      ZMod.stdAddChar ((s - t) * k)) =
      if s = t then (((d * d : ℕ) : ℂ)) else 0 := by
  rw [sum_stdAddChar_mul_eq_ite]
  congr 1
  simp [sub_eq_zero]

/-- Complex-valued Parseval identity before taking real norm squares.

This is the finite orthogonality calculation underlying the real statement. -/
theorem sum_conj_dft_mul_dft
    (d : ℕ) [NeZero d]
    (C : ZMod (d * d) → ℂ) :
    (∑ k : ZMod (d * d),
      star (ZMod.dft C k) * ZMod.dft C k) =
      (((d * d : ℕ) : ℂ)) *
        (∑ s : ZMod (d * d), star (C s) * C s) := by
  classical
  simp_rw [ZMod.dft_apply, smul_eq_mul]
  simp_rw [map_sum, star_mul, AddChar.map_neg_eq_conj]
  simp_rw [Finset.sum_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  simp_rw [Finset.sum_comm (s := Finset.univ)]
  calc
    (∑ s : ZMod (d * d),
      ∑ t : ZMod (d * d),
        ∑ k : ZMod (d * d),
          (star (C s) *
              ZMod.stdAddChar (s * k)) *
            (ZMod.stdAddChar (-(t * k)) * C t)) =
      ∑ s : ZMod (d * d),
        ∑ t : ZMod (d * d),
          (star (C s) * C t) *
            (∑ k : ZMod (d * d),
              ZMod.stdAddChar ((s - t) * k)) := by
        apply Finset.sum_congr rfl
        intro s _hs
        apply Finset.sum_congr rfl
        intro t _ht
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro k _hk
        rw [← AddChar.map_add_eq_mul]
        congr 2
        ring
    _ =
      ∑ s : ZMod (d * d),
        ∑ t : ZMod (d * d),
          (star (C s) * C t) *
            (if s = t then (((d * d : ℕ) : ℂ)) else 0) := by
        simp_rw [sum_stdAddChar_sub_mul d]
    _ =
      ∑ s : ZMod (d * d),
        (star (C s) * C s) * (((d * d : ℕ) : ℂ)) := by
        apply Finset.sum_congr rfl
        intro s _hs
        rw [Finset.sum_eq_single s]
        · simp
        · intro t _ht hts
          simp [hts]
        · simp
    _ = (((d * d : ℕ) : ℂ)) *
        (∑ s : ZMod (d * d), star (C s) * C s) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro s _hs
      ring

/-- Exact unnormalized squared-norm Parseval identity for Mathlib's
`ZMod.dft` at square modulus. -/
theorem unnormalizedZModDFTParseval_sq
    (d : ℕ) [NeZero d]
    (C : ZMod (d * d) → ℂ) :
    (∑ k : ZMod (d * d), ‖ZMod.dft C k‖ ^ 2) =
      (((d * d : ℕ) : ℝ)) *
        (∑ s : ZMod (d * d), ‖C s‖ ^ 2) := by
  have hcomplex := sum_conj_dft_mul_dft d C
  have hreal := congrArg Complex.re hcomplex
  simpa [Complex.normSq_eq_conj_mul_self,
    Complex.normSq_eq_norm_sq] using hreal

/-- Constructed source-level inhabitant of the exact DFT Parseval
proposition. -/
theorem unnormalizedZModDFTParseval :
    UnnormalizedZModDFTParseval := by
  intro d hd C
  letI : NeZero d := hd
  exact unnormalizedZModDFTParseval_sq d C

/-- The repository `stdAddChar(k*s)` Parseval proposition now follows by the
exact sign-normalization bridge from PR #760. -/
theorem stdAddCharSquareModulusParseval :
    StdAddCharSquareModulusParseval :=
  stdAddCharSquareModulusParseval_iff_mathlibDft.mpr
    unnormalizedZModDFTParseval

/-- Constructed proof-relevant adapter from the trivial source proposition
`True` into the exact repository Parseval interface.

This records that the finite harmonic identity is no longer an analytic
premise once this module is accepted. -/
def finiteOrthogonalityToStdAddCharParsevalAdapter :
    ToStdAddCharSquareModulusParsevalAdapter True where
  toParseval := fun _ => stdAddCharSquareModulusParseval

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_stdAddChar_mul_eq_ite
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_conj_dft_mul_dft
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.unnormalizedZModDFTParseval_sq
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.stdAddCharSquareModulusParseval
