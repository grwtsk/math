# le_sub_of_le_upcrossingsBefore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2025caf9ce9944b38888d86c0f84e035620fb30",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 543,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52ae3c65a83967ddbf9f639d4793fd369dc327b28d1946da3f10929f0882ffc7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2eaaf840-50bb-9bfb-168a-2c11292b99e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:529f66ed-92f0-f18f-e560-02f0e4348058",
  "kind": "theorem",
  "lexical_name": "le_sub_of_le_upcrossingsBefore",
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
  "slug": "le-sub-of-le-upcrossingsbefore--d67560dd7fa7e28664250a69",
  "source": {
    "blob": "a2025caf9ce9944b38888d86c0f84e035620fb30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 543,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant52ae3c65a83967ddbf9f639d4793fd369dc327b28d1946da3f10929f0882ffc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d67560dd7fa7e28664250a695e1b429252712e2155c1818c659e992a735c8acb",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant52ae3c65a83967ddbf9f639d4793fd369dc327b28d1946da3f10929f0882ffc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:529f66ed-92f0-f18f-e560-02f0e4348058`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 543–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_sub_of_le_upcrossingsBefore (hN : 0 < N) (hab : a < b)
    (hn : n < upcrossingsBefore a b f N ω) :
    b - a ≤ stoppedValue f (fun ω ↦ (upperCrossingTime a b f N (n + 1) ω : ℕ)) ω -
      stoppedValue f (fun ω ↦ (lowerCrossingTime a b f N n ω : ℕ)) ω :=
  sub_le_sub
    (stoppedValue_upperCrossingTime (upperCrossingTime_lt_of_le_upcrossingsBefore hN hab hn).ne)
    (stoppedValue_lowerCrossingTime (lowerCrossingTime_lt_of_lt_upcrossingsBefore hN hab hn).ne)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant52ae3c65a83967ddbf9f639d4793fd369dc327b28d1946da3f10929f0882ffc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant52ae3c65a83967ddbf9f639d4793fd369dc327b28d1946da3f10929f0882ffc7.lean#L543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2025caf9ce9944b38888d86c0f84e035620fb30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
