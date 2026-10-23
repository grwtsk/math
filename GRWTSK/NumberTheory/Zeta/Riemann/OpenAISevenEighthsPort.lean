/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ZetaZeroFreeHalfPlaneAdapter
import Mathlib.Data.List.Basic

set_option autoImplicit false

/-!
# Source-bound port for the pinned OpenAI seven-eighths declaration

This module records the exact external source inspected for issue #448 and
separates source location from local theorem acceptance.

The pinned external source states the same raw proposition as the local
`RiemannZetaZeroFreeRightHalfPlane (7 / 8)` interface, but it uses a different
Lean toolchain and Mathlib revision. Its direct solution file contains a proof
body, while the separate comparator challenge contains a placeholder. Neither
fact supplies a local theorem before environment alignment, dependency and
trust review, a clean pinned build receipt, and an explicit local adapter.

No accepted external port is constructed here.

LITERATURE_REVIEWED / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
LOCAL_ADMISSION_BLOCKED.
-/

namespace GRWTSK.RiemannHypothesis

/-- Independent checks used when reviewing one external formal declaration.

These checks are evidence metadata. They are not mathematical theorem terms. -/
inductive ExternalFormalCheck where
  | sourceFilePresent
  | declarationLocated
  | statementTextAligned
  | solutionBodyLocated
  | challengeSeparated
  | comparatorConfigLocated
  | toolchainAligned
  | mathlibRevisionAligned
  | dependencyClosureReviewed
  | trustProfileReviewed
  | cleanPinnedBuildReceipt
  | localAdapterProved
  deriving DecidableEq, Repr

/-- Exact source and environment metadata for one external declaration review. -/
structure ExternalDeclarationReview where
  repository : String
  revision : String
  sourcePath : String
  sourceBlob : String
  declarationName : String
  solutionDependencyPath : String
  solutionDependencyBlob : String
  challengePath : String
  challengeBlob : String
  comparatorPath : String
  comparatorBlob : String
  sourceToolchain : String
  sourceToolchainBlob : String
  sourceMathlibRevision : String
  sourceManifestBlob : String
  localToolchain : String
  localMathlibRevision : String
  observed : List ExternalFormalCheck
  deriving Repr

namespace ExternalDeclarationReview

/-- The review explicitly records the selected check. -/
def Has (review : ExternalDeclarationReview)
    (check : ExternalFormalCheck) : Prop :=
  check ∈ review.observed

/-- Every gate required before an external formal declaration can be accepted
as a local theorem supplier. -/
def requiredChecks : List ExternalFormalCheck :=
  [ .sourceFilePresent,
    .declarationLocated,
    .statementTextAligned,
    .solutionBodyLocated,
    .challengeSeparated,
    .comparatorConfigLocated,
    .toolchainAligned,
    .mathlibRevisionAligned,
    .dependencyClosureReviewed,
    .trustProfileReviewed,
    .cleanPinnedBuildReceipt,
    .localAdapterProved ]

/-- A review is admission-ready only when every required check is present. -/
def AdmissionReady (review : ExternalDeclarationReview) : Prop :=
  ∀ check, check ∈ requiredChecks → review.Has check

end ExternalDeclarationReview

/-- Local restatement of the exact proposition displayed by the pinned external
declaration. This is a comparator proposition, not an imported proof. -/
def OpenAISevenEighthsClaim : Prop :=
  ∀ s : ℂ, ((7 : ℝ) / 8) < s.re → riemannZeta s ≠ 0

/-- The displayed external proposition has the same local mathematical shape as
the raw seven-eighths half-plane interface. This does not compare proof terms,
dependency closures, or definitions across Mathlib revisions. -/
theorem openAISevenEighthsClaim_iff_local :
    OpenAISevenEighthsClaim ↔
      RiemannZetaZeroFreeRightHalfPlane ((7 : ℝ) / 8) :=
  Iff.rfl

/-- Pinned source review for
`OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re`.

Only checks established by source inspection are recorded. Environment,
dependency, trust, replay, and local-adapter gates remain absent. -/
def openAISevenEighthsReview : ExternalDeclarationReview where
  repository := "openai/math"
  revision := "1581d4cbdd69a0faf34b2089614fe2a814316a6a"
  sourcePath := "lean/OAI/NumberTheory/DirichletL/Nonvanishing.lean"
  sourceBlob := "46c67f4000906b1391a471d6e6396ac0da3c16a5"
  declarationName := "OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re"
  solutionDependencyPath :=
    "lean/OAI/NumberTheory/DirichletL/Detector/FinalAssemblyUnconditional.lean"
  solutionDependencyBlob := "e7c20910424837fb954796e1216f5aa453bbd5da"
  challengePath := "lean/ComparatorChallenges/QuasiRiemannHypothesis.lean"
  challengeBlob := "e7d1caf6c579dc9afbf0d2b01f79e5cd2511b028"
  comparatorPath := "lean/ComparatorChallenges/QuasiRiemannHypothesis.json"
  comparatorBlob := "acf552468fc23c1a27d685d33983c58c50040542"
  sourceToolchain := "leanprover/lean4:v4.34.1"
  sourceToolchainBlob := "ba8ebf2dbaf6a668cd2a0e086186d6d569b69ff5"
  sourceMathlibRevision := "d13f23b723b8a846827a245b89c10fc7d3f11612"
  sourceManifestBlob := "67d01d2717d0aaff59fb8814bb53581b961f42b4"
  localToolchain := "leanprover/lean4:v4.33.0"
  localMathlibRevision := "db584cd6d46c92f209a44c0f1c829460d327499d"
  observed :=
    [ .sourceFilePresent,
      .declarationLocated,
      .statementTextAligned,
      .solutionBodyLocated,
      .challengeSeparated,
      .comparatorConfigLocated ]

/-- The pinned source file and declaration were located. -/
theorem openAISevenEighthsReview_sourceLocated :
    openAISevenEighthsReview.Has .sourceFilePresent ∧
      openAISevenEighthsReview.Has .declarationLocated := by
  simp [ExternalDeclarationReview.Has, openAISevenEighthsReview]

/-- The displayed proposition and direct solution body were located separately. -/
theorem openAISevenEighthsReview_statementAndBodyLocated :
    openAISevenEighthsReview.Has .statementTextAligned ∧
      openAISevenEighthsReview.Has .solutionBodyLocated := by
  simp [ExternalDeclarationReview.Has, openAISevenEighthsReview]

/-- The comparator challenge and solution source are distinct paths. -/
theorem openAISevenEighthsReview_challenge_ne_solution :
    openAISevenEighthsReview.challengePath ≠
      openAISevenEighthsReview.sourcePath := by
  decide

/-- The external and local Lean toolchain pins differ. -/
theorem openAISevenEighthsReview_toolchain_mismatch :
    openAISevenEighthsReview.sourceToolchain ≠
      openAISevenEighthsReview.localToolchain := by
  decide

/-- The external and local Mathlib revisions differ. -/
theorem openAISevenEighthsReview_mathlib_mismatch :
    openAISevenEighthsReview.sourceMathlibRevision ≠
      openAISevenEighthsReview.localMathlibRevision := by
  decide

/-- The current source review is not ready for local theorem admission.

This is a statement about the explicit review record: the environment,
dependency, trust, replay, and adapter checks are absent. -/
theorem openAISevenEighthsReview_not_admissionReady :
    ¬ openAISevenEighthsReview.AdmissionReady := by
  intro hready
  have htool :=
    hready .toolchainAligned
      (by simp [ExternalDeclarationReview.requiredChecks])
  simpa [ExternalDeclarationReview.Has, openAISevenEighthsReview] using htool

/-- A noncoercible accepted port for an external raw half-plane theorem.

The mathematical theorem term and the complete source-review gate are separate
fields. Source metadata alone cannot inhabit this structure. -/
structure AcceptedExternalRawHalfPlanePort (σ : ℝ) where
  review : ExternalDeclarationReview
  admissionReady : review.AdmissionReady
  rawTheorem : RiemannZetaZeroFreeRightHalfPlane σ

namespace AcceptedExternalRawHalfPlanePort

/-- An accepted raw theorem supplies the local nontrivial-zero regional
statement at the same threshold. -/
theorem toNontrivial
    {σ : ℝ} (port : AcceptedExternalRawHalfPlanePort σ) :
    NontrivialZeroFreeRightHalfPlane σ :=
  nontrivialZeroFreeRightHalfPlane_of_riemannZeta port.rawTheorem

/-- A future accepted OpenAI-style seven-eighths port would supply the exact
local comparator proposition. -/
theorem toOpenAISevenEighthsClaim
    (port : AcceptedExternalRawHalfPlanePort ((7 : ℝ) / 8)) :
    OpenAISevenEighthsClaim :=
  openAISevenEighthsClaim_iff_local.mpr port.rawTheorem

/-- A future accepted seven-eighths port also supplies the weaker
eleven-twelfths regional theorem. -/
theorem toElevenTwelfths
    (port : AcceptedExternalRawHalfPlanePort ((7 : ℝ) / 8)) :
    RiemannZetaZeroFreeRightHalfPlane ((11 : ℝ) / 12) :=
  riemannZetaZeroFreeRightHalfPlane_sevenEighths_to_elevenTwelfths
    port.rawTheorem

end AcceptedExternalRawHalfPlanePort

end GRWTSK.RiemannHypothesis
