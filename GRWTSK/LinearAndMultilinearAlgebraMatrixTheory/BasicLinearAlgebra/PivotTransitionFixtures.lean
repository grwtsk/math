-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.FirstFrame.Variant79a59d0bb27e9c6533ef993981acb9754fbf0cc1b96ace4544caecfe6fec3799","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"79a59d0bb27e9c6533ef993981acb9754fbf0cc1b96ace4544caecfe6fec3799","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.FirstFrame.Variant79a59d0bb27e9c6533ef993981acb9754fbf0cc1b96ace4544caecfe6fec3799","mathematical_subject":"Topology.GeneralTopology","original_sha256":"79a59d0bb27e9c6533ef993981acb9754fbf0cc1b96ace4544caecfe6fec3799","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/atlas-ghh-descent-20261007/FormalResearch/PositiveAtlas/Grassmannian/PivotTransitionFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.PivotBounds
import FormalResearch.PositiveAtlas.Grassmannian.PivotCech
import FormalResearch.PositiveAtlas.Grassmannian.PivotFixtures
import Mathlib.Topology.Order.IntermediateValue

/-!
# Actual two-pivot line and boundary-frame consumers

The real projective-line coordinate overlap is the punctured real line, with
its two connected half-lines. Its transition is an actual inverse-pivot
normalization and a homeomorphism of this overlap. The circle realization
comparison is not assumed by this fixture.

Human direction, theorem selection, and evaluation: grwtsk contributors.
AI-assisted formal implementation: OpenAI Codex, ATLAS-GHH-DESCENT-20261007.
-/


namespace GRWTSK.Topology.GeneralTopology.FirstFrame.Variant79a59d0bb27e9c6533ef993981acb9754fbf0cc1b96ace4544caecfe6fec3799

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

open scoped Matrix

namespace ProjectiveLine

/-- The first genuine normalized frame chart of `Gr(1,2)`. -/
def firstFrame (t : ℝ) : Matrix (Fin 1) (Fin 2) ℝ := !![1, t]

/-- The second genuine normalized frame chart of `Gr(1,2)`. -/
def secondFrame (u : ℝ) : Matrix (Fin 1) (Fin 2) ℝ := !![u, 1]

theorem firstFrame_pivots (t : ℝ) :
    columnMinor (firstFrame t) ![0] = 1 ∧ columnMinor (firstFrame t) ![1] = t := by
  simp [columnMinor, columnSubmatrix, firstFrame]

/-- Actual pivot normalization gives the reciprocal coordinate on the overlap. -/
theorem normalize_first_to_second (t : ℝ) (ht : t ≠ 0) :
    pivotNormalize (firstFrame t) ![1] = secondFrame t⁻¹ := by
  ext i j
  fin_cases i
  fin_cases j <;>
    simp [pivotNormalize, columnSubmatrix, Matrix.inv_subsingleton,
      Ring.inverse_eq_inv, firstFrame, secondFrame, Matrix.mul_apply, ht]

/-- The two-pivot overlap retains its actual nonzero coordinate domain. -/
abbrev Overlap := {t : ℝ // t ≠ 0}

/-- Reciprocal chart transition as a map of actual overlap points. -/
def overlapInverse (t : Overlap) : Overlap := ⟨t.val⁻¹, inv_ne_zero t.property⟩

/-- The reciprocal transition is a homeomorphism with its actual variance. -/
def overlapHomeomorph : Overlap ≃ₜ Overlap where
  toFun := overlapInverse
  invFun := overlapInverse
  left_inv t := by apply Subtype.ext; exact inv_inv t.val
  right_inv t := by apply Subtype.ext; exact inv_inv t.val
  continuous_toFun :=
    (continuous_subtype_val.inv₀ (fun t => t.property)).subtype_mk _
  continuous_invFun :=
    (continuous_subtype_val.inv₀ (fun t => t.property)).subtype_mk _

/-- The actual overlap is a disjoint union of two nonempty connected open half-lines. -/
theorem overlap_two_connected_pieces :
    ({t : ℝ | t ≠ 0} = Set.Iio 0 ∪ Set.Ioi 0) ∧
      Disjoint (Set.Iio (0 : ℝ)) (Set.Ioi 0) ∧
      IsConnected (Set.Iio (0 : ℝ)) ∧ IsConnected (Set.Ioi (0 : ℝ)) ∧
      IsOpen (Set.Iio (0 : ℝ)) ∧ IsOpen (Set.Ioi (0 : ℝ)) := by
  refine ⟨?_, Set.disjoint_left.mpr ?_, isConnected_Iio, isConnected_Ioi,
    isOpen_Iio, isOpen_Ioi⟩
  · ext t
    simp only [Set.mem_ofPred_eq, Set.mem_union, Set.mem_Iio, Set.mem_Ioi]
    exact ne_iff_lt_or_gt
  · intro t ht hn
    change t < 0 at ht
    change 0 < t at hn
    exact lt_asymm ht hn

/-- In particular, the overlap is not connected; one index edge would lose information. -/
theorem overlap_not_preconnected : ¬ IsPreconnected {t : ℝ | t ≠ 0} := by
  intro h
  have hp := h.lt_of_ne continuous_id.continuousOn (fun _ hx => hx)
    (show ∃ t ∈ {t : ℝ | t ≠ 0}, (0 : ℝ) < t from ⟨1, by norm_num, by norm_num⟩)
    (show (-1 : ℝ) ∈ {t : ℝ | t ≠ 0} from by norm_num)
  norm_num at hp

/-- An explicit orthonormal representative of every point in the first line chart. -/
def unitFrame (t : ℝ) : Matrix (Fin 1) (Fin 2) ℝ :=
  (Real.sqrt (1 + t ^ 2))⁻¹ • firstFrame t

theorem unitFrame_orthonormal (t : ℝ) : unitFrame t * (unitFrame t).transpose = 1 := by
  have hp : 0 < 1 + t ^ 2 := by positivity
  have hs : Real.sqrt (1 + t ^ 2) ≠ 0 := (Real.sqrt_pos.mpr hp).ne'
  have hsq := Real.sq_sqrt hp.le
  ext i j
  fin_cases i
  fin_cases j
  simp [unitFrame, firstFrame, Matrix.mul_apply, Fin.sum_univ_two]
  field_simp
  nlinarith

/-- First stereographic coordinate formula for the candidate projective-line circle map. -/
def firstCircle (t : ℝ) : ℝ × ℝ :=
  ((1 - t ^ 2) / (1 + t ^ 2), 2 * t / (1 + t ^ 2))

/-- Second stereographic coordinate formula, with the actual reciprocal transition. -/
def secondCircle (u : ℝ) : ℝ × ℝ :=
  ((u ^ 2 - 1) / (u ^ 2 + 1), 2 * u / (u ^ 2 + 1))

/-- Every first-chart formula lands on the actual unit circle equation. -/
theorem firstCircle_unit (t : ℝ) : (firstCircle t).1 ^ 2 + (firstCircle t).2 ^ 2 = 1 := by
  have h : (1 + t ^ 2 : ℝ) ≠ 0 := by positivity
  dsimp [firstCircle]
  field_simp [h]
  ring

/-- Every second-chart formula lands on the actual unit circle equation. -/
theorem secondCircle_unit (u : ℝ) : (secondCircle u).1 ^ 2 + (secondCircle u).2 ^ 2 = 1 := by
  have h : (u ^ 2 + 1 : ℝ) ≠ 0 := by positivity
  dsimp [secondCircle]
  field_simp [h]
  ring

/-- The circle formulas agree on all actual overlap points. This is not a homeomorphism claim. -/
theorem circle_formula_overlap (t : ℝ) (ht : t ≠ 0) :
    firstCircle t = secondCircle t⁻¹ := by
  have h : (1 + t ^ 2 : ℝ) ≠ 0 := by positivity
  have hi : ((t⁻¹) ^ 2 + 1 : ℝ) ≠ 0 := by positivity
  ext <;> dsimp [firstCircle, secondCircle] <;> field_simp [ht, h, hi]

end ProjectiveLine

/-- With column coefficient vectors, the same realization uses inverse transpose. -/
theorem pivotCoefficientTransport_column_variance {k n : ℕ}
    (A : Matrix (Fin k) (Fin n) ℝ) (c d : Fin k → Fin n)
    (hc : columnMinor A c ≠ 0) (hd : columnMinor A d ≠ 0) (u : Fin k → ℝ) :
    pivotCoefficientTransport A c d u = ((pivotTransition A c d)⁻¹).transpose *ᵥ u := by
  rw [← pivotTransition_reverse A c d hc hd]
  exact (Matrix.mulVec_transpose (pivotTransition A d c) u).symm

/-- The repository's rank-two boundary family consumes the actual overlap transition. -/
theorem boundaryPivotFamily_transition_realization (eps : ℝ) (heps : eps ≠ 0) :
    pivotTransition (boundaryPivotFamily eps) ![0, 1] ![0, 2] *
        pivotNormalize (boundaryPivotFamily eps) ![0, 1] =
      !![1, eps, 0, 0; 0, eps, 1, 1] := by
  rw [pivotTransition_mul_normalize _ _ _ (by
    rw [boundaryPivotFamily_firstPivot]; exact heps), boundaryPivotFamily_secondChart]

end

end FormalResearch.PositiveAtlas.Grassmannian
