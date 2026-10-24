/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical direction and proof code: grwtsk contributors. -/
import GRWTSK.NumberTheory.Zeta.Riemann.OpenAISevenEighthsPort
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Controls for the pinned OpenAI seven-eighths source port

These controls keep source location, statement comparison, environment alignment,
trust review, replay, and mathematical theorem authority separate.

No external theorem is imported or proved.
-/

namespace GRWTSK.RiemannHypothesis.Checks.OpenAISevenEighthsPortControls

open GRWTSK.RiemannHypothesis

/-- Source and challenge paths are distinct even though they use the same
declaration name in separate comparator modules. -/
theorem challenge_source_separation :
    openAISevenEighthsReview.challengePath ≠
      openAISevenEighthsReview.sourcePath :=
  openAISevenEighthsReview_challenge_ne_solution

/-- Locating the comparator configuration does not satisfy the clean replay
receipt gate. -/
theorem comparator_config_is_not_replay_receipt :
    openAISevenEighthsReview.Has .comparatorConfigLocated ∧
      ¬ openAISevenEighthsReview.Has .cleanPinnedBuildReceipt := by
  simp [ExternalDeclarationReview.Has, openAISevenEighthsReview]

/-- Locating a direct solution body does not establish review of its transitive
dependency closure. -/
theorem solution_body_is_not_dependency_review :
    openAISevenEighthsReview.Has .solutionBodyLocated ∧
      ¬ openAISevenEighthsReview.Has .dependencyClosureReviewed := by
  simp [ExternalDeclarationReview.Has, openAISevenEighthsReview]

/-- Statement-text alignment does not make the current review admission-ready. -/
theorem statement_alignment_is_not_admission :
    openAISevenEighthsReview.Has .statementTextAligned ∧
      ¬ openAISevenEighthsReview.AdmissionReady := by
  constructor
  · simp [ExternalDeclarationReview.Has, openAISevenEighthsReview]
  · exact openAISevenEighthsReview_not_admissionReady

/-- Both the Lean and Mathlib pins differ between the external and local
environments. -/
theorem source_and_local_environments_differ :
    openAISevenEighthsReview.sourceToolchain ≠
        openAISevenEighthsReview.localToolchain ∧
      openAISevenEighthsReview.sourceMathlibRevision ≠
        openAISevenEighthsReview.localMathlibRevision :=
  ⟨openAISevenEighthsReview_toolchain_mismatch,
    openAISevenEighthsReview_mathlib_mismatch⟩

/-- The seven-eighths threshold does not satisfy the parent route's
at-or-left-of-one-half premise. -/
theorem sevenEighths_not_at_or_left_of_half :
    ¬ (((7 : ℝ) / 8) ≤ (1 / 2 : ℝ)) := by
  norm_num

/-- Even an accepted seven-eighths port has only the regional consequence
licensed by the exact threshold ordering. -/
theorem accepted_port_regional_consequence
    (port : AcceptedExternalRawHalfPlanePort ((7 : ℝ) / 8)) :
    NontrivialZeroFreeRightHalfPlane ((7 : ℝ) / 8) ∧
      RiemannZetaZeroFreeRightHalfPlane ((11 : ℝ) / 12) :=
  ⟨port.toNontrivial, port.toElevenTwelfths⟩

/-- The source review record itself is not an accepted theorem port: its
required gate is explicitly false. -/
theorem located_review_remains_blocked :
    openAISevenEighthsReview.Has .sourceFilePresent ∧
      openAISevenEighthsReview.Has .declarationLocated ∧
        ¬ openAISevenEighthsReview.AdmissionReady := by
  exact ⟨openAISevenEighthsReview_sourceLocated.1,
    openAISevenEighthsReview_sourceLocated.2,
    openAISevenEighthsReview_not_admissionReady⟩


/-- Even with reflection symmetry and an unconditional-looking
seven-eighths bound, the central remaining supplier does not follow by
pure logic: the reflected toy pair at 2/5 and 3/5 lies inside the band. -/
theorem toy_remaining_right_gap_fails :
    ¬ (∀ s : ℂ, (1 / 2 : ℝ) < s.re →
      s.re ≤ (7 / 8 : ℝ) → ¬ ToySymmetricZero s) := by
  intro h
  have hbad := h (((3 : ℝ) / 5 : ℝ) : ℂ) (by norm_num) (by norm_num)
  exact hbad (Or.inl rfl)

/-- The presently inspected source record cannot be passed off as the
completed admission record inside a constructed accepted port. -/
theorem no_accepted_port_for_unready_review :
    ¬ ∃ port : AcceptedExternalRawHalfPlanePort ((7 : ℝ) / 8),
      port.review = openAISevenEighthsReview := by
  rintro ⟨port, hreview⟩
  have hready : openAISevenEighthsReview.AdmissionReady := by
    rw [← hreview]
    exact port.admissionReady
  exact openAISevenEighthsReview_not_admissionReady hready

end GRWTSK.RiemannHypothesis.Checks.OpenAISevenEighthsPortControls
