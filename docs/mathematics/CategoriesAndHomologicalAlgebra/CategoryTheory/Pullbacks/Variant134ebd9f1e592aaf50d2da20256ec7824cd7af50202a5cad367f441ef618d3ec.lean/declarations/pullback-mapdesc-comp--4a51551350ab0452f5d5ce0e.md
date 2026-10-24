# pullback.mapDesc_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "491c5ad64b6bb8914918c2875cb764857511420e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1388,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdd27a2b-9948-d964-0937-cbcd539a5a32",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91182b54-6e5d-52e7-0829-a9dc90384b3e",
  "kind": "theorem",
  "lexical_name": "pullback.mapDesc_comp",
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
  "slug": "pullback-mapdesc-comp--4a51551350ab0452f5d5ce0e",
  "source": {
    "blob": "491c5ad64b6bb8914918c2875cb764857511420e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1398,
    "line": 1388,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a51551350ab0452f5d5ce0efbf03639a925fd7a85309f5a2d1609414d53260c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91182b54-6e5d-52e7-0829-a9dc90384b3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1388–1398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullback.mapDesc_comp {X Y S T S' : C} (f : X ⟶ T) (g : Y ⟶ T) (i : T ⟶ S) (i' : S ⟶ S')
    [HasPullback f g] [HasPullback (f ≫ i) (g ≫ i)] [HasPullback (f ≫ i ≫ i') (g ≫ i ≫ i')]
    [HasPullback ((f ≫ i) ≫ i') ((g ≫ i) ≫ i')] :
    pullback.mapDesc f g (i ≫ i') = pullback.mapDesc f g i ≫ pullback.mapDesc _ _ i' ≫
    (pullback.congrHom (Category.assoc _ _ _) (Category.assoc _ _ _)).hom := by
  aesop_cat
#align category_theory.limits.pullback.map_desc_comp CategoryTheory.Limits.pullback.mapDesc_comp

/-- If `f₁ = f₂` and `g₁ = g₂`, we may construct a canonical
isomorphism `pushout f₁ g₁ ≅ pullback f₂ g₂` -/
@[simps! hom]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean#L1388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `491c5ad64b6bb8914918c2875cb764857511420e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
