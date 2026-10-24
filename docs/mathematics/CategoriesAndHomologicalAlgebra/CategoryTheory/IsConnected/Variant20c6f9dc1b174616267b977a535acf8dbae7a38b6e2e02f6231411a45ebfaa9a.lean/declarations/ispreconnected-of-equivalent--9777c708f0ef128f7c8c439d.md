# isPreconnected_of_equivalent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30cfa82be70523ff568e1f082bc52d0c9d452c84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3250b435-968f-5007-12ff-14e1047d4fc5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2c4c272-133b-33f2-68ed-d81c8cb39a43",
  "kind": "theorem",
  "lexical_name": "isPreconnected_of_equivalent",
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
  "slug": "ispreconnected-of-equivalent--9777c708f0ef128f7c8c439d",
  "source": {
    "blob": "30cfa82be70523ff568e1f082bc52d0c9d452c84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 223,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9777c708f0ef128f7c8c439d8778afbb0ee2d458483b949468b0bb168bdff21f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2c4c272-133b-33f2-68ed-d81c8cb39a43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPreconnected_of_equivalent {K : Type u₂} [Category.{v₂} K] [IsPreconnected J]
    (e : J ≌ K) : IsPreconnected K where
  iso_constant F k :=
    ⟨calc
        F ≅ e.inverse ⋙ e.functor ⋙ F := (e.invFunIdAssoc F).symm
        _ ≅ e.inverse ⋙ (Functor.const J).obj ((e.functor ⋙ F).obj (e.inverse.obj k)) :=
          isoWhiskerLeft e.inverse (isoConstant (e.functor ⋙ F) (e.inverse.obj k))
        _ ≅ e.inverse ⋙ (Functor.const J).obj (F.obj k) :=
          isoWhiskerLeft _ ((F ⋙ Functor.const J).mapIso (e.counitIso.app k))
        _ ≅ (Functor.const K).obj (F.obj k) := NatIso.ofComponents fun X => Iso.refl _⟩
#align category_theory.is_preconnected_of_equivalent CategoryTheory.isPreconnected_of_equivalent

/-- If `J` and `K` are equivalent, then if `J` is connected then `K` is as well. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant20c6f9dc1b174616267b977a535acf8dbae7a38b6e2e02f6231411a45ebfaa9a.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30cfa82be70523ff568e1f082bc52d0c9d452c84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
