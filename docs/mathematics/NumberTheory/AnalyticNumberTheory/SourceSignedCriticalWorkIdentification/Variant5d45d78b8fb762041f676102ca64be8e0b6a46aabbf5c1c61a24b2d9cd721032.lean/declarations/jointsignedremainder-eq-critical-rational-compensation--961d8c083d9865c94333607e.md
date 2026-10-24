# jointSignedRemainder_eq_critical_rational_compensation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91ee0ae6e73bbc3d1c20e8bc89e70114c3bfe917",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f20ef34-b026-afe1-28c6-e3523d80a709",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ddffcb3-1e0c-c848-7a7d-d772ee091fcb",
  "kind": "theorem",
  "lexical_name": "jointSignedRemainder_eq_critical_rational_compensation",
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
  "slug": "jointsignedremainder-eq-critical-rational-compensation--961d8c083d9865c94333607e",
  "source": {
    "blob": "91ee0ae6e73bbc3d1c20e8bc89e70114c3bfe917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSignedCriticalWorkIdentification/Variant5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:961d8c083d9865c94333607ea82103a4483b77c2ccc0ce5975d042fd9d554b3c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceSignedCriticalWorkIdentification/Variant5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ddffcb3-1e0c-c848-7a7d-d772ee091fcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointSignedRemainder_eq_critical_rational_compensation (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = criticalRelativePairing A + 1 -
      (14 * A ^ 4 + 272 * A ^ 2) / (7 * A ^ 4 + 272 * A ^ 2 + 7344) -
      (betaMainLedger A + independentMainTerm A) := by
  rw [jointSignedRemainder_eq_critical_source_compensation A hA,
    criticalContinuousMoment_eq_rational hA, neg_div]
  ring

/-- The original ledger and genuine source half supply an unconditional bounded correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceSignedCriticalWorkIdentification/Variant5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSignedCriticalWorkIdentification/Variant5d45d78b8fb762041f676102ca64be8e0b6a46aabbf5c1c61a24b2d9cd721032.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91ee0ae6e73bbc3d1c20e8bc89e70114c3bfe917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
