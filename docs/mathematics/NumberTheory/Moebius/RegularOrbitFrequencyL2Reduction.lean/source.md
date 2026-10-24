# Complete source: GRWTSK.NumberTheory.Moebius.RegularOrbitFrequencyL2Reduction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f51caa56d98e3cbd37bbb051cb3f63855021b82b` · SHA-256 `2a8823d04a2a3013c41a97972b209102e62c949f31dfe607fdbe7a2fcf3ba5d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #749. Direct stacked parent: draft PR #747 at exact head
`2ca76f871b22a3022b82205ea99339ef4043fdc5`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitShiftParityResidueConvolution
import Mathlib.Algebra.Order.Chebyshev

/-!
# Canonical regular-frequency L1 to L2 reduction

The regular shift-parity residue surface is an L1 sum over canonical regular
frequencies.  This module performs only the finite Cauchy--Schwarz reduction.

For one square modulus `d`, the canonical representative set has at most
`d^2` elements.  Applying `sq_sum_le_card_mul_sum_sq` separately to each of
the four refined Fourier families gives

`sum_(k in R_d) ||F(k)|| <= d * sqrt(sum_(k in R_d) ||F(k)||^2)`.

The existing `1/d^2` modulus normalization therefore leaves a `1/d`
weighted sum of four L2 norms.

No estimate of those L2 norms, no Parseval identity, and no large-sieve theorem
is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The canonical regular representative set is a subset of the full
frequency group, hence has cardinality at most `d^2`. -/
theorem card_twoKernelRegularOrbitRepresentativeSet_le_square
    (d : ℕ) [NeZero d] :
    (twoKernelRegularOrbitRepresentativeSet d).card ≤ d * d := by
  have hsub :
      twoKernelRegularOrbitRepresentativeSet d ⊆
        (Finset.univ : Finset (ZMod (d * d))) := by
    intro k hk
    simp
  exact
    (Finset.card_le_card hsub).trans_eq
      (by simp)

/-- Generic finite L1-to-L2 inequality with an explicit ambient parameter
whose square bounds the cardinality of the index set. -/
theorem sum_norm_le_parameter_mul_sqrt_sum_sq
    {α : Type*}
    (s : Finset α)
    (D : ℕ)
    (hcard : s.card ≤ D * D)
    (f : α → ℂ) :
    (∑ x ∈ s, ‖f x‖) ≤
      (D : ℝ) *
        Real.sqrt (∑ x ∈ s, ‖f x‖ ^ 2) := by
  have hsum_nonneg : 0 ≤ ∑ x ∈ s, ‖f x‖ := by
    positivity
  have henergy_nonneg : 0 ≤ ∑ x ∈ s, ‖f x‖ ^ 2 := by
    positivity
  have hsq :
      (∑ x ∈ s, ‖f x‖) ^ 2 ≤
        (s.card : ℝ) * (∑ x ∈ s, ‖f x‖ ^ 2) := by
    simpa using
      (sq_sum_le_card_mul_sum_sq
        (s := s)
        (f := fun x => ‖f x‖))
  have hcard_real : (s.card : ℝ) ≤ (D : ℝ) ^ 2 := by
    exact_mod_cast (by simpa only [pow_two] using hcard : s.card ≤ D ^ 2)
  have hsq' :
      (∑ x ∈ s, ‖f x‖) ^ 2 ≤
        (D : ℝ) ^ 2 * (∑ x ∈ s, ‖f x‖ ^ 2) := by
    exact hsq.trans
      (mul_le_mul_of_nonneg_right hcard_real henergy_nonneg)
  have hsqrt_nonneg :
      0 ≤ Real.sqrt (∑ x ∈ s, ‖f x‖ ^ 2) :=
    Real.sqrt_nonneg _
  have hsqrt_sq :
      Real.sqrt (∑ x ∈ s, ‖f x‖ ^ 2) ^ 2 =
        ∑ x ∈ s, ‖f x‖ ^ 2 := by
    exact Real.sq_sqrt henergy_nonneg
  have hD : 0 ≤ (D : ℝ) := by positivity
  apply (sq_le_sq₀ hsum_nonneg (mul_nonneg hD hsqrt_nonneg)).mp
  simpa only [mul_pow, hsqrt_sq] using hsq'

/-- The four canonical regular Fourier L2 norms at one square modulus. -/
def twoNonunitRegularShiftParityFrequencyL2Majorant
    (b d : ℕ) [NeZero d] : ℝ :=
  Real.sqrt
      (∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
        ‖parityEvenHalfShiftSignedResidueFourier b d 0 k‖ ^ 2) +
    Real.sqrt
      (∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
        ‖parityOddHalfShiftSignedResidueFourier b d 0 k‖ ^ 2) +
    Real.sqrt
      (∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
        ‖parityEvenHalfShiftSignedResidueFourier b d 1 k‖ ^ 2) +
    Real.sqrt
      (∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
        ‖parityOddHalfShiftSignedResidueFourier b d 1 k‖ ^ 2)

/-- The complete regular-frequency L1 mass is bounded by `d` times the four
L2 norms. -/
theorem sum_regularShiftParityResidueFourierMajorant_le_l2
    (b d : ℕ) [NeZero d] :
    (∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
      twoNonunitRegularShiftParityResidueFourierMajorant b d k) ≤
      (d : ℝ) *
        twoNonunitRegularShiftParityFrequencyL2Majorant b d := by
  let R := twoKernelRegularOrbitRepresentativeSet d
  have hcard : R.card ≤ d * d := by
    simpa [R] using
      card_twoKernelRegularOrbitRepresentativeSet_le_square d
  have h0e :=
    sum_norm_le_parameter_mul_sqrt_sum_sq
      R d hcard
      (fun k => parityEvenHalfShiftSignedResidueFourier b d 0 k)
  have h0o :=
    sum_norm_le_parameter_mul_sqrt_sum_sq
      R d hcard
      (fun k => parityOddHalfShiftSignedResidueFourier b d 0 k)
  have h1e :=
    sum_norm_le_parameter_mul_sqrt_sum_sq
      R d hcard
      (fun k => parityEvenHalfShiftSignedResidueFourier b d 1 k)
  have h1o :=
    sum_norm_le_parameter_mul_sqrt_sum_sq
      R d hcard
      (fun k => parityOddHalfShiftSignedResidueFourier b d 1 k)
  unfold twoNonunitRegularShiftParityResidueFourierMajorant
    twoNonunitRegularShiftParityFrequencyL2Majorant
  simp_rw [Finset.sum_add_distrib]
  dsimp [R] at h0e h0o h1e h1o
  nlinarith

/-- Endpoint majorant after the finite L1-to-L2 reduction.  One power of
`d` has been paid by Cauchy--Schwarz, leaving the exact reciprocal-`d`
weight. -/
def twoNonunitRegularShiftParityFrequencyL2EndpointMajorant
    (b : ℕ) : ℝ :=
  ∑ d ∈ effectiveEndpointSquareModulusSet b,
    if hd : 0 < d then
      let : NeZero d := ⟨ne_of_gt hd⟩
      if _hNonunit : TwoNonunitSquareModulusParameter d then
        ((d : ℝ))⁻¹ *
          twoNonunitRegularShiftParityFrequencyL2Majorant b d
      else 0
    else 0

/-- The current regular signed-residue L1 endpoint surface is bounded by the
canonical-frequency L2 endpoint surface. -/
theorem regularShiftParityResidueEndpointMajorant_le_frequencyL2
    (b : ℕ) :
    twoNonunitRegularShiftParityResidueEndpointMajorant b ≤
      twoNonunitRegularShiftParityFrequencyL2EndpointMajorant b := by
  unfold twoNonunitRegularShiftParityResidueEndpointMajorant
    twoNonunitRegularShiftParityFrequencyL2EndpointMajorant
  apply Finset.sum_le_sum
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  by_cases hNonunit : TwoNonunitSquareModulusParameter d
  · simp only [hNonunit, dif_pos]
    have hsum :=
      sum_regularShiftParityResidueFourierMajorant_le_l2 b d
    have hdreal : 0 < (d : ℝ) := by exact_mod_cast hdpos
    calc
      (((d * d : ℕ) : ℝ))⁻¹ *
          (∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
            twoNonunitRegularShiftParityResidueFourierMajorant b d k)
          ≤
        (((d * d : ℕ) : ℝ))⁻¹ *
          ((d : ℝ) *
            twoNonunitRegularShiftParityFrequencyL2Majorant b d) := by
              exact mul_le_mul_of_nonneg_left hsum (by positivity)
      _ = ((d : ℝ))⁻¹ *
          twoNonunitRegularShiftParityFrequencyL2Majorant b d := by
            push_cast
            field_simp
  · simp [hNonunit]

/-- Natural-scale supplier for the canonical regular-frequency L2 endpoint
surface.  No value is constructed here. -/
def DyadicNaturalScaleRegularShiftParityFrequencyL2Budget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j b : ℕ,
      b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)) →
      twoNonunitRegularShiftParityFrequencyL2EndpointMajorant b ≤
        C * (((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The finite frequency L2 supplier implies the exact regular signed-residue
budget required by PR #747. -/
theorem regularShiftParityResidueBudget_of_frequencyL2
    (hL2 : DyadicNaturalScaleRegularShiftParityFrequencyL2Budget) :
    DyadicNaturalScaleRegularShiftParityResidueBudget := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hL2 δ hδ
  refine ⟨C, hC, ?_⟩
  intro j b hb
  exact
    (regularShiftParityResidueEndpointMajorant_le_frequencyL2 b).trans
      (hscale j b hb)

/-- Proof-relevant finite harmonic-analysis adapter. -/
def regularFrequencyL2ToShiftParityResidueAdapter :
    ToRegularShiftParityResidueBudgetAdapter
      DyadicNaturalScaleRegularShiftParityFrequencyL2Budget where
  toRegularResidueBudget :=
    regularShiftParityResidueBudget_of_frequencyL2

/-- Downstream composition through the two pointwise Mertens premises and the
independent two-unit branch. -/
theorem naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regularFrequencyL2
    (hOrdinary : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hChiFour :
      PointwiseChiFourTwistedMertensSquareRootPlusEpsilonEnvelope)
    (hUnit : DyadicNaturalScaleTwoUnitHalfIndexBudget)
    (hL2 : DyadicNaturalScaleRegularShiftParityFrequencyL2Budget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regularResidue
    hOrdinary hChiFour hUnit
    (regularShiftParityResidueBudget_of_frequencyL2 hL2)

/-- Conservative data boundary for the next exact Parseval/residue-energy
step. -/
structure RegularShiftParityParsevalSourceData where
  theoremStatement : Prop
  exactStdAddCharNormalizationMatched : Prop
  fullFrequencyParsevalMatched : Prop
  canonicalFrequencyRestrictionJustified : Prop
  signedEvenHalfShiftBucketsMatched : Prop
  signedOddHalfShiftBucketsMatched : Prop
  bothEndpointParityClassesMatched : Prop
  exceptionalOrbitExcludedAndHandledSeparately : Prop
  reciprocalSquareModulusNormalizationMatched : Prop
  effectiveModulusSupportMatched : Prop
  naturalScaleNormalizationMatched : Prop

/-- Source proposition for a future Parseval or residue-energy theorem. -/
def RegularShiftParityParsevalSource
    (d : RegularShiftParityParsevalSourceData) : Prop :=
  d.theoremStatement ∧
    d.exactStdAddCharNormalizationMatched ∧
    d.fullFrequencyParsevalMatched ∧
    d.canonicalFrequencyRestrictionJustified ∧
    d.signedEvenHalfShiftBucketsMatched ∧
    d.signedOddHalfShiftBucketsMatched ∧
    d.bothEndpointParityClassesMatched ∧
    d.exceptionalOrbitExcludedAndHandledSeparately ∧
    d.reciprocalSquareModulusNormalizationMatched ∧
    d.effectiveModulusSupportMatched ∧
    d.naturalScaleNormalizationMatched

/-- Any future Parseval/residue-energy source must prove the exact L2 budget;
the name of an external theorem is not sufficient. -/
structure ToRegularShiftParityFrequencyL2BudgetAdapter
    (source : Prop) : Type where
  toFrequencyL2Budget :
    source → DyadicNaturalScaleRegularShiftParityFrequencyL2Budget

abbrev RegularShiftParityParsevalAdapter
    (d : RegularShiftParityParsevalSourceData) :=
  ToRegularShiftParityFrequencyL2BudgetAdapter
    (RegularShiftParityParsevalSource d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.card_twoKernelRegularOrbitRepresentativeSet_le_square
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_norm_le_parameter_mul_sqrt_sum_sq
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularShiftParityResidueEndpointMajorant_le_frequencyL2
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.regularShiftParityResidueBudget_of_frequencyL2
```
