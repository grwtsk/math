# succAbove_lt_iff_castSucc_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:382d7682-7276-e90a-c46c-78f3b54af3a7",
  "kind": "lemma",
  "lexical_name": "succAbove_lt_iff_castSucc_lt",
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
  "slug": "succabove-lt-iff-castsucc-lt--41f6099d5727309d0f1b1d46",
  "source": {
    "blob": "6182082d98c8f855262810d38206bc0e342a11ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1073,
    "line": 1067,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta48253b8ea652ecba4c2681285b2cfe6277d18e77e323d0954a5793896df8d31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41f6099d5727309d0f1b1d46c94e6dea6269c7635fb5a0f3b0ba352a0dfa1203",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta48253b8ea652ecba4c2681285b2cfe6277d18e77e323d0954a5793896df8d31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:382d7682-7276-e90a-c46c-78f3b54af3a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1067–1073.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma succAbove_lt_iff_castSucc_lt (p : Fin (n + 1)) (i : Fin n) :
    p.succAbove i < p ↔ castSucc i < p := by
  rcases castSucc_lt_or_lt_succ p i with H | H
  · rwa [iff_true_right H, succAbove_of_castSucc_lt _ _ H]
  · rw [castSucc_lt_iff_succ_le, iff_false_right (Fin.not_le.2 H), succAbove_of_lt_succ _ _ H]
    exact Fin.not_lt.2 <| Fin.le_of_lt H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta48253b8ea652ecba4c2681285b2cfe6277d18e77e323d0954a5793896df8d31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta48253b8ea652ecba4c2681285b2cfe6277d18e77e323d0954a5793896df8d31.lean#L1067).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6182082d98c8f855262810d38206bc0e342a11ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
