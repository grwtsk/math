# coprodComparison_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d37bd955f38a3e476ad5121d1db346d4c969a9c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac63d22d-caad-e9d2-d683-964f84a9d9ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0da5137d-91ca-d84d-90e6-fcf4260e66f4",
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
  "slug": "coprodcomparison-natural--feca217e5b9a24b4af649f99",
  "source": {
    "blob": "d37bd955f38a3e476ad5121d1db346d4c969a9c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1174,
    "line": 1165,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:feca217e5b9a24b4af649f99512dff56d0ce618eb472a28a4b616f9cc47491f3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0da5137d-91ca-d84d-90e6-fcf4260e66f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1165–1174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprodComparison_natural (f : A ⟶ A') (g : B ⟶ B') :
    coprodComparison F A B ≫ F.map (coprod.map f g) =
      coprod.map (F.map f) (F.map g) ≫ coprodComparison F A' B' := by
  rw [coprodComparison, coprodComparison, coprod.map_desc, ← F.map_comp, ← F.map_comp,
    coprod.desc_comp, ← F.map_comp, coprod.inl_map, ← F.map_comp, coprod.inr_map]

/-- The coproduct comparison morphism from `FA ⨿ F-` to `F(A ⨿ -)`, whose components are given by
`coprodComparison`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant35cefa40306f849521e44fce582068fea866974ad040875bfb38d77101d0a09f.lean#L1165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d37bd955f38a3e476ad5121d1db346d4c969a9c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
