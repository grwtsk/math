# energy_surplus_add_work_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c3f22b88964590d8d8c1f2c8dd37c316e557254",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/163991e7cb0cd4e732c0b72a1e3168dcaa10e2321dc0b73ab58286bb245bdf9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1dafc092-4fa5-08ce-703d-476f4f31acfe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bc22613-809d-7254-f5df-21fd4a54df22",
  "kind": "theorem",
  "lexical_name": "energy_surplus_add_work_exact",
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
  "slug": "energy-surplus-add-work-exact--c33cfcc0b66b22ceff5e19c2",
  "source": {
    "blob": "9c3f22b88964590d8d8c1f2c8dd37c316e557254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant163991e7cb0cd4e732c0b72a1e3168dcaa10e2321dc0b73ab58286bb245bdf9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c33cfcc0b66b22ceff5e19c2a9df9b37c95cd59da2178dc5d730a29a1ad64081",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant163991e7cb0cd4e732c0b72a1e3168dcaa10e2321dc0b73ab58286bb245bdf9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bc22613-809d-7254-f5df-21fd4a54df22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_surplus_add_work_exact (A : ℝ) (hA : 1 ≤ A) :
    sourceEnergySurplus A / 4 + criticalMangoldtWork A =
      criticalContinuousMoment A - (betaMainLedger A + independentMainTerm A) := by
  rw [sourceEnergySurplus_eq_four_joint_remainder A hA]
  have h := joint_add_work_exact A hA
  linarith

/-- A ledger budget gives a quantitative uniform comparison, not a work estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant163991e7cb0cd4e732c0b72a1e3168dcaa10e2321dc0b73ab58286bb245bdf9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant163991e7cb0cd4e732c0b72a1e3168dcaa10e2321dc0b73ab58286bb245bdf9c.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c3f22b88964590d8d8c1f2c8dd37c316e557254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
