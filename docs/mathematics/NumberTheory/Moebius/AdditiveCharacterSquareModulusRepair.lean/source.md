# Complete source: GRWTSK.NumberTheory.Moebius.AdditiveCharacterSquareModulusRepair

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d43c5324923c0019b728634a661ba6b84dc187e` · SHA-256 `98b10ce451d613b3fc2b4284866162dd1ecf4e9cc52cb13d394e359ffdae59c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #598. Direct stacked parent: draft PR #594 at
`82a0a5fff2690e80647b3b15d5e52ec13eb33e93`.
-/
import GRWTSK.NumberTheory.Moebius.DirichletNonunitResidueObstruction
import Mathlib.Analysis.Fourier.ZMod

/-!
# Additive Fourier repair for square-modulus residue fibres

The parent witness proves that ordinary multiplicative Dirichlet characters
cannot represent every exact residue class appearing in the square-modulus
fibres, because active nonunit classes occur.

The additive group of `ZMod N` has no such restriction.  Mathlib's standard
additive character and discrete Fourier transform give exact finite
orthogonality on the entire ring.

This module uses that orthogonality to represent the square-divisibility
selector and then rewrites each complexified exact congruence fibre as a finite
average of additive-character-twisted two-point Möbius sums.

No additive twist is estimated.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators
open AddChar

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Additive Fourier selector for the zero residue in `ZMod N`. -/
def additiveZeroResidueSelector
    (N : ℕ) [NeZero N] (x : ZMod N) : ℂ :=
  (N : ℂ)⁻¹ *
    ∑ k : ZMod N, ZMod.stdAddChar (k * x)

/-- Exact additive orthogonality on the full ring.  No unit hypothesis on
`x` is required. -/
theorem additiveZeroResidueSelector_eq_indicator
    (N : ℕ) [NeZero N] (x : ZMod N) :
    additiveZeroResidueSelector N x =
      if x = 0 then 1 else 0 := by
  unfold additiveZeroResidueSelector
  have hsum :=
    AddChar.sum_mulShift
      (ψ := ZMod.stdAddChar (N := N))
      x (ZMod.isPrimitive_stdAddChar N)
  have hN : (N : ℂ) ≠ 0 := by
    exact_mod_cast (NeZero.ne N)
  rw [hsum]
  by_cases hx : x = 0
  · simp [hx, ZMod.card, hN]
  · simp [hx]

/-- Additive-character selector for the square-divisibility condition
`d^2 | m`. -/
def additiveSquareDivisorSelector
    (d m : ℕ) [NeZero d] : ℂ :=
  letI : NeZero (d * d) :=
    ⟨mul_ne_zero (NeZero.ne d) (NeZero.ne d)⟩
  additiveZeroResidueSelector (d * d)
    (m : ZMod (d * d))

/-- The additive selector is exactly the repository's square-divisibility
predicate, including nonunit residue classes. -/
theorem additiveSquareDivisorSelector_eq_indicator
    (d m : ℕ) [NeZero d] :
    additiveSquareDivisorSelector d m =
      if squareDivisorCongruence d m then 1 else 0 := by
  let : NeZero (d * d) :=
    ⟨mul_ne_zero (NeZero.ne d) (NeZero.ne d)⟩
  unfold additiveSquareDivisorSelector
  rw [additiveZeroResidueSelector_eq_indicator]
  by_cases hc : squareDivisorCongruence d m
  · have hdvd : d * d ∣ m :=
      (squareDivisorCongruence_iff d m).mp hc
    have hz : (m : ZMod (d * d)) = 0 :=
      (ZMod.natCast_eq_zero_iff m (d * d)).2 hdvd
    simp [hc, hz]
  · have hndvd : ¬ d * d ∣ m := by
      exact mt (squareDivisorCongruence_iff d m).mpr hc
    have hnz : (m : ZMod (d * d)) ≠ 0 := by
      intro hz
      exact hndvd ((ZMod.natCast_eq_zero_iff m (d * d)).1 hz)
    simp [hc, hnz]

/-- Complexification of the exact real congruence fibre from PR #555. -/
def complexMertensEndpointCrossCongruenceFibre
    (b d : ℕ) : ℂ :=
  ∑ n ∈ Finset.Ico 1 b,
    ∑ a ∈ mertensEndpointCrossCongruenceBaseSet b n d,
      (mertensSquarefreeMidpointEndpointProduct (b - n) a : ℂ)

/-- The complexified fibre is exactly the complex cast of the real repository
fibre. -/
theorem complexMertensEndpointCrossCongruenceFibre_eq_cast
    (b d : ℕ) :
    complexMertensEndpointCrossCongruenceFibre b d =
      (mertensEndpointCrossCongruenceFibre b d : ℂ) := by
  unfold complexMertensEndpointCrossCongruenceFibre
    mertensEndpointCrossCongruenceFibre
  push_cast
  rfl

/-- The same fibre written over the unfiltered base support, with the exact
additive selector carrying the square-divisibility condition. -/
def additiveSelectorEndpointCrossFibre
    (b d : ℕ) [NeZero d] : ℂ :=
  ∑ n ∈ Finset.Ico 1 b,
    ∑ a ∈ mertensEndpointCrossCollisionBaseSet b n,
      additiveSquareDivisorSelector d
          (mertensCrossCollisionMidpoint b n a) *
        (mertensSquarefreeMidpointEndpointProduct (b - n) a : ℂ)

/-- Exact replacement of the filtered congruence support by the additive
Fourier selector. -/
theorem complexMertensEndpointCrossCongruenceFibre_eq_additiveSelector
    (b d : ℕ) [NeZero d] :
    complexMertensEndpointCrossCongruenceFibre b d =
      additiveSelectorEndpointCrossFibre b d := by
  classical
  unfold complexMertensEndpointCrossCongruenceFibre
    additiveSelectorEndpointCrossFibre
    mertensEndpointCrossCongruenceBaseSet
  apply Finset.sum_congr rfl
  intro n _hn
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro a _ha
  by_cases hc :
      squareDivisorCongruence d
        (mertensCrossCollisionMidpoint b n a)
  · rw [if_pos hc,
      additiveSquareDivisorSelector_eq_indicator,
      if_pos hc, one_mul]
  · rw [if_neg hc,
      additiveSquareDivisorSelector_eq_indicator,
      if_neg hc, zero_mul]

/-- One additive-character-twisted signed two-point Möbius correlation. -/
def additiveTwistedEndpointCrossCorrelation
    (b d : ℕ) [NeZero d]
    (k : ZMod (d * d)) : ℂ :=
  ∑ n ∈ Finset.Ico 1 b,
    ∑ a ∈ mertensEndpointCrossCollisionBaseSet b n,
      ZMod.stdAddChar
          (k *
            (mertensCrossCollisionMidpoint b n a :
              ZMod (d * d))) *
        (mertensSquarefreeMidpointEndpointProduct (b - n) a : ℂ)

/-- Finite additive-Fourier average of the twisted correlations. -/
def additiveFourierEndpointCrossCongruenceFibre
    (b d : ℕ) [NeZero d] : ℂ :=
  letI : NeZero (d * d) :=
    ⟨mul_ne_zero (NeZero.ne d) (NeZero.ne d)⟩
  ((d * d : ℕ) : ℂ)⁻¹ *
    ∑ k : ZMod (d * d),
      additiveTwistedEndpointCrossCorrelation b d k

/-- Finite Fubini identity: the selector form is exactly the average over all
additive twists modulo the square modulus. -/
theorem additiveSelectorEndpointCrossFibre_eq_fourier
    (b d : ℕ) [NeZero d] :
    additiveSelectorEndpointCrossFibre b d =
      additiveFourierEndpointCrossCongruenceFibre b d := by
  classical
  let : NeZero (d * d) :=
    ⟨mul_ne_zero (NeZero.ne d) (NeZero.ne d)⟩
  unfold additiveSelectorEndpointCrossFibre
    additiveSquareDivisorSelector
    additiveZeroResidueSelector
    additiveFourierEndpointCrossCongruenceFibre
    additiveTwistedEndpointCrossCorrelation
  simp_rw [Finset.mul_sum, Finset.sum_mul]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n _hn
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro k _hk
  apply Finset.sum_congr rfl
  intro a _ha
  ring

/-- Main exact repair: every real square-modulus congruence fibre is, after
complexification, the finite average of additive-character-twisted two-point
Möbius correlations. -/
theorem complex_cast_mertensEndpointCrossCongruenceFibre_eq_additiveFourier
    (b d : ℕ) [NeZero d] :
    (mertensEndpointCrossCongruenceFibre b d : ℂ) =
      additiveFourierEndpointCrossCongruenceFibre b d := by
  rw [← complexMertensEndpointCrossCongruenceFibre_eq_cast]
  exact
    (complexMertensEndpointCrossCongruenceFibre_eq_additiveSelector b d).trans
      (additiveSelectorEndpointCrossFibre_eq_fourier b d)

/-- Proof-relevant repair object replacing the open placeholder from PR #594.

Its only field is the substantive all-endpoint/all-positive-modulus Fourier
identity.  Coverage of nonunits and preservation of the square modulus are
properties of that exact formula, not separate Boolean-style flags. -/
structure AdditiveCharacterResidueRepair : Type where
  exactFibreExpansion :
    ∀ b d : ℕ, (hd : 0 < d) →
      (mertensEndpointCrossCongruenceFibre b d : ℂ) =
        @additiveFourierEndpointCrossCongruenceFibre
          b d ⟨ne_of_gt hd⟩

/-- Constructed source-level additive-character repair. -/
def additiveCharacterResidueRepair :
    AdditiveCharacterResidueRepair where
  exactFibreExpansion := by
    intro b d hd
    let : NeZero d := ⟨ne_of_gt hd⟩
    exact
      complex_cast_mertensEndpointCrossCongruenceFibre_eq_additiveFourier
        b d

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.additiveZeroResidueSelector_eq_indicator
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.additiveSquareDivisorSelector_eq_indicator
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.complex_cast_mertensEndpointCrossCongruenceFibre_eq_additiveFourier
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.additiveCharacterResidueRepair
```
