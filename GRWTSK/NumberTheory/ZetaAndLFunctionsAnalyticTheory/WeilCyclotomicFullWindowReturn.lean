/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCyclotomicFrobeniusPrimeBridge
import Mathlib.Tactic

/-!
# Complete finite unramified Weil prime window and signed complex-phase return

## Source and first missing connection

The preceding \`WeilCyclotomicFrobeniusPrimeBridge\` identifies a supplied
unramified prime-power tag \`p^m\` with its true cyclotomic Frobenius
character \`chi(p)^m\`, including its literal prime weight and log shift.
However, a list of tags is not automatically the complete window
\`LowSchur.activePrimePowers T\`.

This file proves an *unconditional finite-support reduction* for the existing
primitive conjugate-pair source: only natural numbers which are prime powers
AND are units modulo the character conductor can contribute. Both exclusions
are justified from the actual objects, not from a chosen favorable inventory:

* \`ArithmeticFunction.vonMangoldt_eq_zero_iff\` says that the original
  von Mangoldt factor vanishes at non-prime-powers.
* \`DirichletCharacter.map_nonunit\` says that the original character
  vanishes at nonunits of \`ZMod q\`.

The source \`pairedPrimeWeight chi n\` is NOT redefined or made positive.
The original \`activePrimePowers T\` cutoff, strict upper endpoint, support
window, logarithmic shifts, and factor two remain exactly as in their
upstream definitions. The sine matrix's conductor/parity/gamma contribution
and the zeta pole are left in their original source positions.

For an arbitrary complex Dirichlet character, the finite paired real phase
\`Re(chi(n)) * Re(z_n)\` can be read as the real part of the JOINT complex
holonomy plus its *signed imaginary residual*:

    Re(c)*Re(z) = Re(c*z) + Im(c)*Im(z).

A separate Fourier-phase defect is already proved by
\`PrimePhaseSignedReturn.pairedPrimeResponse_phase_return\`. Combining the
two exact identities returns the ENTIRE original finite paired prime
response, not merely an arbitrary tagged subset:

    pairedPrimeResponse = complexUnramifiedReadout
                         + imaginaryUnramifiedResidual
                         + pairedPrimePhaseDefect.

The first two terms use precisely the support on which the original source
is nonzero. The third is the existing full signed frequency defect, not
an absolute-value bound.

## Consumer, comparison and hostile checks

The finite source reduction also applies directly to each entry of the
existing \`primitivePairSineMatrix\`, retaining gammaConstant,
gammaParity, and the original sineShiftEntry. It is a literal equality at
each fixed T and M, not a spectral inequality.

The signed complex-phase residual is NOT generally zero: treating a
nonreal character as a real sign character loses the cross-term. Likewise,
the new filtered support is a Finset of ORIGINAL integer indices. It
does not forget whether two primes share a Frobenius residue (for example,
2 and 7 modulo 5), which matters because their log shifts differ.

The prior tag-by-tag Frobenius theorem applies to prime-power members of this
exact support. A canonical Lean extraction of a prime/exponent tag for
EVERY member, and a proof of its unramified coprimality certificate, are
separate refinements; they are not assumed by this source-return theorem.

No positivity of the original Weil form, full form-domain transfer,
cofinal high-complement estimate, generic smooth link realization,
RH, or Dirichlet GRH is asserted.

Primary mathematical sources: Connes--Consani--Moscovici,
Zeta Spectral Triples, arXiv:2511.22755v1, (3.19)--(3.20);
Connes, The Riemann Hypothesis: Past, Present and a Letter
Through Time, arXiv:2602.04022v1, sections 4.1 and 7.
Prior local source: \`WeilCyclotomicFrobeniusPrimeBridge\`,
blob 1fd6124ffeaee222c74c4b840d2afc67768bab5f.
Actual source definitions: \`WeilOddSineProjection\`,
blob f4417e2b06319a9ab4f1e922df1216be555f72e5;
\`WeilPrimePhaseSignedReturn\`,
blob 5a6801dbcd2e1f5cebbe99df9c041408f6a2c247;
\`WeilLowSchurEnclosure\`,
blob d138d6430f5e0ee809d6c748f18423621f3aefec.
Standard finite arithmetic and complex algebra, novelty UNASSESSED.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.CyclotomicFullWindowReturn

open GRWTSK.NumberTheory.WeilQuadraticForm.CyclotomicFrobeniusPrimeBridge
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
open GRWTSK.NumberTheory.WeilQuadraticForm.PrimePhaseSignedReturn

variable {q : ℕ} [NeZero q]

/-- The true arithmetic support within the original finite window.
The filter retains the ORIGINAL integer index, not just its residue class. -/
noncomputable def activeUnramifiedPrimePowers (T : ℝ) : Finset ℕ := by
  classical
  exact (activePrimePowers T).filter
    (fun n => IsPrimePow n ∧ IsUnit (n : ZMod q))

theorem mem_activeUnramifiedPrimePowers_iff (T : ℝ) (n : ℕ) :
    n ∈ activeUnramifiedPrimePowers (q := q) T ↔
      n ∈ activePrimePowers T ∧
      IsPrimePow n ∧ IsUnit (n : ZMod q) := by
  classical
  simp [activeUnramifiedPrimePowers, and_assoc]

theorem activeUnramifiedPrimePowers_subset (T : ℝ) :
    activeUnramifiedPrimePowers (q := q) T ⊆ activePrimePowers T := by
  classical
  exact Finset.filter_subset _ _

/-- Original paired character coefficients vanish on ramified/nonunit
residues, without modifying the source weight. -/
theorem pairedPrimeWeight_eq_zero_of_nonunit
    (χ : DirichletCharacter ℂ q) (n : ℕ)
    (hn : ¬ IsUnit (n : ZMod q)) :
    pairedPrimeWeight χ n = 0 := by
  simp [pairedPrimeWeight, χ.map_nonunit hn]

/-- Original von Mangoldt coefficients vanish at every non-prime-power,
regardless of character or cutoff. -/
theorem pairedPrimeWeight_eq_zero_of_not_primepow
    (χ : DirichletCharacter ℂ q) (n : ℕ)
    (hn : ¬ IsPrimePow n) :
    pairedPrimeWeight χ n = 0 := by
  have hΛ : ArithmeticFunction.vonMangoldt n = 0 :=
    ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr hn
  simp [pairedPrimeWeight, primeWeight, hΛ]

/-- No nonzero primitive-pair prime weight is lost by the exact
source-dependent filter. The statement does not pretend that an arbitrary
tag list covers the whole source. -/
theorem pairedPrimeWeight_eq_zero_of_outside_support
    (χ : DirichletCharacter ℂ q) (n : ℕ)
    (hn : ¬ (IsPrimePow n ∧ IsUnit (n : ZMod q))) :
    pairedPrimeWeight χ n = 0 := by
  by_cases hp : IsPrimePow n
  · have hu : ¬ IsUnit (n : ZMod q) := by
      intro hunit
      exact hn ⟨hp, hunit⟩
    exact pairedPrimeWeight_eq_zero_of_nonunit χ n hu
  · exact pairedPrimeWeight_eq_zero_of_not_primepow χ n hp

/-- A general finite-support restriction lemma. The only extra input is
termwise vanishing OUTSIDE the mathematically specified support, not a
positivity or complete-tag hypothesis. -/
theorem sum_active_eq_sum_unramified
    (T : ℝ) (f : ℕ → ℝ)
    (hzero : ∀ n, ¬ (IsPrimePow n ∧ IsUnit (n : ZMod q)) → f n = 0) :
    (∑ n ∈ activePrimePowers T, f n) =
      ∑ n ∈ activeUnramifiedPrimePowers (q := q) T, f n := by
  classical
  unfold activeUnramifiedPrimePowers
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hs : IsPrimePow n ∧ IsUnit (n : ZMod q)
  · simp [hs]
  · simp [hs, hzero n hs]

/-- This is the actual full paired-prime response of the Dirichlet
explicit formula, with all noncontributing source indices eliminated
by the above source theorem. -/
theorem pairedPrimeResponse_unramified
    (χ : DirichletCharacter ℂ q)
    (T : ℝ) (correlation : ℕ → ℂ) :
    pairedPrimeResponse χ T correlation =
      2 * ∑ n ∈ activeUnramifiedPrimePowers (q := q) T,
        pairedPrimeWeight χ n * (correlation n).re := by
  rw [pairedPrimeResponse_native]
  exact congrArg (fun x : ℝ => 2 * x)
    (sum_active_eq_sum_unramified (q := q) T
      (fun n => pairedPrimeWeight χ n * (correlation n).re)
      (by
        intro n hn
        simp [pairedPrimeWeight_eq_zero_of_outside_support χ n hn]))

/-- Original sine source matrix, including the actual parity/conductor
archimedean entry, restricted to the exact nonzero arithmetic support.
No new cosine-sine matrix or spectral model is introduced. -/
theorem primitivePairSineMatrix_unramified
    (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    (T : ℝ) (M : ℕ) (i j : Fin M) :
    primitivePairSineMatrix χ hprimitive hnonprincipal T M i j =
      sineArchimedeanEntry T (gammaConstant q (gammaParity χ))
        (gammaParity χ) (i.val + 1) (j.val + 1) -
      ∑ n ∈ activeUnramifiedPrimePowers (q := q) T,
        pairedPrimeWeight χ n *
          sineShiftEntry T (i.val + 1) (j.val + 1)
            (Real.log (n : ℝ)) := by
  unfold primitivePairSineMatrix
  rw [sum_active_eq_sum_unramified (q := q) T
    (fun n => pairedPrimeWeight χ n *
      sineShiftEntry T (i.val + 1) (j.val + 1)
        (Real.log (n : ℝ)))
    (by
      intro n hn
      simp [pairedPrimeWeight_eq_zero_of_outside_support χ n hn])]

/-- Full original paired phase response restricted exactly to its
unramified prime-power support, without any assumed complete tag list. -/
theorem pairedPrimePhaseResponse_unramified
    (χ : DirichletCharacter ℂ q)
    (T ξ : ℝ) (c : ℕ → ℝ) :
    pairedPrimePhaseResponse χ T ξ c =
      2 * ∑ n ∈ activeUnramifiedPrimePowers (q := q) T,
        pairedPrimeWeight χ n * c n *
          (PPNC.primePhase n ξ).re := by
  unfold pairedPrimePhaseResponse
  exact congrArg (fun x : ℝ => 2 * x)
    (sum_active_eq_sum_unramified (q := q) T
      (fun n => pairedPrimeWeight χ n * c n *
        (PPNC.primePhase n ξ).re)
      (by
        intro n hn
        simp [pairedPrimeWeight_eq_zero_of_outside_support χ n hn]))

/-- The existing *signed* original Fourier-phase defect is supported on
the same genuine unramified window, not an unrelated chosen set of primes. -/
theorem pairedPrimePhaseDefect_unramified
    (χ : DirichletCharacter ℂ q)
    (T ξ : ℝ) (c : ℕ → ℝ) :
    pairedPrimePhaseDefect χ T ξ c =
      2 * ∑ n ∈ activeUnramifiedPrimePowers (q := q) T,
        pairedPrimeWeight χ n * c n *
          (1 - (PPNC.primePhase n ξ).re) := by
  unfold pairedPrimePhaseDefect
  exact congrArg (fun x : ℝ => 2 * x)
    (sum_active_eq_sum_unramified (q := q) T
      (fun n => pairedPrimeWeight χ n * c n *
        (1 - (PPNC.primePhase n ξ).re))
      (by
        intro n hn
        simp [pairedPrimeWeight_eq_zero_of_outside_support χ n hn]))

/-- The actual unramified complex holonomy Fourier readout.
This is a COMPLEX product before taking its real part. -/
def unramifiedComplexHolonomy
    (χ : DirichletCharacter ℂ q)
    (T ξ : ℝ) (c : ℕ → ℝ) : ℝ :=
  2 * ∑ n ∈ activeUnramifiedPrimePowers (q := q) T,
    primeWeight n * c n *
      ((χ (n : ZMod q) * PPNC.primePhase n ξ).re)

/-- Full signed cross-term of complex character and Fourier phases.
It need not be nonnegative or vanish for nonreal characters. -/
def unramifiedImaginaryResidual
    (χ : DirichletCharacter ℂ q)
    (T ξ : ℝ) (c : ℕ → ℝ) : ℝ :=
  2 * ∑ n ∈ activeUnramifiedPrimePowers (q := q) T,
    primeWeight n * c n *
      ((χ (n : ZMod q)).im * (PPNC.primePhase n ξ).im)

/-- A single original prime-power term has the exact complex-product
return with the missing imaginary charge retained explicitly. -/
theorem signedPrimeTerm_complex_return
    (χ : DirichletCharacter ℂ q) (n : ℕ)
    (ξ : ℝ) (c : ℕ → ℝ) :
    pairedPrimeWeight χ n * c n *
      (PPNC.primePhase n ξ).re =
      primeWeight n * c n *
        ((χ (n : ZMod q) * PPNC.primePhase n ξ).re +
          (χ (n : ZMod q)).im * (PPNC.primePhase n ξ).im) := by
  unfold pairedPrimeWeight
  simp only [Complex.mul_re]
  ring

/-- Source-level exact comparison of the COMPLETE finite character prime
window. No open inventory-completeness premise occurs: the index filter
is a theorem consequence of the ORIGINAL source. -/
theorem pairedPrimePhaseResponse_exact_complex_return
    (χ : DirichletCharacter ℂ q)
    (T ξ : ℝ) (c : ℕ → ℝ) :
    pairedPrimePhaseResponse χ T ξ c =
      unramifiedComplexHolonomy χ T ξ c +
      unramifiedImaginaryResidual χ T ξ c := by
  rw [pairedPrimePhaseResponse_unramified χ T ξ c]
  unfold unramifiedComplexHolonomy unramifiedImaginaryResidual
  have hs :
      (∑ n ∈ activeUnramifiedPrimePowers (q := q) T,
        pairedPrimeWeight χ n * c n *
          (PPNC.primePhase n ξ).re) =
      ∑ n ∈ activeUnramifiedPrimePowers (q := q) T,
        primeWeight n * c n *
          ((χ (n : ZMod q) * PPNC.primePhase n ξ).re +
            (χ (n : ZMod q)).im * (PPNC.primePhase n ξ).im) := by
    apply Finset.sum_congr rfl
    intro n hn
    exact signedPrimeTerm_complex_return χ n ξ c
  rw [hs]
  simp_rw [mul_add]
  rw [Finset.sum_add_distrib]
  ring

/-- The FULL original paired source including its original signed
frequency defect. This is an exact identity, not a positivity theorem. -/
theorem pairedPrimeResponse_full_complex_return
    (χ : DirichletCharacter ℂ q)
    (T ξ : ℝ) (c : ℕ → ℝ) :
    pairedPrimeResponse χ T (fun n => (c n : ℂ)) =
      unramifiedComplexHolonomy χ T ξ c +
      unramifiedImaginaryResidual χ T ξ c +
      pairedPrimePhaseDefect χ T ξ c := by
  rw [pairedPrimeResponse_phase_return χ T ξ c]
  rw [pairedPrimePhaseResponse_exact_complex_return χ T ξ c]

/-- Zero frequency returns the original signed paired source directly:
both the imaginary product-charge and Fourier defect are zero. -/
theorem pairedPrimeResponse_zero_frequency_return
    (χ : DirichletCharacter ℂ q)
    (T : ℝ) (c : ℕ → ℝ) :
    pairedPrimeResponse χ T (fun n => (c n : ℂ)) =
      unramifiedComplexHolonomy χ T 0 c := by
  rw [pairedPrimeResponse_full_complex_return χ T 0 c]
  have him : unramifiedImaginaryResidual χ T 0 c = 0 := by
    simp [unramifiedImaginaryResidual, PPNC.primePhase, Complex.mul_re]
  have hdef : pairedPrimePhaseDefect χ T 0 c = 0 := by
    simp [pairedPrimePhaseDefect, PPNC.primePhase]
  simp [him, hdef]

end GRWTSK.NumberTheory.WeilQuadraticForm.CyclotomicFullWindowReturn
