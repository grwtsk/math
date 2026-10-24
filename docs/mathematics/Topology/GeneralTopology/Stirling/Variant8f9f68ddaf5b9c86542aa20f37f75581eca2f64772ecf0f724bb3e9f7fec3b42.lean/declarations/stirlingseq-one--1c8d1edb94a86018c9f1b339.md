# stirlingSeq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afda0468b72d09b19e29b15a07a9dde801f34027",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79e326f8-2190-07da-8ebc-5ebbfac2eba2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:179f0317-b3c1-6be6-b7b4-0a1c46918c03",
  "kind": "theorem",
  "lexical_name": "stirlingSeq_one",
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
  "slug": "stirlingseq-one--1c8d1edb94a86018c9f1b339",
  "source": {
    "blob": "afda0468b72d09b19e29b15a07a9dde801f34027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 63,
    "path": "GRWTSK/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c8d1edb94a86018c9f1b33957023c2cdca6c4f6f82061f23e5aebb10f09dee0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:179f0317-b3c1-6be6-b7b4-0a1c46918c03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stirlingSeq_one : stirlingSeq 1 = exp 1 / Real.sqrt 2 := by
  rw [stirlingSeq, pow_one, factorial_one, cast_one, mul_one, mul_one_div, one_div_div]
#align stirling.stirling_seq_one Stirling.stirlingSeq_one

/-- We have the expression
`log (stirlingSeq (n + 1)) = log(n + 1)! - 1 / 2 * log(2 * n) - n * log ((n + 1) / e)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stirling/Variant8f9f68ddaf5b9c86542aa20f37f75581eca2f64772ecf0f724bb3e9f7fec3b42.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afda0468b72d09b19e29b15a07a9dde801f34027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
