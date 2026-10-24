# productUniqueIso_inv_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fc68ad1cd44a9e31166371073f80e6f2f493b0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 572,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f2d89ed-4f68-0a26-f94a-53aa941717eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb948843-c1b5-e7a0-d69c-33cc66c76afc",
  "kind": "lemma",
  "lexical_name": "productUniqueIso_inv_π",
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
  "slug": "productuniqueiso-inv--6c972dbf9399586172edc092",
  "source": {
    "blob": "7fc68ad1cd44a9e31166371073f80e6f2f493b0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 581,
    "line": 572,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c972dbf9399586172edc092a8ff0dfb72cb701397edc5f4ef4140249cf6367e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb948843-c1b5-e7a0-d69c-33cc66c76afc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–581.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma productUniqueIso_inv_π [Unique β] (f : β → C) (b : β) :
    (productUniqueIso f).inv ≫ Pi.π f b = eqToHom (congrArg _ <| Subsingleton.allEq _ _) := by
  obtain rfl := Subsingleton.allEq b default
  simp [Iso.inv_comp_eq]

@[deprecated (since := "2026-06-30")] alias productUniqueIso_inv := productUniqueIso_inv_π
@[deprecated (since := "2026-06-30")] alias coproductUniqueIso_hom := ι_coproductUniqueIso_hom

/-- Any isomorphism is the projection from a single object product. -/
@[to_dual /-- Any isomorphism is the projection from a single object product. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantb9651ff9397cf58446f5c98353449254018c6d4b69bf83ced693ce1df3e2d541.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fc68ad1cd44a9e31166371073f80e6f2f493b0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
