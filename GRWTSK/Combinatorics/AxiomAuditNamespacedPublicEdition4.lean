-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variantbddfca4c55ee79de076954aa879fc88e80ba7e0fb5d97a6e2c4cc5cf0d14fdf9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bddfca4c55ee79de076954aa879fc88e80ba7e0fb5d97a6e2c4cc5cf0d14fdf9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.VerboseIdentity.Variantbddfca4c55ee79de076954aa879fc88e80ba7e0fb5d97a6e2c4cc5cf0d14fdf9","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"bddfca4c55ee79de076954aa879fc88e80ba7e0fb5d97a6e2c4cc5cf0d14fdf9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:813874bb5cd5877553fa2643/workspace/SurfaceRefactorProbe/AxiomAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Data.Finset.Card

/-!
# Generated refactor fixture

This file is quarantine-only input for the generated target.  Every public
declaration is explicitly classified as `surface_candidate`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variantbddfca4c55ee79de076954aa879fc88e80ba7e0fb5d97a6e2c4cc5cf0d14fdf9

public section

namespace Generated.RefactorFixture

@[surface_candidate]
theorem verbose_identity (value : Nat) : value = value := by
  rfl

@[surface_candidate]
theorem identity_with_local_auxiliary (value : Nat) : value + 0 = value := by
  have localAuxiliary (input : Nat) : input + 0 = input := by
    exact Nat.add_zero input
  exact localAuxiliary value

/-- Dedicated target for process-confinement and post-review tamper tests. -/
@[surface_candidate]
theorem sandbox_guard_identity (value : Nat) : value = value := by
  rfl

/-- Its `Finset` type makes the required import observable to repair tests. -/
@[surface_candidate]
def import_sensitive_cardinality (values : Finset Nat) : Nat :=
  values.card

end Generated.RefactorFixture


open Lean

run_meta do
  let axioms ← Lean.collectAxioms `Generated.RefactorFixture.verbose_identity
  let names := axioms.toList.map Name.toString |>.mergeSort (· < ·)
  let info ← getConstInfo `Generated.RefactorFixture.verbose_identity
  let normalizedType := toString (← Meta.ppExpr info.type)
  let env ← getEnv
  let moduleSurface := env.constants.toList |>.filter (fun entry => (env.getModuleIdxFor? entry.1).isNone) |>.map (fun entry => entry.1.toString ++ "\u001f" ++ (if entry.2.isAxiom then "axiom" else if entry.2.isTheorem then "theorem" else "declaration") ++ "\u001f" ++ toString entry.2.type) |>.mergeSort (· < ·)
  let classifications :=
    (if Surface.Core.surfaceAdapterAttr.hasTag env `Generated.RefactorFixture.verbose_identity then ["surface_adapter"] else []) ++
    (if Surface.Core.surfaceNovelAttr.hasTag env `Generated.RefactorFixture.verbose_identity then ["surface_novel"] else []) ++
    (if Surface.Core.surfaceCandidateAttr.hasTag env `Generated.RefactorFixture.verbose_identity then ["surface_candidate"] else []) ++
    (if Surface.Core.surfacePublishedAttr.hasTag env `Generated.RefactorFixture.verbose_identity then ["surface_published"] else []) ++
    (if Surface.Core.surfaceCertificateAttr.hasTag env `Generated.RefactorFixture.verbose_identity then ["surface_certificate"] else [])
  liftM <| IO.println <| Json.compress <| Json.mkObj [("schema", toJson "surface.refactor.axiom-probe.v1"), ("axioms", toJson names), ("normalizedType", toJson normalizedType), ("classificationTags", toJson classifications), ("isTheorem", toJson info.isTheorem), ("moduleDeclarationSurface", toJson moduleSurface)]
