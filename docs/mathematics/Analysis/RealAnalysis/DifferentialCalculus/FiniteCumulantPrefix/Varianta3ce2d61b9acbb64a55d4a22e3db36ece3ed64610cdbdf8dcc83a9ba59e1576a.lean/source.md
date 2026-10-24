# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteCumulantPrefix.Varianta3ce2d61b9acbb64a55d4a22e3db36ece3ed64610cdbdf8dcc83a9ba59e1576a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf200c24c23a41e5576b62056e313b39a9b84711` · SHA-256 `8ff72c33a6446b1204f919e1924b6ab9fc48c887704e48d53a2f34280c22477b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MatchesFiniteCumulantPrefix4.Variant4563a9c7c907c8fdf3a72f0f2f2d6fb6bc322b98f0f3d4937da5416d89aeef03","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4563a9c7c907c8fdf3a72f0f2f2d6fb6bc322b98f0f3d4937da5416d89aeef03","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.MatchesFiniteCumulantPrefix4.Variant4563a9c7c907c8fdf3a72f0f2f2d6fb6bc322b98f0f3d4937da5416d89aeef03","mathematical_subject":"Analysis.Calculus","original_sha256":"4563a9c7c907c8fdf3a72f0f2f2d6fb6bc322b98f0f3d4937da5416d89aeef03","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/PositiveAtlas/FiniteCumulantPrefix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.BlockDirectionReindexing

/-!
# Verified finite cumulant prefix

This module packages the finite log-affine cumulants already proved at orders
one through four into the order-indexed DirectionCumulantFamily interface.

At a fixed parameter theta:

* order 1 is the centroid;
* order 2 is covariance;
* order 3 is the centered third cumulant;
* order 4 is the corrected fourth cumulant.

The prefix is extended by zero outside orders 1--4. That extension is only a
totalization device for the interface; no theorem identifies those higher
entries with actual cumulants. The verified content is exactly the prefix
through order four.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MatchesFiniteCumulantPrefix4.Variant4563a9c7c907c8fdf3a72f0f2f2d6fb6bc322b98f0f3d4937da5416d89aeef03

namespace FormalResearch.PositiveAtlas

universe u v

variable {I : Type u} [Fintype I] [Nonempty I]
variable {E : Type v} [NormedAddCommGroup E] [NormedSpace ℝ E]

namespace FiniteLogAffineFamily

variable (F : FiniteLogAffineFamily I E)

open MomentCumulant

/-- First directional cumulant at theta. -/
def firstDirectionalCumulant
    (theta : E) (directions : Fin 1 → E) : ℝ :=
  F.centroid theta (directions 0)

/-- Second directional cumulant at theta. -/
def secondDirectionalCumulant
    (theta : E) (directions : Fin 2 → E) : ℝ :=
  F.covarianceOperator theta (directions 0) (directions 1)

/-- Third directional cumulant at theta. -/
def thirdDirectionalCumulant
    (theta : E) (directions : Fin 3 → E) : ℝ :=
  F.thirdCumulantOperator theta
    (directions 0) (directions 1) (directions 2)

/-- Corrected fourth directional cumulant at theta. -/
def fourthDirectionalCumulant
    (theta : E) (directions : Fin 4 → E) : ℝ :=
  F.fourthCumulantCovector theta
    (directions 0) (directions 1) (directions 2) (directions 3)

/-- Total order-indexed family containing the verified finite cumulant prefix.

Orders outside 1--4 are set to zero only so that this object inhabits the
all-orders interface. No mathematical claim is made about those entries. -/
def finiteCumulantPrefix4
    (theta : E) :
    DirectionCumulantFamily E ℝ :=
  fun m =>
    match m with
    | 1 => F.firstDirectionalCumulant theta
    | 2 => F.secondDirectionalCumulant theta
    | 3 => F.thirdDirectionalCumulant theta
    | 4 => F.fourthDirectionalCumulant theta
    | _ => fun _ => 0

@[simp]
theorem finiteCumulantPrefix4_zero
    (theta : E) (directions : Fin 0 → E) :
    F.finiteCumulantPrefix4 theta 0 directions = 0 :=
  rfl

@[simp]
theorem finiteCumulantPrefix4_one
    (theta : E) (directions : Fin 1 → E) :
    F.finiteCumulantPrefix4 theta 1 directions =
      F.firstDirectionalCumulant theta directions :=
  rfl

@[simp]
theorem finiteCumulantPrefix4_two
    (theta : E) (directions : Fin 2 → E) :
    F.finiteCumulantPrefix4 theta 2 directions =
      F.secondDirectionalCumulant theta directions :=
  rfl

@[simp]
theorem finiteCumulantPrefix4_three
    (theta : E) (directions : Fin 3 → E) :
    F.finiteCumulantPrefix4 theta 3 directions =
      F.thirdDirectionalCumulant theta directions :=
  rfl

@[simp]
theorem finiteCumulantPrefix4_four
    (theta : E) (directions : Fin 4 → E) :
    F.finiteCumulantPrefix4 theta 4 directions =
      F.fourthDirectionalCumulant theta directions :=
  rfl

@[simp]
theorem finiteCumulantPrefix4_five
    (theta : E) (directions : Fin 5 → E) :
    F.finiteCumulantPrefix4 theta 5 directions = 0 :=
  rfl

@[simp]
theorem firstDirectionalCumulant_eq_centroid
    (theta : E) (directions : Fin 1 → E) :
    F.firstDirectionalCumulant theta directions =
      F.centroid theta (directions 0) :=
  rfl

@[simp]
theorem secondDirectionalCumulant_eq_covariance
    (theta : E) (directions : Fin 2 → E) :
    F.secondDirectionalCumulant theta directions =
      F.covarianceOperator theta (directions 0) (directions 1) :=
  rfl

@[simp]
theorem thirdDirectionalCumulant_eq_operator
    (theta : E) (directions : Fin 3 → E) :
    F.thirdDirectionalCumulant theta directions =
      F.thirdCumulantOperator theta
        (directions 0) (directions 1) (directions 2) :=
  rfl

@[simp]
theorem fourthDirectionalCumulant_eq_covector
    (theta : E) (directions : Fin 4 → E) :
    F.fourthDirectionalCumulant theta directions =
      F.fourthCumulantCovector theta
        (directions 0) (directions 1) (directions 2) (directions 3) :=
  rfl

/-- Order one of the prefix is the first Frechet derivative of log Z. -/
theorem firstDirectionalCumulant_eq_fderiv_logPartition
    (theta : E) (directions : Fin 1 → E) :
    F.firstDirectionalCumulant theta directions =
      fderiv ℝ F.logPartition theta (directions 0) := by
  rw [firstDirectionalCumulant,
    F.fderiv_logPartition_eq_centroid]

/-- Order two of the prefix is the second Frechet derivative of log Z. -/
theorem secondDirectionalCumulant_eq_fderiv_logPartition
    (theta : E) (directions : Fin 2 → E) :
    F.secondDirectionalCumulant theta directions =
      fderiv ℝ (fderiv ℝ F.logPartition) theta
        (directions 0) (directions 1) := by
  rw [secondDirectionalCumulant,
    F.covarianceOperator_eq_covarianceForm]
  exact (F.iterated_fderiv_logPartition_eq_covariance
    theta (directions 0) (directions 1)).symm

/-- Order three of the prefix is the third Frechet derivative of log Z. -/
theorem thirdDirectionalCumulant_eq_fderiv_logPartition
    (theta : E) (directions : Fin 3 → E) :
    F.thirdDirectionalCumulant theta directions =
      fderiv ℝ
        (fun x =>
          fderiv ℝ (fderiv ℝ F.logPartition) x
            (directions 0) (directions 1))
        theta (directions 2) := by
  rw [thirdDirectionalCumulant]
  exact (F.third_fderiv_logPartition_eq_thirdCumulant
    theta (directions 0) (directions 1) (directions 2)).symm

/-- Order four of the prefix is the fourth Frechet derivative of log Z. -/
theorem fourthDirectionalCumulant_eq_fderiv_logPartition
    (theta : E) (directions : Fin 4 → E) :
    F.fourthDirectionalCumulant theta directions =
      fderiv ℝ
        (fun x =>
          fderiv ℝ
            (fun y =>
              fderiv ℝ (fderiv ℝ F.logPartition) y
                (directions 0) (directions 1))
            x (directions 2))
        theta (directions 3) := by
  rw [fourthDirectionalCumulant]
  exact (F.fourth_fderiv_logPartition_eq_fourthCumulant
    theta (directions 0) (directions 1) (directions 2) (directions 3)).symm

/-- The block-reindexing API evaluates the verified prefix by applying the
appropriate order entry to the canonical block directions. -/
@[simp]
theorem blockCumulantValue_finiteCumulantPrefix4
    {n : ℕ}
    (theta : E)
    (directions : Fin n → E)
    (B : Finset (Fin n)) :
    blockCumulantValue (F.finiteCumulantPrefix4 theta) directions B =
      F.finiteCumulantPrefix4 theta B.card
        (blockDirections directions B) :=
  rfl

/-- Predicate saying that an all-orders directional family agrees with the
verified finite log-affine prefix through order four, including the chosen
zero convention at order zero. -/
structure MatchesFiniteCumulantPrefix4
    (theta : E)
    (κ : DirectionCumulantFamily E ℝ) : Prop where
  order0 :
    ∀ directions : Fin 0 → E,
      κ 0 directions = 0
  order1 :
    ∀ directions : Fin 1 → E,
      κ 1 directions =
        F.firstDirectionalCumulant theta directions
  order2 :
    ∀ directions : Fin 2 → E,
      κ 2 directions =
        F.secondDirectionalCumulant theta directions
  order3 :
    ∀ directions : Fin 3 → E,
      κ 3 directions =
        F.thirdDirectionalCumulant theta directions
  order4 :
    ∀ directions : Fin 4 → E,
      κ 4 directions =
        F.fourthDirectionalCumulant theta directions

/-- The canonical prefix matches itself through order four. -/
theorem finiteCumulantPrefix4_matches
    (theta : E) :
    MatchesFiniteCumulantPrefix4 F theta
      (F.finiteCumulantPrefix4 theta) where
  order0 := F.finiteCumulantPrefix4_zero theta
  order1 := F.finiteCumulantPrefix4_one theta
  order2 := F.finiteCumulantPrefix4_two theta
  order3 := F.finiteCumulantPrefix4_three theta
  order4 := F.finiteCumulantPrefix4_four theta

/-- Matching the prefix gives the four already-proved derivative identities. -/
theorem MatchesFiniteCumulantPrefix4.order1_eq_fderiv
    {theta : E}
    {κ : DirectionCumulantFamily E ℝ}
    (h : MatchesFiniteCumulantPrefix4 F theta κ)
    (directions : Fin 1 → E) :
    κ 1 directions =
      fderiv ℝ F.logPartition theta (directions 0) := by
  rw [h.order1 directions,
    F.firstDirectionalCumulant_eq_fderiv_logPartition]

theorem MatchesFiniteCumulantPrefix4.order2_eq_fderiv
    {theta : E}
    {κ : DirectionCumulantFamily E ℝ}
    (h : MatchesFiniteCumulantPrefix4 F theta κ)
    (directions : Fin 2 → E) :
    κ 2 directions =
      fderiv ℝ (fderiv ℝ F.logPartition) theta
        (directions 0) (directions 1) := by
  rw [h.order2 directions,
    F.secondDirectionalCumulant_eq_fderiv_logPartition]

theorem MatchesFiniteCumulantPrefix4.order3_eq_fderiv
    {theta : E}
    {κ : DirectionCumulantFamily E ℝ}
    (h : MatchesFiniteCumulantPrefix4 F theta κ)
    (directions : Fin 3 → E) :
    κ 3 directions =
      fderiv ℝ
        (fun x =>
          fderiv ℝ (fderiv ℝ F.logPartition) x
            (directions 0) (directions 1))
        theta (directions 2) := by
  rw [h.order3 directions,
    F.thirdDirectionalCumulant_eq_fderiv_logPartition]

theorem MatchesFiniteCumulantPrefix4.order4_eq_fderiv
    {theta : E}
    {κ : DirectionCumulantFamily E ℝ}
    (h : MatchesFiniteCumulantPrefix4 F theta κ)
    (directions : Fin 4 → E) :
    κ 4 directions =
      fderiv ℝ
        (fun x =>
          fderiv ℝ
            (fun y =>
              fderiv ℝ (fderiv ℝ F.logPartition) y
                (directions 0) (directions 1))
            x (directions 2))
        theta (directions 3) := by
  rw [h.order4 directions,
    F.fourthDirectionalCumulant_eq_fderiv_logPartition]

end FiniteLogAffineFamily

end FormalResearch.PositiveAtlas
```
