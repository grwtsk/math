# isColimitLocallyConstantPresheaf_desc_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33120a7e118f4eb873b9eb5976c1c5ecb9ab4594",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 360,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0743abddd518de9e9d7b7ced50ac0ce9ea94d2699ee7b1766bbd7e78169db40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdf5ff26-261d-91f8-ebb8-f9581d7cdc5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88b123f6-1700-0c68-7bdc-66d469791f71",
  "kind": "lemma",
  "lexical_name": "isColimitLocallyConstantPresheaf_desc_apply",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "iscolimitlocallyconstantpresheaf-desc-apply--b55fc527c0d5c2bf9d39d91d",
  "source": {
    "blob": "33120a7e118f4eb873b9eb5976c1c5ecb9ab4594",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 360,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb0743abddd518de9e9d7b7ced50ac0ce9ea94d2699ee7b1766bbd7e78169db40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b55fc527c0d5c2bf9d39d91d5a62ebb68e8cd443213af3e6e3a69b9a921a3150",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb0743abddd518de9e9d7b7ced50ac0ce9ea94d2699ee7b1766bbd7e78169db40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88b123f6-1700-0c68-7bdc-66d469791f71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isColimitLocallyConstantPresheaf_desc_apply (hc : IsLimit c) [∀ i, Epi (c.π.app i)]
    (s : Cocone ((F ⋙ toLightProfinite).op ⋙ locallyConstantPresheaf X))
    (n : ℕᵒᵖ) (f : LocallyConstant (toLightProfinite.obj (F.obj n)) X) :
    dsimp% (isColimitLocallyConstantPresheaf c X hc).desc s (f.comap (c.π.app n).hom.hom) =
      s.ι.app ⟨n⟩ f := by
  change ((((locallyConstantPresheaf X).mapCocone c.op).ι.app ⟨n⟩) ≫
    (isColimitLocallyConstantPresheaf c X hc).desc s) _ = _
  rw [(isColimitLocallyConstantPresheaf c X hc).fac]

/-- `isColimitLocallyConstantPresheaf` in the case of `S.asLimit`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb0743abddd518de9e9d7b7ced50ac0ce9ea94d2699ee7b1766bbd7e78169db40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb0743abddd518de9e9d7b7ced50ac0ce9ea94d2699ee7b1766bbd7e78169db40.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33120a7e118f4eb873b9eb5976c1c5ecb9ab4594` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
