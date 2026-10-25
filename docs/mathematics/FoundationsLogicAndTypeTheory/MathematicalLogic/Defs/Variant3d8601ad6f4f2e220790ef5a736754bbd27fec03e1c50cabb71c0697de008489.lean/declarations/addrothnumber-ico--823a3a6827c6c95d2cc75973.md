# addRothNumber_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90f54a67c2dc9bff1eaa1aae5bbbb9cd62a12a91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 438,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d8601ad6f4f2e220790ef5a736754bbd27fec03e1c50cabb71c0697de008489.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c573d8f-2499-75b0-cc1c-d14b29a82568",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79913dbc-264a-673d-da96-17861d98e60b",
  "kind": "theorem",
  "lexical_name": "addRothNumber_Ico",
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
  "slug": "addrothnumber-ico--823a3a6827c6c95d2cc75973",
  "source": {
    "blob": "90f54a67c2dc9bff1eaa1aae5bbbb9cd62a12a91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 438,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3d8601ad6f4f2e220790ef5a736754bbd27fec03e1c50cabb71c0697de008489.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:823a3a6827c6c95d2cc75973e947dee8c68418c6e68c51bdceb98da87b73e622",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3d8601ad6f4f2e220790ef5a736754bbd27fec03e1c50cabb71c0697de008489.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79913dbc-264a-673d-da96-17861d98e60b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addRothNumber_Ico (a b : ℕ) : addRothNumber (Ico a b) = rothNumberNat (b - a) := by
  obtain h | h := le_total b a
  · rw [Nat.sub_eq_zero_of_le h, Ico_eq_empty_of_le h, rothNumberNat_zero, addRothNumber_empty]
  convert! addRothNumber_map_add_left _ a
  rw [range_eq_Ico, map_eq_image]
  convert! (image_add_left_Ico 0 (b - a) _).symm
  exact (add_tsub_cancel_of_le h).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3d8601ad6f4f2e220790ef5a736754bbd27fec03e1c50cabb71c0697de008489.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3d8601ad6f4f2e220790ef5a736754bbd27fec03e1c50cabb71c0697de008489.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90f54a67c2dc9bff1eaa1aae5bbbb9cd62a12a91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
