# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Axiombefore.Variant366ed6090618a8bb992d039801aa684d95bc417a36b16f9b5ee5c87e33d1a6e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `439933f74b39bf368d3f29f643ff7aa05c61b687` · SHA-256 `ebcc533a758cf2dab53c622ba22ff63e4ccbfc8859cc37ac75b99243e7ae9084`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variantfa1ee4d5c1978368d5fc6fd271e3c2317ccc2689cc3856b28c7bbc74383db092","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa1ee4d5c1978368d5fc6fd271e3c2317ccc2689cc3856b28c7bbc74383db092","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.VerboseIdentity.Variantfa1ee4d5c1978368d5fc6fd271e3c2317ccc2689cc3856b28c7bbc74383db092","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"fa1ee4d5c1978368d5fc6fd271e3c2317ccc2689cc3856b28c7bbc74383db092","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:5a34c94f09a2383d69b92a9f/workspace/SurfaceRefactorProbe/Axiombefore.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Data.Finset.Card

/-!
# Generated refactor fixture

This file is quarantine-only input for the generated target.  Every public
declaration is explicitly classified as `surface_candidate`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.VerboseIdentity.Variantfa1ee4d5c1978368d5fc6fd271e3c2317ccc2689cc3856b28c7bbc74383db092

public section

namespace Generated.RefactorFixture

@[surface_candidate]
theorem verbose_identity (value : Nat) : value = value := by
  have first : value = value := Eq.refl value
  have second : value = value := first
  exact second

@[surface_candidate]
theorem identity_with_local_auxiliary (value : Nat) : value + 0 = value := by
  have localAuxiliary (input : Nat) : input + 0 = input := by
    exact Nat.add_zero input
  exact localAuxiliary value

/-- Its `Finset` type makes the required import observable to repair tests. -/
@[surface_candidate]
def import_sensitive_cardinality (values : Finset Nat) : Nat :=
  values.card

end Generated.RefactorFixture



open Lean

run_meta do
  let axioms ← Lean.collectAxioms `Generated.RefactorFixture.identity_with_local_auxiliary
  let names := axioms.toList.map Name.toString |>.mergeSort (· < ·)
  let info ← getConstInfo `Generated.RefactorFixture.identity_with_local_auxiliary
  let normalizedType := toString (← Meta.ppExpr info.type)
  let env ← getEnv
  let classifications :=
    (if Surface.Core.surfaceAdapterAttr.hasTag env `Generated.RefactorFixture.identity_with_local_auxiliary then ["surface_adapter"] else []) ++
    (if Surface.Core.surfaceNovelAttr.hasTag env `Generated.RefactorFixture.identity_with_local_auxiliary then ["surface_novel"] else []) ++
    (if Surface.Core.surfaceCandidateAttr.hasTag env `Generated.RefactorFixture.identity_with_local_auxiliary then ["surface_candidate"] else []) ++
    (if Surface.Core.surfacePublishedAttr.hasTag env `Generated.RefactorFixture.identity_with_local_auxiliary then ["surface_published"] else []) ++
    (if Surface.Core.surfaceCertificateAttr.hasTag env `Generated.RefactorFixture.identity_with_local_auxiliary then ["surface_certificate"] else [])
  liftM <| IO.println <| Json.compress <| Json.mkObj [("schema", toJson "surface.refactor.axiom-probe.v1"), ("axioms", toJson names), ("normalizedType", toJson normalizedType), ("classificationTags", toJson classifications)]
```
