# IsClosedUnderBinaryCoproducts.closedUnderIsomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e27291f6378e69c02085d95fe3de623636117c83",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55526e8ddf94641e2680ede54e55b655bfcd887c8c74c6921239f02429e682e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dac44da0-8295-e09c-4b43-cb7a554d5585",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:510d11a0-878d-1228-3488-cfa1e085f89a",
  "kind": "lemma",
  "lexical_name": "IsClosedUnderBinaryCoproducts.closedUnderIsomorphisms",
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
  "slug": "isclosedunderbinarycoproducts-closedunderisomorphisms--7f17f23d66745f6ef503c561",
  "source": {
    "blob": "e27291f6378e69c02085d95fe3de623636117c83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant55526e8ddf94641e2680ede54e55b655bfcd887c8c74c6921239f02429e682e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f17f23d66745f6ef503c561adf0a61f1752dd93d0a9c3cca425cdafa11ac883",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant55526e8ddf94641e2680ede54e55b655bfcd887c8c74c6921239f02429e682e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:510d11a0-878d-1228-3488-cfa1e085f89a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsClosedUnderBinaryCoproducts.closedUnderIsomorphisms [HasInitial C]
    [P.IsClosedUnderColimitsOfShape (Discrete.{0} PEmpty)] [P.IsClosedUnderBinaryCoproducts] :
    P.IsClosedUnderIsomorphisms where
  of_iso {X Y} e hX := by
    let h : IsColimit (BinaryCofan.mk (initial.to Y) e.hom) :=
      BinaryCofan.IsColimit.mk _ (fun _ f ↦ e.inv ≫ f) (by cat_disch) (by simp) (by cat_disch)
    exact P.prop_of_isColimit_binaryCofan h P.prop_initial hX

/-- All objects that are binary coproducts of objects in `P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant55526e8ddf94641e2680ede54e55b655bfcd887c8c74c6921239f02429e682e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant55526e8ddf94641e2680ede54e55b655bfcd887c8c74c6921239f02429e682e8.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e27291f6378e69c02085d95fe3de623636117c83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
