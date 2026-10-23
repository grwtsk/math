/-
Copyright (c) 2026 R.A. Jacob Martone.
SPDX-License-Identifier: MIT

Mathematical source: Christian Bernert, Tim Browning, Jared Duker Lichtman,
and Joni Teräväinen, "Bounds on the exceptional set in the abc conjecture",
arXiv:2410.12234v2 (2026), Propositions 2.1, 3.1, and 4.1.

The source paper credits Bhavik Mehta for Lean assistance on an earlier
version. The finite box type used here is the one adapted, with attribution,
from the earlier Bhavik Mehta--Arend Mellendijk development.

This file states the two remaining analytic box estimates with their actual
parameters and uniformity. It does not assert that either estimate has been
proved. The paper's strict dyadic convention and the repository's
endpoint-inclusive finite cover are both visible in the types.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdmissibleAnatomicReduction
import Mathlib.Analysis.SpecialFunctions.Pow.Real

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open Finset
open scoped BigOperators

namespace ExceptionalSetAnalyticBounds

open AnatomicBoxes AdmissibleAnatomicReduction

/-- A positive power of two. This is the paper's meaning of a dyadic scale. -/
def IsDyadicScale (A : ℕ) : Prop :=
  ∃ e : ℕ, A = 2 ^ e

/-- The exact parameter conditions over which Propositions 3.1 and 4.1 are
stated. Paper indices `1, ..., d` are represented by `Fin d`; hence the paper
weight `i` is `i.val + 1` in Lean. -/
structure PaperAdmissible {d : ℕ} (lam ε₀ : ℝ) (X : ℕ)
    (p : Parameters d) : Prop where
  residual_primitive : ResidualPrimitive p
  residual_lower : ∀ r, 1 ≤ p.residual r
  residual_upper : ∀ r, (p.residual r : ℝ) ≤ (X : ℝ) ^ ε₀
  A_dyadic : ∀ i, IsDyadicScale (p.A i)
  B_dyadic : ∀ i, IsDyadicScale (p.B i)
  C_dyadic : ∀ i, IsDyadicScale (p.C i)
  A_range : ∀ i, 1 ≤ p.A i ∧ p.A i ≤ X
  B_range : ∀ i, 1 ≤ p.B i ∧ p.B i ≤ X
  C_range : ∀ i, 1 ≤ p.C i ∧ p.C i ≤ X
  scale_lower :
    (X : ℝ) ^ lam / (2 : ℝ) ^ (d + 1) ≤ (scaleProduct p : ℝ)
  scale_upper :
    (scaleProduct p : ℝ) ≤ (X : ℝ) ^ (lam + 3 * ε₀ / 4)
  monomialA_upper : monomial p.A ≤ X
  monomialB_upper : monomial p.B ≤ X
  monomialC_lower :
    (X : ℝ) ^ (1 - ε₀ / 2) ≤ (monomial p.C : ℝ)
  monomialC_upper : monomial p.C ≤ X

/-- The paper's product `∏ Aᵢ`, with natural scales cast to the reals. -/
def totalScaleProduct {d : ℕ} (A : Fin d → ℕ) : ℝ :=
  ∏ i, (A i : ℝ)

/-- The divisibility-sector product `∏_{j ∣ i} Aᵢ` in Proposition 3.1.
The divisibility test uses the paper index `i.val + 1`. -/
def divisibleScaleProduct {d : ℕ} (j : ℕ) (A : Fin d → ℕ) : ℝ :=
  ∏ i ∈ Finset.univ.filter (fun i : Fin d ↦ j ∣ i.val + 1), (A i : ℝ)

/-- The product over a selected set of paper coordinates. -/
def selectedScaleProduct {d : ℕ} (I : Finset (Fin d))
    (A : Fin d → ℕ) : ℝ :=
  ∏ i ∈ I, (A i : ℝ)

/-- The product `∏_{i ∈ I} Aᵢ^(i-1)` from Proposition 4.1. Since Lean uses
zero-based `Fin d`, the exponent is exactly `i.val`. -/
def selectedWeightedScaleProduct {d : ℕ} (I : Finset (Fin d))
    (A : Fin d → ℕ) : ℝ :=
  ∏ i ∈ I, (A i : ℝ) ^ i.val

@[simp]
theorem selectedScaleProduct_empty {d : ℕ} (A : Fin d → ℕ) :
    selectedScaleProduct ∅ A = 1 := by
  simp [selectedScaleProduct]

@[simp]
theorem selectedWeightedScaleProduct_empty {d : ℕ} (A : Fin d → ℕ) :
    selectedWeightedScaleProduct ∅ A = 1 := by
  simp [selectedWeightedScaleProduct]

@[simp]
theorem selectedScaleProduct_univ {d : ℕ} (A : Fin d → ℕ) :
    selectedScaleProduct Finset.univ A = totalScaleProduct A := by
  simp [selectedScaleProduct, totalScaleProduct]

@[simp]
theorem divisibleScaleProduct_one {d : ℕ} (A : Fin d → ℕ) :
    divisibleScaleProduct 1 A = totalScaleProduct A := by
  simp [divisibleScaleProduct, totalScaleProduct]

/-- The strict-lower-endpoint part of a repository box. Together with the
closed upper endpoint already present in `boxFinset`, this is exactly the
paper convention `Aᵢ < aᵢ ≤ 2Aᵢ`, and similarly for `b` and `c`. -/
def StrictCoordinateMembership {d : ℕ} (p : Parameters d)
    (q : Point d) : Prop :=
  (∀ i, p.A i < q.1 i) ∧
  (∀ i, p.B i < q.2.1 i) ∧
  (∀ i, p.C i < q.2.2 i)

/-- The source paper's strict dyadic box as a filter of the repository's
endpoint-inclusive finite box. -/
noncomputable def paperBoxFinset {d : ℕ} (p : Parameters d) :
    Finset (Point d) := by
  classical
  exact (boxFinset p).filter (StrictCoordinateMembership p)

@[simp]
theorem mem_paperBoxFinset {d : ℕ} {p : Parameters d} {q : Point d} :
    q ∈ paperBoxFinset p ↔
      q ∈ boxFinset p ∧ StrictCoordinateMembership p q := by
  classical
  simp [paperBoxFinset]

/-- The exact strict-dyadic count denoted `B_d` in the source paper. -/
noncomputable def paperBoxCard {d : ℕ} (p : Parameters d) : ℕ :=
  (paperBoxFinset p).card

theorem paperBoxCard_le_boxCard {d : ℕ} (p : Parameters d) :
    paperBoxCard p ≤ boxCard p := by
  classical
  exact Finset.card_filter_le _ _

/-- The right-hand side of Proposition 3.1 before its implicit constant. -/
noncomputable def fourierMajorant {d : ℕ} (lam ε₀ : ℝ) (X : ℕ)
    (p : Parameters d) (j k ℓ : ℕ) : ℝ :=
  (X : ℝ) ^ (2 * lam / 3 + 3 * ε₀) /
    (divisibleScaleProduct j p.A *
      divisibleScaleProduct k p.B *
      divisibleScaleProduct ℓ p.C) ^ ((1 : ℝ) / 6)

/-- A uniform sufficiently-large-`X` formulation of Proposition 3.1 for an
arbitrary finite box count. The constant and cutoff may depend on
`d`, `lam`, and `ε₀`, but not on `X`, the admissible parameters, or `j,k,ℓ`. -/
def FourierEstimateFor {d : ℕ} (count : Parameters d → ℕ)
    (lam ε₀ : ℝ) : Prop :=
  ∃ C : ℝ, 0 < C ∧ ∃ X₀ : ℕ,
    ∀ (X : ℕ) (p : Parameters d) (j k ℓ : ℕ),
      X₀ ≤ X →
      PaperAdmissible lam ε₀ X p →
      2 ≤ j → j ≤ d →
      2 ≤ k → k ≤ d →
      2 ≤ ℓ → ℓ ≤ d →
      (count p : ℝ) ≤ C * fourierMajorant lam ε₀ X p j k ℓ

/-- Proposition 3.1 in the paper's strict dyadic convention. -/
def PaperFourierEstimate (d : ℕ) (lam ε₀ : ℝ) : Prop :=
  FourierEstimateFor (d := d) paperBoxCard lam ε₀

/-- The endpoint-inclusive form required directly by the exact finite cover
in `AdmissibleAnatomicReduction`. Its proof is expected to be the same moment
argument with harmless endpoint changes; it is not asserted here. -/
def ClosedFourierEstimate (d : ℕ) (lam ε₀ : ℝ) : Prop :=
  FourierEstimateFor (d := d) boxCard lam ε₀

/-- The right-hand side of Proposition 4.1 before its implicit constant. -/
noncomputable def geometryMajorant {d : ℕ} (lam ε₀ : ℝ) (X : ℕ)
    (p : Parameters d) (I I' I'' : Finset (Fin d)) : ℝ :=
  (X : ℝ) ^ (lam + 4 * ε₀) /
      (selectedScaleProduct I p.A *
        selectedScaleProduct I' p.B *
        selectedScaleProduct I'' p.C) +
    (X : ℝ) ^ (lam - 1 + 6 * ε₀) *
      selectedWeightedScaleProduct I p.A *
      selectedWeightedScaleProduct I' p.B *
      selectedWeightedScaleProduct I'' p.C

/-- A uniform sufficiently-large-`X` formulation of Proposition 4.1 for an
arbitrary finite box count. -/
def GeometryEstimateFor {d : ℕ} (count : Parameters d → ℕ)
    (lam ε₀ : ℝ) : Prop :=
  ∃ C : ℝ, 0 < C ∧ ∃ X₀ : ℕ,
    ∀ (X : ℕ) (p : Parameters d) (I I' I'' : Finset (Fin d)),
      X₀ ≤ X →
      PaperAdmissible lam ε₀ X p →
      (count p : ℝ) ≤ C * geometryMajorant lam ε₀ X p I I' I''

/-- Proposition 4.1 in the paper's strict dyadic convention. -/
def PaperGeometryEstimate (d : ℕ) (lam ε₀ : ℝ) : Prop :=
  GeometryEstimateFor (d := d) paperBoxCard lam ε₀

/-- The endpoint-inclusive form required directly by the repository's exact
finite cover. It remains an explicit theorem target. -/
def ClosedGeometryEstimate (d : ℕ) (lam ε₀ : ℝ) : Prop :=
  GeometryEstimateFor (d := d) boxCard lam ε₀

/-- A larger count estimate implies the corresponding estimate for any
pointwise smaller count. -/
theorem fourierEstimateFor_mono {d : ℕ}
    {small large : Parameters d → ℕ} (h : ∀ p, small p ≤ large p)
    {lam ε₀ : ℝ} (hlarge : FourierEstimateFor large lam ε₀) :
    FourierEstimateFor small lam ε₀ := by
  obtain ⟨C, hC, X₀, hbound⟩ := hlarge
  refine ⟨C, hC, X₀, ?_⟩
  intro X p j k ℓ hX hp hj0 hjd hk0 hkd hℓ0 hℓd
  have hcast : (small p : ℝ) ≤ (large p : ℝ) := by
    exact_mod_cast h p
  exact hcast.trans
    (hbound X p j k ℓ hX hp hj0 hjd hk0 hkd hℓ0 hℓd)

/-- The analogous monotonicity adapter for Proposition 4.1. -/
theorem geometryEstimateFor_mono {d : ℕ}
    {small large : Parameters d → ℕ} (h : ∀ p, small p ≤ large p)
    {lam ε₀ : ℝ} (hlarge : GeometryEstimateFor large lam ε₀) :
    GeometryEstimateFor small lam ε₀ := by
  obtain ⟨C, hC, X₀, hbound⟩ := hlarge
  refine ⟨C, hC, X₀, ?_⟩
  intro X p I I' I'' hX hp
  have hcast : (small p : ℝ) ≤ (large p : ℝ) := by
    exact_mod_cast h p
  exact hcast.trans (hbound X p I I' I'' hX hp)

/-- The endpoint-inclusive Fourier estimate is stronger than the literal
strict-box proposition. -/
theorem paperFourierEstimate_of_closed {d : ℕ} {lam ε₀ : ℝ}
    (h : ClosedFourierEstimate d lam ε₀) :
    PaperFourierEstimate d lam ε₀ :=
  fourierEstimateFor_mono paperBoxCard_le_boxCard h

/-- The endpoint-inclusive geometry estimate is stronger than the literal
strict-box proposition. -/
theorem paperGeometryEstimate_of_closed {d : ℕ} {lam ε₀ : ℝ}
    (h : ClosedGeometryEstimate d lam ε₀) :
    PaperGeometryEstimate d lam ε₀ :=
  geometryEstimateFor_mono paperBoxCard_le_boxCard h

/-- All endpoint-inclusive Fourier bounds needed by the exceptional-set
argument, still as a proposition to be proved. -/
def HasClosedFourierEstimates (lam : ℝ) : Prop :=
  ∀ ε₀ : ℝ, 0 < ε₀ → ∀ d : ℕ, ClosedFourierEstimate d lam ε₀

/-- All endpoint-inclusive geometry-of-numbers bounds needed by the
exceptional-set argument, still as a proposition to be proved. -/
def HasClosedGeometryEstimates (lam : ℝ) : Prop :=
  ∀ ε₀ : ℝ, 0 < ε₀ → ∀ d : ℕ, ClosedGeometryEstimate d lam ε₀

end ExceptionalSetAnalyticBounds

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
