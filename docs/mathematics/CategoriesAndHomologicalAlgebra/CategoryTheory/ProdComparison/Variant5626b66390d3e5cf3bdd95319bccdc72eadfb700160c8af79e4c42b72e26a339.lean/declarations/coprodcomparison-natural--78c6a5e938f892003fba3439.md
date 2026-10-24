# coprodComparison_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "426a9111033725d4ef2b8edc6fc8c395cc3dae73",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/5626b66390d3e5cf3bdd95319bccdc72eadfb700160c8af79e4c42b72e26a339.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:182d8d04-b3a1-c8e3-5124-29c60557a3c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c25fd588-53ab-df57-fb52-d168f03a818e",
  "kind": "theorem",
  "lexical_name": "coprodComparison_natural",
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
  "slug": "coprodcomparison-natural--78c6a5e938f892003fba3439",
  "source": {
    "blob": "426a9111033725d4ef2b8edc6fc8c395cc3dae73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 168,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ProdComparison/Variant5626b66390d3e5cf3bdd95319bccdc72eadfb700160c8af79e4c42b72e26a339.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78c6a5e938f892003fba3439f8d69509ea9af3c8526928ccc3526a1c578233c3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ProdComparison/Variant5626b66390d3e5cf3bdd95319bccdc72eadfb700160c8af79e4c42b72e26a339.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c25fd588-53ab-df57-fb52-d168f03a818e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprodComparison_natural (f : A ⟶ A') (g : B ⟶ B') :
    coprodComparison F A B ≫ F.map (coprod.map f g) =
      coprod.map (F.map f) (F.map g) ≫ coprodComparison F A' B' := by
  rw [coprodComparison, coprodComparison, coprod.map_desc, ← F.map_comp, ← F.map_comp,
    coprod.desc_comp, ← F.map_comp, coprod.inl_map, ← F.map_comp, coprod.inr_map]

set_option backward.defeqAttrib.useBackward true in
/-- The coproduct comparison morphism from `FA ⨿ F-` to `F(A ⨿ -)`, whose components are given by
`coprodComparison`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ProdComparison/Variant5626b66390d3e5cf3bdd95319bccdc72eadfb700160c8af79e4c42b72e26a339.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ProdComparison/Variant5626b66390d3e5cf3bdd95319bccdc72eadfb700160c8af79e4c42b72e26a339.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `426a9111033725d4ef2b8edc6fc8c395cc3dae73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
