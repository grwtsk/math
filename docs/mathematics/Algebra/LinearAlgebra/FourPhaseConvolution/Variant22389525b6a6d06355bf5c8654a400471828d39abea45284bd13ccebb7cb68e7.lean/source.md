# Complete source: GRWTSK.Algebra.LinearAlgebra.FourPhaseConvolution.Variant22389525b6a6d06355bf5c8654a400471828d39abea45284bd13ccebb7cb68e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76411e0158fae5cb706e866a96e9fcbce197a661` · SHA-256 `81fdd0cbabca5cb2f2fb062bec71569d8d9634f3de27fa027e7f24b29ad460c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ThreePhaseCore.Variant647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ThreePhaseCore.Variant647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/PositiveAtlas/FourPhaseConvolution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.ComparatorMargin

/-!
# Four-phase Positive Atlas convolution

This module packages the compositional spine of the Positive Atlas.

The first three phases are represented independently of any comparator:

1. an ambient positive geometry;
2. its canonical Phase-II provenance residual quotient;
3. a positive commuting-involution geometry on that residual together with a
   linear intervention family.

Phase IV is a strict extension: it adds a comparator and a quantitative margin
regime.  This typing prevents comparator conclusions from leaking backwards
into the three-phase core.

The resulting theorem chain is

  0 ≤ Λ
  ≤ Phase-II residual energy of the intervention differential
  ≤ Phase-I ambient autonomous energy of that differential,

and, only after Phase IV is supplied,

  c * Λ ≤ Γ

with c > 0.

Thus positive Phase-III sensitivity propagates forward to a positive Phase-IV
comparator gap only through the explicit comparator-margin hypothesis.
-/


namespace GRWTSK.Algebra.LinearAlgebra.ThreePhaseCore.Variant647b231dc97c4f1e1381955f94ee2e4a7cf16e1b931fea9a9b8d25aae370e00a

namespace FormalResearch.PositiveAtlas

universe u v w

variable {P : Type u} [AddCommGroup P] [Module ℝ P]
variable {U : Type v} [AddCommGroup U] [Module ℝ U]
variable {X : Type w} [AddCommGroup X] [Module ℝ X]

/-- The comparator-free compositional core of Phases I--III. -/
structure ThreePhaseCore (P : Type u) (U : Type v) (X : Type w)
    [AddCommGroup P] [Module ℝ P]
    [AddCommGroup U] [Module ℝ U]
    [AddCommGroup X] [Module ℝ X] where
  /-- Phase I: ambient positive/dispersion geometry interface. -/
  phaseI : PositiveForm (P × U)
  /-- Phase II: canonical solver-independent provenance residual. -/
  phaseII : PhaseIIResidualQuotient phaseI
  /-- Phase III: involutive positive geometry on the Phase-II residual. -/
  phaseIII : PositiveCommutingInvolutions phaseII.geometry
  /-- Phase III intervention/ablation family. -/
  intervention : LinearIntervention X U

namespace ThreePhaseCore

variable (C : ThreePhaseCore P U X)

/-- Phase-I ambient quadratic energy. -/
def phaseIEnergy (z : P × U) : ℝ :=
  C.phaseI.form z z

/-- Phase-II canonical residual quadratic energy. -/
def phaseIIEnergy (u : U) : ℝ :=
  C.phaseII.geometry.form u u

/-- Phase-III intervention sensitivity Lambda. -/
noncomputable def phaseIIISensitivity (x : X) : ℝ :=
  C.phaseIII.interventionSensitivity C.intervention x

@[simp]
theorem phaseIEnergy_eq (z : P × U) :
    C.phaseIEnergy z = C.phaseI.form z z :=
  rfl

@[simp]
theorem phaseIIEnergy_eq (u : U) :
    C.phaseIIEnergy u = C.phaseII.geometry.form u u :=
  rfl

@[simp]
theorem phaseIIISensitivity_eq (x : X) :
    C.phaseIIISensitivity x =
      C.phaseIII.interventionSensitivity C.intervention x :=
  rfl

/-- Phase-I energy is nonnegative. -/
theorem phaseI_nonnegative (z : P × U) :
    0 ≤ C.phaseIEnergy z :=
  C.phaseI.nonnegative z

/-- Phase-II residual energy is nonnegative. -/
theorem phaseII_nonnegative (u : U) :
    0 ≤ C.phaseIIEnergy u :=
  C.phaseII.geometry.nonnegative u

/-- Phase-III sensitivity is nonnegative. -/
theorem phaseIII_nonnegative (x : X) :
    0 ≤ C.phaseIIISensitivity x :=
  C.phaseIII.interventionSensitivity_nonnegative C.intervention x

/-- Canonical Phase-II residual energy cannot exceed the Phase-I energy of the
pure autonomous input. -/
theorem phaseII_le_phaseI_autonomous (u : U) :
    C.phaseIIEnergy u ≤
      C.phaseIEnergy (autonomousInclusion u) := by
  change
    C.phaseII.representative.schurForm.form u u ≤
      C.phaseI.form (autonomousInclusion u) (autonomousInclusion u)
  have hexplained :
      0 ≤
        C.phaseI.form
          (provenanceInclusion (C.phaseII.representative.solve u))
          (provenanceInclusion (C.phaseII.representative.solve u)) :=
    C.phaseI.nonnegative _
  have hdecomp :=
    C.phaseII.representative.autonomous_energy_decomposition u
  linarith

/-- Phase-III sensitivity cannot exceed the total Phase-II residual energy of
the raw intervention differential. -/
theorem phaseIII_le_phaseII_differential (x : X) :
    C.phaseIIISensitivity x ≤
      C.phaseIIEnergy (C.intervention.differential x) := by
  simpa [phaseIIISensitivity, phaseIIEnergy,
    PositiveCommutingInvolutions.interventionSensitivity] using
      C.phaseIII.interventionDefectEnergy_le_differentialEnergy
        C.intervention x

/-- The three-phase positive chain. -/
theorem three_phase_energy_chain (x : X) :
    0 ≤ C.phaseIIISensitivity x ∧
      C.phaseIIISensitivity x ≤
        C.phaseIIEnergy (C.intervention.differential x) ∧
      C.phaseIIEnergy (C.intervention.differential x) ≤
        C.phaseIEnergy
          (autonomousInclusion (C.intervention.differential x)) := by
  exact ⟨C.phaseIII_nonnegative x,
    C.phaseIII_le_phaseII_differential x,
    C.phaseII_le_phaseI_autonomous (C.intervention.differential x)⟩

/-- Positive Phase-III sensitivity still does not determine comparator
separation before Phase IV is supplied: the zero comparator has zero gap. -/
theorem phaseIII_positive_zeroComparator_gap
    (x : X) (hsensitivity : 0 < C.phaseIIISensitivity x) :
    0 < C.phaseIIISensitivity x ∧
      (LinearComparator.zero : LinearComparator U).comparatorGap
        C.intervention x = 0 :=
  ⟨hsensitivity, LinearComparator.zero_comparatorGap C.intervention x⟩

/-- Consequently, the three-phase core cannot force positive separation for
every possible comparator. -/
theorem phaseIII_positive_not_all_comparators_separate
    (x : X) (_hsensitivity : 0 < C.phaseIIISensitivity x) :
    ¬ ∀ Q : LinearComparator U, 0 < Q.comparatorGap C.intervention x := by
  intro hall
  have hzero := hall (LinearComparator.zero : LinearComparator U)
  rw [LinearComparator.zero_comparatorGap] at hzero
  exact (lt_irrefl 0) hzero

/-- Positive Phase-III sensitivity is exactly visibility of the projected
intervention differential in the canonical Phase-II geometry. -/
theorem phaseIII_positive_iff_visible (x : X) :
    0 < C.phaseIIISensitivity x ↔
      C.phaseII.geometry.Visible
        (C.phaseIII.projectedDifferential C.intervention x) :=
  C.phaseIII.interventionSensitivity_pos_iff_visible C.intervention x

end ThreePhaseCore

/-- Full four-phase composition: the first three phases plus an independent
Phase-IV comparator and quantitative margin regime. -/
structure FourPhaseComposition (P : Type u) (U : Type v) (X : Type w)
    [AddCommGroup P] [Module ℝ P]
    [AddCommGroup U] [Module ℝ U]
    [AddCommGroup X] [Module ℝ X] where
  /-- Comparator-free phases I--III. -/
  core : ThreePhaseCore P U X
  /-- Phase-IV comparator. -/
  comparator : LinearComparator U
  /-- Phase-IV quantitative comparator regime. -/
  marginRegime :
    core.phaseIII.ComparatorMarginRegime comparator core.intervention

namespace FourPhaseComposition

variable (F : FourPhaseComposition P U X)

/-- Phase-IV comparator gap Gamma. -/
def phaseIVGap (x : X) : ℝ :=
  F.comparator.comparatorGap F.core.intervention x

@[simp]
theorem phaseIVGap_eq (x : X) :
    F.phaseIVGap x =
      F.comparator.comparatorGap F.core.intervention x :=
  rfl

/-- Phase-IV gap is nonnegative. -/
theorem phaseIV_nonnegative (x : X) :
    0 ≤ F.phaseIVGap x :=
  F.comparator.comparatorGap_nonnegative F.core.intervention x

/-- Quantitative Phase-IV bridge from sensitivity to comparator gap. -/
theorem phaseIV_lower_bound (x : X) :
    F.marginRegime.margin * F.core.phaseIIISensitivity x ≤
      F.phaseIVGap x := by
  exact F.marginRegime.lower_bound x

/-- The complete four-phase nonnegative/bounded chain. -/
theorem four_phase_energy_chain (x : X) :
    0 ≤ F.core.phaseIIISensitivity x ∧
      F.core.phaseIIISensitivity x ≤
        F.core.phaseIIEnergy (F.core.intervention.differential x) ∧
      F.core.phaseIIEnergy (F.core.intervention.differential x) ≤
        F.core.phaseIEnergy
          (autonomousInclusion (F.core.intervention.differential x)) ∧
      F.marginRegime.margin * F.core.phaseIIISensitivity x ≤
        F.phaseIVGap x ∧
      0 ≤ F.phaseIVGap x := by
  rcases F.core.three_phase_energy_chain x with ⟨h0, h12, h23⟩
  exact ⟨h0, h12, h23, F.phaseIV_lower_bound x,
    F.phaseIV_nonnegative x⟩

/-- Positive Phase-III sensitivity propagates forward through the quantitative
Phase-IV margin. -/
theorem positive_phaseIII_implies_positive_phaseIV
    (x : X) (hsensitivity : 0 < F.core.phaseIIISensitivity x) :
    0 < F.marginRegime.margin * F.core.phaseIIISensitivity x ∧
      F.marginRegime.margin * F.core.phaseIIISensitivity x ≤
        F.phaseIVGap x ∧
      0 < F.phaseIVGap x := by
  have hlower :=
    F.marginRegime.positive_lower_margin x hsensitivity
  have hgap :=
    F.marginRegime.positive_sensitivity_implies_positive_gap x hsensitivity
  exact ⟨hlower.1, hlower.2, hgap⟩

/-- The quantitative Phase-IV regime subsumes the qualitative comparator
completeness condition. -/
theorem phaseIV_to_qualitative_complete :
    F.core.phaseIII.ComparatorCompleteFor
      F.comparator F.core.intervention :=
  F.marginRegime.toComparatorCompleteFor

/-- Zero Phase-IV comparator gap forces zero Phase-III sensitivity. -/
theorem phaseIII_zero_of_phaseIV_zero
    (x : X) (hgap : F.phaseIVGap x = 0) :
    F.core.phaseIIISensitivity x = 0 := by
  exact F.marginRegime.sensitivity_eq_zero_of_gap_eq_zero x hgap

/-- A visible projected differential propagates through all later forward
interfaces to strict comparator separation. -/
theorem visible_projectedDifferential_implies_positive_gap
    (x : X)
    (hvisible :
      F.core.phaseII.geometry.Visible
        (F.core.phaseIII.projectedDifferential F.core.intervention x)) :
    0 < F.phaseIVGap x := by
  have hsensitivity :
      0 < F.core.phaseIIISensitivity x :=
    (F.core.phaseIII_positive_iff_visible x).2 hvisible
  exact F.marginRegime.positive_sensitivity_implies_positive_gap
    x hsensitivity

end FourPhaseComposition

end FormalResearch.PositiveAtlas
```
