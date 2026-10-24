# Complete source: GRWTSK.Algebra.LinearAlgebra.9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2ComparatorMargin.Variant9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe2676913f87d39cc8f342b62932073c8b56f181` · SHA-256 `9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.ComparatorSeparation

/-!
# Quantitative Phase-IV comparator margins

This module packages the Phase-IV comparator gap Γ and Phase-III sensitivity Λ
into one margin object and formalizes a quantitative provenance-complete
comparator regime.

For a comparator Q, intervention I, and positive commuting-involution geometry C,
define the pointwise margin pair

  Γ(x) = comparator gap,
  Λ(x) = intervention sensitivity.

A quantitative comparator regime carries a constant c > 0 such that

  c * Λ(x) ≤ Γ(x)

for every admitted intervention input x, together with sector-completeness of
the comparator.

This strictly strengthens the qualitative Phase-IV completeness condition:
positive sensitivity forces positive comparator gap, zero comparator gap forces
zero sensitivity, and the regime automatically detects every visible projected
differential.

No causal claim is inferred from the existence of such a margin regime.
-/

namespace FormalResearch.PositiveAtlas

universe u v

variable {V : Type u} [AddCommGroup V] [Module ℝ V]
variable {X : Type v} [AddCommGroup X] [Module ℝ X]

/-- The pointwise pair of Phase-IV comparator gap Γ and intervention
sensitivity Λ. -/
structure ComparatorMarginValue where
  gap : ℝ
  sensitivity : ℝ

namespace PositiveCommutingInvolutions

variable {G : PositiveForm V} (C : PositiveCommutingInvolutions G)

/-- Package Γ and Λ at one intervention input. -/
noncomputable def comparatorMarginValue
    (Q : LinearComparator V) (I : LinearIntervention X V) (x : X) :
    ComparatorMarginValue where
  gap := Q.comparatorGap I x
  sensitivity := C.interventionSensitivity I x

@[simp]
theorem comparatorMarginValue_gap
    (Q : LinearComparator V) (I : LinearIntervention X V) (x : X) :
    (C.comparatorMarginValue Q I x).gap = Q.comparatorGap I x :=
  rfl

@[simp]
theorem comparatorMarginValue_sensitivity
    (Q : LinearComparator V) (I : LinearIntervention X V) (x : X) :
    (C.comparatorMarginValue Q I x).sensitivity =
      C.interventionSensitivity I x :=
  rfl

/-- Both coordinates of the comparator-margin value are nonnegative. -/
theorem comparatorMarginValue_nonnegative
    (Q : LinearComparator V) (I : LinearIntervention X V) (x : X) :
    0 ≤ (C.comparatorMarginValue Q I x).gap ∧
      0 ≤ (C.comparatorMarginValue Q I x).sensitivity :=
  ⟨Q.comparatorGap_nonnegative I x,
    C.interventionSensitivity_nonnegative I x⟩

/-- A provenance-complete quantitative comparator regime.

The comparator factors through the distinguished (+,-) sector and its gap
dominates sensitivity by a uniform positive constant. -/
structure ComparatorMarginRegime
    (Q : LinearComparator V) (I : LinearIntervention X V) where
  margin : ℝ
  margin_pos : 0 < margin
  sector_complete : C.ComparatorSectorComplete Q
  lower_bound :
    ∀ x : X, margin * C.interventionSensitivity I x ≤ Q.comparatorGap I x

namespace ComparatorMarginRegime

variable {C : PositiveCommutingInvolutions G}
variable {Q : LinearComparator V}
variable {I : LinearIntervention X V}

/-- The quantitative lower-margin inequality written in terms of the packaged
pointwise margin object. -/
theorem marginValue_lower_bound
    (R : C.ComparatorMarginRegime Q I) (x : X) :
    R.margin * (C.comparatorMarginValue Q I x).sensitivity ≤
      (C.comparatorMarginValue Q I x).gap :=
  R.lower_bound x

/-- Positive sensitivity forces a positive comparator gap, quantitatively. -/
theorem positive_sensitivity_implies_positive_gap
    (R : C.ComparatorMarginRegime Q I) (x : X)
    (hsensitivity : 0 < C.interventionSensitivity I x) :
    0 < Q.comparatorGap I x := by
  have hmargin :
      0 < R.margin * C.interventionSensitivity I x :=
    mul_pos R.margin_pos hsensitivity
  exact lt_of_lt_of_le hmargin (R.lower_bound x)

/-- The quantitative regime yields the explicit positive lower margin. -/
theorem positive_lower_margin
    (R : C.ComparatorMarginRegime Q I) (x : X)
    (hsensitivity : 0 < C.interventionSensitivity I x) :
    0 < R.margin * C.interventionSensitivity I x ∧
      R.margin * C.interventionSensitivity I x ≤ Q.comparatorGap I x :=
  ⟨mul_pos R.margin_pos hsensitivity, R.lower_bound x⟩

/-- Zero comparator gap forces zero intervention sensitivity in any positive
margin regime. -/
theorem sensitivity_eq_zero_of_gap_eq_zero
    (R : C.ComparatorMarginRegime Q I) (x : X)
    (hgap : Q.comparatorGap I x = 0) :
    C.interventionSensitivity I x = 0 := by
  have hle :
      R.margin * C.interventionSensitivity I x ≤ 0 := by
    simpa [hgap] using R.lower_bound x
  have hnonneg :
      0 ≤ R.margin * C.interventionSensitivity I x :=
    mul_nonneg (le_of_lt R.margin_pos)
      (C.interventionSensitivity_nonnegative I x)
  have hprod :
      R.margin * C.interventionSensitivity I x = 0 :=
    le_antisymm hle hnonneg
  exact (mul_eq_zero.mp hprod).resolve_left (ne_of_gt R.margin_pos)

/-- Contrapositively, nonzero sensitivity excludes zero comparator gap. -/
theorem gap_ne_zero_of_sensitivity_ne_zero
    (R : C.ComparatorMarginRegime Q I) (x : X)
    (hsensitivity : C.interventionSensitivity I x ≠ 0) :
    Q.comparatorGap I x ≠ 0 := by
  intro hgap
  exact hsensitivity (R.sensitivity_eq_zero_of_gap_eq_zero x hgap)

/-- The quantitative regime detects every visible projected differential. -/
theorem detects_visible
    (R : C.ComparatorMarginRegime Q I) (x : X)
    (hvisible : G.Visible (C.projectedDifferential I x)) :
    C.ComparatorDetectsAt Q I x := by
  have hsensitivity :
      0 < C.interventionSensitivity I x :=
    (C.interventionSensitivity_pos_iff_visible I x).2 hvisible
  have hgap : 0 < Q.comparatorGap I x :=
    R.positive_sensitivity_implies_positive_gap x hsensitivity
  have hgap_projected :
      0 < (Q.readout (C.projectedDifferential I x)) ^ 2 := by
    rw [← C.comparatorGap_eq_projected_sq Q I R.sector_complete x]
    exact hgap
  simpa [ComparatorDetectsAt, sq_pos_iff] using hgap_projected

/-- Every quantitative margin regime induces the qualitative complete comparator
regime from the preceding Phase-IV layer. -/
theorem toComparatorCompleteFor
    (R : C.ComparatorMarginRegime Q I) :
    C.ComparatorCompleteFor Q I := by
  refine ⟨R.sector_complete, ?_⟩
  intro x hvisible
  exact R.detects_visible x hvisible

/-- The earlier qualitative Phase-IV separation theorem follows directly from
the quantitative regime. -/
theorem positive_gap_via_complete
    (R : C.ComparatorMarginRegime Q I) (x : X)
    (hsensitivity : 0 < C.interventionSensitivity I x) :
    0 < Q.comparatorGap I x :=
  C.positive_sensitivity_implies_positive_gap_of_complete
    Q I x R.toComparatorCompleteFor hsensitivity

/-- The zero comparator cannot support a positive quantitative margin if the
intervention family has any positive-sensitivity point. -/
theorem no_zeroComparator_regime_of_positive_sensitivity
    (I : LinearIntervention X V)
    (hexists : ∃ x : X, 0 < C.interventionSensitivity I x) :
    ¬ Nonempty (C.ComparatorMarginRegime
        (LinearComparator.zero : LinearComparator V) I) := by
  rintro ⟨R⟩
  rcases hexists with ⟨x, hx⟩
  have hgap :
      0 < (LinearComparator.zero : LinearComparator V).comparatorGap I x :=
    R.positive_sensitivity_implies_positive_gap x hx
  rw [LinearComparator.zero_comparatorGap] at hgap
  exact (lt_irrefl 0) hgap

end ComparatorMarginRegime

end PositiveCommutingInvolutions

end FormalResearch.PositiveAtlas
```
