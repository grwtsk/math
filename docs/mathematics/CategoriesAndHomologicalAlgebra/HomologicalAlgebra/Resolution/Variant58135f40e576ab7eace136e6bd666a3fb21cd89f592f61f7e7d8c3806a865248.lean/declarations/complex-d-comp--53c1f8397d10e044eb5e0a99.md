# complex_d_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad3484b6f8c2d8ed9470053f97c3a9dce00c4e98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d86132e7-cb36-e787-6ed9-6451a12c93a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0297b63c-fb69-6c2b-9e9b-bf0a767a0858",
  "kind": "theorem",
  "lexical_name": "complex_d_comp",
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
  "slug": "complex-d-comp--53c1f8397d10e044eb5e0a99",
  "source": {
    "blob": "ad3484b6f8c2d8ed9470053f97c3a9dce00c4e98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53c1f8397d10e044eb5e0a9942e86efafae0a8a469e3bba0660de6c02330de11",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0297b63c-fb69-6c2b-9e9b-bf0a767a0858`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_d_comp (n : ℕ) :
    I.cocomplex.d n (n + 1) ≫ I.cocomplex.d (n + 1) (n + 2) = 0 := by
  simp

/-- The (limit) kernel fork given by the composition
`Z ⟶ I.cocomplex.X 0 ⟶ I.cocomplex.X 1` when `I : InjectiveResolution Z`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variant58135f40e576ab7eace136e6bd666a3fb21cd89f592f61f7e7d8c3806a865248.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad3484b6f8c2d8ed9470053f97c3a9dce00c4e98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
