# routeLoop_reachable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d441b21a98babcc33aaca2da9acad60a6efc430",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 780,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0e39fb4712463152b3ba073ed3873f4e36025d56c32c421074ec57e8e7906fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d7cdb26-2e4e-48bf-91df-a0f9d25757e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4a3a180-80c1-8a6e-656d-a7a1e9c09fac",
  "kind": "theorem",
  "lexical_name": "routeLoop_reachable",
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
  "slug": "routeloop-reachable--7edfe38cdf8ac676b6837e1f",
  "source": {
    "blob": "1d441b21a98babcc33aaca2da9acad60a6efc430",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 799,
    "line": 780,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantf0e39fb4712463152b3ba073ed3873f4e36025d56c32c421074ec57e8e7906fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7edfe38cdf8ac676b6837e1f0b4c74118f6ceeff13e96f46be01bce1f19b4452",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variantf0e39fb4712463152b3ba073ed3873f4e36025d56c32c421074ec57e8e7906fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4a3a180-80c1-8a6e-656d-a7a1e9c09fac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 780–799.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem routeLoop_reachable
    (contract : RoutingContract Host EdgeId) (start : Host)
    (fuel : Nat) (state : RouteState Host EdgeId)
    (partition : StatePartition state)
    (stateReachable : StateReachable contract start state) :
    StateReachable contract start (routeLoop contract fuel state) := by
  induction fuel generalizing state with
  | zero => exact stateReachable
  | succ fuel ih =>
      simp only [routeLoop]
      split
      · exact stateReachable
      · rename_i host remaining queueEquation
        apply ih (state := processQueuedHost contract state host remaining)
        · exact processQueuedHost_partition contract state host remaining
            queueEquation partition
        · exact processQueuedHost_reachable contract start state host remaining
            queueEquation partition stateReachable

omit [Fintype Host] [Fintype EdgeId] [DecidableEq EdgeId] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variantf0e39fb4712463152b3ba073ed3873f4e36025d56c32c421074ec57e8e7906fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantf0e39fb4712463152b3ba073ed3873f4e36025d56c32c421074ec57e8e7906fa.lean#L780).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d441b21a98babcc33aaca2da9acad60a6efc430` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
