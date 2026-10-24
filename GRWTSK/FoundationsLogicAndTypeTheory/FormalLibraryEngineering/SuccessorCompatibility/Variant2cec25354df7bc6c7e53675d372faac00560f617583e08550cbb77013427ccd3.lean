-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorAutomorphismConnector.Variantf51be39ade4be3d07901725e01147b44d65338e148b48251636e540021604d53","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f51be39ade4be3d07901725e01147b44d65338e148b48251636e540021604d53","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SuccessorAutomorphismConnector.Variantf51be39ade4be3d07901725e01147b44d65338e148b48251636e540021604d53","mathematical_subject":"Foundations.Unclassified","original_sha256":"f51be39ade4be3d07901725e01147b44d65338e148b48251636e540021604d53","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Symmetry/SuccessorCompatibility.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Symmetry.CutAction
import Mathematics.StratifiedBoundary.Boundary.SuccessorConnector

/-!
# Automorphism compatibility at a successor cut

The higher group may be larger.  Its registered reduction must intertwine
state projection and law projection with the corresponding lower action.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuccessorAutomorphismConnector.Variantf51be39ade4be3d07901725e01147b44d65338e148b48251636e540021604d53

namespace Mathematics.StratifiedBoundary.Symmetry

open Mathematics.StratifiedBoundary.Boundary
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

structure SuccessorAutomorphismConnector
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {low high :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule}
    (connector :
      SuccessorCutConnector low high) where
  reduceAutomorphism :
    high.Automorphism → low.Automorphism
  reduceIdentity :
    reduceAutomorphism 1 = 1
  reduceMultiplication :
    ∀ left right,
      reduceAutomorphism (left * right) =
        reduceAutomorphism left *
          reduceAutomorphism right
  stateEquivariant :
    ∀ automorphism state,
      connector.projectState
          (high.closure.crossedProduct.action.act
            automorphism state) =
        low.closure.crossedProduct.action.act
          (reduceAutomorphism automorphism)
          (connector.projectState state)
  lawEquivariant :
    ∀ automorphism law,
      connector.projectLaw
          (high.cutEquivariance.lawAction
            automorphism law) =
        low.cutEquivariance.lawAction
          (reduceAutomorphism automorphism)
          (connector.projectLaw law)
  persistentObservableCompatibility : Prop
  persistentObservableCompatibilityProof :
    persistentObservableCompatibility

theorem successor_boundary_action_projects
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {low high :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule}
    {connector :
      SuccessorCutConnector low high}
    (symmetry :
      SuccessorAutomorphismConnector connector)
    (automorphism : high.Automorphism) :
    connector.projectLaw
        (high.cutEquivariance.lawAction
          automorphism
          high.closure.dynamics.invariantLaw) =
      low.cutEquivariance.lawAction
        (symmetry.reduceAutomorphism automorphism)
        low.closure.dynamics.invariantLaw := by
  rw [finite_cut_boundary_law_automorphism_invariant]
  rw [successor_invariant_law_projects connector]
  rw [finite_cut_boundary_law_automorphism_invariant]

end Mathematics.StratifiedBoundary.Symmetry
