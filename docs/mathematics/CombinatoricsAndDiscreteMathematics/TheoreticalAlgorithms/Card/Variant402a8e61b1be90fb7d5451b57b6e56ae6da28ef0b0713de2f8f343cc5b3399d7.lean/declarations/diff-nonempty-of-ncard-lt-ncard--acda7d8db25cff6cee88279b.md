# diff_nonempty_of_ncard_lt_ncard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30d2c53c19cb4702c9298dd48374fd84b20111ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 890,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/402a8e61b1be90fb7d5451b57b6e56ae6da28ef0b0713de2f8f343cc5b3399d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e9f9c17-593a-52c3-5f6e-561a9a96b483",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39ae168c-400f-47d5-c980-dc4de23b4591",
  "kind": "theorem",
  "lexical_name": "diff_nonempty_of_ncard_lt_ncard",
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
  "slug": "diff-nonempty-of-ncard-lt-ncard--acda7d8db25cff6cee88279b",
  "source": {
    "blob": "30d2c53c19cb4702c9298dd48374fd84b20111ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 895,
    "line": 890,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Card/Variant402a8e61b1be90fb7d5451b57b6e56ae6da28ef0b0713de2f8f343cc5b3399d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acda7d8db25cff6cee88279b25a25169a0a22f07637e04ff9552b2ee97b4b362",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Card/Variant402a8e61b1be90fb7d5451b57b6e56ae6da28ef0b0713de2f8f343cc5b3399d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39ae168c-400f-47d5-c980-dc4de23b4591`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 890–895.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diff_nonempty_of_ncard_lt_ncard (h : s.ncard < t.ncard) (hs : s.Finite := by toFinite_tac) :
    (t \ s).Nonempty := by
  rw [Set.nonempty_iff_ne_empty, Ne.def, diff_eq_empty]
  exact fun h' ↦ h.not_le (ncard_le_of_subset h' hs)
#align set.diff_nonempty_of_ncard_lt_ncard Set.diff_nonempty_of_ncard_lt_ncard

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Card/Variant402a8e61b1be90fb7d5451b57b6e56ae6da28ef0b0713de2f8f343cc5b3399d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Card/Variant402a8e61b1be90fb7d5451b57b6e56ae6da28ef0b0713de2f8f343cc5b3399d7.lean#L890).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30d2c53c19cb4702c9298dd48374fd84b20111ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
