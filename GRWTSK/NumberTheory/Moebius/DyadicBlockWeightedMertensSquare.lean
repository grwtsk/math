/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owners: #357 / #354 / #350 / #347 / #343 / #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.DyadicWeightedMertensSquare

/-!
# Individual dyadic block criterion by exact geometric summation

The existing actual nonnegative block

`B_j = sum_(2^j <= n < 2^(j+1)) M(n)^2 / (n(n+1))`

already follows from the completed dyadic-prefix criterion.  This module proves
the converse.  For a positive exponent `δ`, the block scale grows by the exact
ratio `r = 2^δ > 1`.  A block witness `D` therefore pays every completed prefix
with the finite constant `D / (r - 1)`.

The proof is inductive and source finite: it uses the exact prefix recurrence,
the exact dyadic endpoint recurrence, and the algebraic payment

`D / (r - 1) + D = (D / (r - 1)) * r`.

No infinite geometric sum is totalized, the denominator is not hidden, and
`δ = 0` is excluded.  The resulting individual-block proposition is equivalent
to the completed-prefix and cumulative criteria and conditionally feeds the
existing RH-E02 endpoint.  No block estimate is proved here.

All proof scripts await exact-head elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Multiplicative growth of the dyadic power scale at exponent `δ`. -/
def dyadicBlockGeometricRatio (δ : ℝ) : ℝ :=
  (2 : ℝ) ^ δ

/-- The exact finite-prefix constant paid by a block witness `D`. -/
def dyadicBlockGeometricConstant (δ D : ℝ) : ℝ :=
  D / (dyadicBlockGeometricRatio δ - 1)

/-- The dyadic power ratio is strictly larger than one at every positive
exponent.  This is the denominator debt in the geometric summation. -/
theorem dyadicBlockGeometricRatio_gt_one {δ : ℝ} (hδ : 0 < δ) :
    1 < dyadicBlockGeometricRatio δ := by
  unfold dyadicBlockGeometricRatio
  exact (Real.one_lt_rpow_iff_of_pos (by norm_num : (0 : ℝ) < 2)).2
    (Or.inl ⟨by norm_num, hδ⟩)

/-- The paid geometric constant is nonnegative for a nonnegative block
witness. -/
theorem dyadicBlockGeometricConstant_nonneg
    {δ D : ℝ} (hδ : 0 < δ) (hD : 0 ≤ D) :
    0 ≤ dyadicBlockGeometricConstant δ D := by
  unfold dyadicBlockGeometricConstant
  exact div_nonneg hD
    (sub_nonneg.mpr (dyadicBlockGeometricRatio_gt_one hδ).le)

/-- Exact one-step payment.  The denominator `2^δ - 1` is retained. -/
theorem dyadicBlockGeometricConstant_add
    {δ D : ℝ} (hδ : 0 < δ) :
    dyadicBlockGeometricConstant δ D + D =
      dyadicBlockGeometricConstant δ D *
        dyadicBlockGeometricRatio δ := by
  have hden : dyadicBlockGeometricRatio δ - 1 ≠ 0 :=
    ne_of_gt (sub_pos.mpr (dyadicBlockGeometricRatio_gt_one hδ))
  unfold dyadicBlockGeometricConstant
  field_simp [hden]
  ring

/-- A pointwise block estimate pays every completed dyadic prefix with the
explicit geometric constant. -/
theorem weightedMertensDyadicPrefix_le_of_block_bound
    {δ D : ℝ} (hδ : 0 < δ) (hD : 0 ≤ D)
    (hblock : ∀ j : ℕ,
      weightedMertensDyadicBlock j ≤
        D * (((2 ^ j : ℕ) : ℝ) ^ δ)) :
    ∀ J : ℕ,
      weightedMertensDyadicPrefix J ≤
        dyadicBlockGeometricConstant δ D *
          (((2 ^ J : ℕ) : ℝ) ^ δ) := by
  intro J
  induction J with
  | zero =>
      have hC := dyadicBlockGeometricConstant_nonneg hδ hD
      simpa [weightedMertensDyadicPrefix] using hC
  | succ J ih =>
      rw [show Nat.succ J = J + 1 by rfl,
        weightedMertensDyadicPrefix_succ,
        dyadicEndpoint_succ_rpow]
      calc
        weightedMertensDyadicPrefix J +
              weightedMertensDyadicBlock J ≤
            dyadicBlockGeometricConstant δ D *
                (((2 ^ J : ℕ) : ℝ) ^ δ) +
              D * (((2 ^ J : ℕ) : ℝ) ^ δ) :=
          add_le_add ih (hblock J)
        _ = (dyadicBlockGeometricConstant δ D + D) *
              (((2 ^ J : ℕ) : ℝ) ^ δ) := by ring
        _ = (dyadicBlockGeometricConstant δ D *
              dyadicBlockGeometricRatio δ) *
              (((2 ^ J : ℕ) : ℝ) ^ δ) := by
          rw [dyadicBlockGeometricConstant_add hδ]
        _ = dyadicBlockGeometricConstant δ D *
              (dyadicBlockGeometricRatio δ *
                (((2 ^ J : ℕ) : ℝ) ^ δ)) := by ring

/-- The individual block family supplies the completed-prefix family. -/
theorem subpolynomialDyadicPrefix_of_block
    (hblock : SubpolynomialDyadicBlockWeightedMertensSquare) :
    SubpolynomialDyadicPrefixWeightedMertensSquare := by
  intro δ hδ
  obtain ⟨D, hD, hbound⟩ := hblock δ hδ
  refine ⟨dyadicBlockGeometricConstant δ D,
    dyadicBlockGeometricConstant_nonneg hδ hD, ?_⟩
  exact weightedMertensDyadicPrefix_le_of_block_bound
    hδ hD hbound

/-- Individual block and completed-prefix subpolynomial control are exactly
equivalent for the actual source. -/
theorem subpolynomialDyadicBlock_iff_prefix :
    SubpolynomialDyadicBlockWeightedMertensSquare ↔
      SubpolynomialDyadicPrefixWeightedMertensSquare :=
  ⟨subpolynomialDyadicPrefix_of_block,
    subpolynomialDyadicBlock_of_prefix⟩

/-- The individual block formulation is also exactly the existing cumulative
criterion. -/
theorem subpolynomialDyadicBlock_iff_cumulative :
    SubpolynomialDyadicBlockWeightedMertensSquare ↔
      SubpolynomialCumulativeWeightedMertensSquare :=
  subpolynomialDyadicBlock_iff_prefix.trans
    subpolynomialDyadicPrefix_iff_cumulative

/-- The individual finite-scale block target is equivalent to the all-positive
weighted Mertens-square family isolated upstream. -/
theorem subpolynomialDyadicBlock_iff_allPositiveWeightedMertensSquare :
    SubpolynomialDyadicBlockWeightedMertensSquare ↔
      AllPositiveWeightedMertensSquare :=
  subpolynomialDyadicBlock_iff_cumulative.trans
    allPositiveWeightedMertensSquare_iff_subpolynomialCumulative.symm

/-- Conditional terminal return.  The universal individual-block estimate
remains the unproved arithmetic supplier. -/
theorem riemannHypothesis_of_subpolynomialDyadicBlockWeightedMertensSquare
    (hblock : SubpolynomialDyadicBlockWeightedMertensSquare) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicPrefixWeightedMertensSquare
    (subpolynomialDyadicPrefix_of_block hblock)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicPrefix_le_of_block_bound
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicBlock_iff_prefix
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicBlock_iff_allPositiveWeightedMertensSquare
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicBlockWeightedMertensSquare
