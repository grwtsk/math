# colimit_one_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "635113a6a0faebde1452434e593875955582c19f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ac65605-350a-7c7e-aa02-13262a28ab3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69682fb2-1790-ac99-3bf0-6931a59a4fb4",
  "kind": "theorem",
  "lexical_name": "colimit_one_eq",
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
  "slug": "colimit-one-eq--bc2be3d8aacdb8ac9b5ace5a",
  "source": {
    "blob": "635113a6a0faebde1452434e593875955582c19f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 80,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc2be3d8aacdb8ac9b5ace5a1fbc7bb43bdcc90a29cd780e53208db384177483",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69682fb2-1790-ac99-3bf0-6931a59a4fb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimit_one_eq (j : J) : (1 : M.{v, u} F) = M.mk F ⟨j, 1⟩ := by
  apply M.mk_eq
  refine ⟨max' _ j, IsFiltered.leftToMax _ j, IsFiltered.rightToMax _ j, ?_⟩
  simp

/-- The "unlifted" version of multiplication in the colimit. To multiply two dependent pairs
`⟨j₁, x⟩` and `⟨j₂, y⟩`, we pass to a common successor of `j₁` and `j₂` (given by `IsFiltered.max`)
and multiply them there.
-/
@[to_additive
      "The \"unlifted\" version of addition in the colimit. To add two dependent pairs
      `⟨j₁, x⟩` and `⟨j₂, y⟩`, we pass to a common successor of `j₁` and `j₂`
      (given by `IsFiltered.max`) and add them there."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantab64564a4233fc476ee03f0d0d031c2f62d69ffc662e7f6bcaea2e786cce438e.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `635113a6a0faebde1452434e593875955582c19f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
