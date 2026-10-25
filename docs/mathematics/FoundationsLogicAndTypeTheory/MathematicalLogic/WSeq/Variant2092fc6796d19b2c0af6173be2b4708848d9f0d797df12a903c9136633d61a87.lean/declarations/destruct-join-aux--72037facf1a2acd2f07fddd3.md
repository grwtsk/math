# destruct_join.aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b5fb7bc5d069f3896a8d50bbd52c11327917f3d51ef1fd1c2cf81ce4d5f2a36",
  "kind": "def",
  "lexical_name": "destruct_join.aux",
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
  "slug": "destruct-join-aux--72037facf1a2acd2f07fddd3",
  "source": {
    "blob": "bb8a7cd095b3d89e1ee7aa62d16379af289e85f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1548,
    "line": 1544,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variant2092fc6796d19b2c0af6173be2b4708848d9f0d797df12a903c9136633d61a87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72037facf1a2acd2f07fddd313c7d6fa193710dcc00df8e58d374284e928c094",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variant2092fc6796d19b2c0af6173be2b4708848d9f0d797df12a903c9136633d61a87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b5fb7bc5d069f3896a8d50bbd52c11327917f3d51ef1fd1c2cf81ce4d5f2a36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1544–1548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def destruct_join.aux : Option (WSeq α × WSeq (WSeq α)) → Computation (Option (α × WSeq α))
  | none => Computation.pure none
  | some (s, S) => (destruct (append s (join S))).think
#align stream.wseq.destruct_join.aux Stream'.WSeq.destruct_join.aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variant2092fc6796d19b2c0af6173be2b4708848d9f0d797df12a903c9136633d61a87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variant2092fc6796d19b2c0af6173be2b4708848d9f0d797df12a903c9136633d61a87.lean#L1544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb8a7cd095b3d89e1ee7aa62d16379af289e85f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
