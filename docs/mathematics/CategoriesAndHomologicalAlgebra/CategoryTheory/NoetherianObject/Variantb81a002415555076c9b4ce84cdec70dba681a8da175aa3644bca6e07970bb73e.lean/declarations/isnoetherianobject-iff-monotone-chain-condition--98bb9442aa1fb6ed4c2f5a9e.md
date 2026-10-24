# isNoetherianObject_iff_monotone_chain_condition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2554118dad8be7991b17241f69cfc366d08aaa73",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:812043ce-a144-a90a-78fe-85a2808fd218",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd11b121-b52b-4be4-a7d5-829b476c55de",
  "kind": "lemma",
  "lexical_name": "isNoetherianObject_iff_monotone_chain_condition",
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
  "slug": "isnoetherianobject-iff-monotone-chain-condition--98bb9442aa1fb6ed4c2f5a9e",
  "source": {
    "blob": "2554118dad8be7991b17241f69cfc366d08aaa73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98bb9442aa1fb6ed4c2f5a9e0a81813c01ceb0487eb43c6c144b99543f2471af",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd11b121-b52b-4be4-a7d5-829b476c55de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isNoetherianObject_iff_monotone_chain_condition :
    IsNoetherianObject X ↔ ∀ (f : ℕ →o Subobject X),
      ∃ (n : ℕ), ∀ (m : ℕ), n ≤ m → f n = f m := by
  dsimp only [IsNoetherianObject]
  rw [ObjectProperty.is_iff, isNoetherianObject,
    wellFoundedGT_iff_monotone_chain_condition]

variable {X} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variantb81a002415555076c9b4ce84cdec70dba681a8da175aa3644bca6e07970bb73e.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2554118dad8be7991b17241f69cfc366d08aaa73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
