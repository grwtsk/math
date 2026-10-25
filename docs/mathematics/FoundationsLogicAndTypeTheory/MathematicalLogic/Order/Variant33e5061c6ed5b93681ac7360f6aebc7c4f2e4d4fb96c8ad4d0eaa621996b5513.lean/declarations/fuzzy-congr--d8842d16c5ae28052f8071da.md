# fuzzy_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94fe01584d92b81c2bbea8d27722b8939dfcfa99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 599,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33e5061c6ed5b93681ac7360f6aebc7c4f2e4d4fb96c8ad4d0eaa621996b5513.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:196d3b8a-6254-2cd8-9dcc-af653d849b13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e4f937a-14f4-7dc9-9169-afb91ba37917",
  "kind": "theorem",
  "lexical_name": "fuzzy_congr",
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
  "slug": "fuzzy-congr--d8842d16c5ae28052f8071da",
  "source": {
    "blob": "94fe01584d92b81c2bbea8d27722b8939dfcfa99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 599,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant33e5061c6ed5b93681ac7360f6aebc7c4f2e4d4fb96c8ad4d0eaa621996b5513.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8842d16c5ae28052f8071da23c22cc11876c173bec7e2d2848064fc21a94476",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant33e5061c6ed5b93681ac7360f6aebc7c4f2e4d4fb96c8ad4d0eaa621996b5513.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e4f937a-14f4-7dc9-9169-afb91ba37917`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 599–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fuzzy_congr {x₁ y₁ x₂ y₂ : PGame} (hx : x₁ ≈ x₂) (hy : y₁ ≈ y₂) : x₁ ‖ y₁ ↔ x₂ ‖ y₂ :=
  show _ ∧ _ ↔ _ ∧ _ by rw [lf_congr hx hy, lf_congr hy hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant33e5061c6ed5b93681ac7360f6aebc7c4f2e4d4fb96c8ad4d0eaa621996b5513.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant33e5061c6ed5b93681ac7360f6aebc7c4f2e4d4fb96c8ad4d0eaa621996b5513.lean#L599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94fe01584d92b81c2bbea8d27722b8939dfcfa99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
