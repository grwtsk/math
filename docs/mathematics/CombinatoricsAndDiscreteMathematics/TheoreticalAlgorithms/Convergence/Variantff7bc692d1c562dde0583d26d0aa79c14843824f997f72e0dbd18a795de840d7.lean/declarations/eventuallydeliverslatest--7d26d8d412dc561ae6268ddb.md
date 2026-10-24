# EventuallyDeliversLatest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f5f33c262ddfa1bfbac5a1e937060680af09fc1a03b3ca9bd0a0a5148826a49",
  "kind": "def",
  "lexical_name": "EventuallyDeliversLatest",
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
  "slug": "eventuallydeliverslatest--7d26d8d412dc561ae6268ddb",
  "source": {
    "blob": "1f9571fd88a918963078c8de34d485e31e7b9054",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 103,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantff7bc692d1c562dde0583d26d0aa79c14843824f997f72e0dbd18a795de840d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d26d8d412dc561ae6268ddbecd82de3ff5f688491ade711aac512b9b518f167",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantff7bc692d1c562dde0583d26d0aa79c14843824f997f72e0dbd18a795de840d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f5f33c262ddfa1bfbac5a1e937060680af09fc1a03b3ca9bd0a0a5148826a49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def EventuallyDeliversLatest
    {Host EdgeId Payload : Type*}
    [Fintype Host] [DecidableEq Host]
    [Fintype EdgeId] [DecidableEq EdgeId]
    [DecidableEq Payload]
    (contract : RoutingContract Host EdgeId) (start : Host)
    (execution : Execution Host Payload)
    (latest : Revisioned Payload)
    (admittedAt quiescenceTime : Nat) : Prop :=
  ∀ host, Reachable contract start host →
    ∃ n event, admittedAt ≤ n ∧ quiescenceTime ≤ n ∧
      execution.eventAt n = some event ∧
      event.target = host ∧ event.publication = latest

/-- Once quiescent, no source publication newer than `latest` is delivered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantff7bc692d1c562dde0583d26d0aa79c14843824f997f72e0dbd18a795de840d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Convergence/Variantff7bc692d1c562dde0583d26d0aa79c14843824f997f72e0dbd18a795de840d7.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f9571fd88a918963078c8de34d485e31e7b9054` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
