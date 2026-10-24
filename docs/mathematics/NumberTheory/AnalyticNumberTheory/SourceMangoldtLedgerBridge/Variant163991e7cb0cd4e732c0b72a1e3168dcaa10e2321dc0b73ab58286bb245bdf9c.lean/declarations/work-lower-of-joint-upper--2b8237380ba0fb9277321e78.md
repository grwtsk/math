# work_lower_of_joint_upper

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
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/163991e7cb0cd4e732c0b72a1e3168dcaa10e2321dc0b73ab58286bb245bdf9c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3560e2e6-c1f5-fa3a-289a-a55aa12e7927",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6ad1f88-d6d0-0ee4-d933-b8f06c96b2b1",
  "kind": "theorem",
  "lexical_name": "work_lower_of_joint_upper",
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
  "slug": "work-lower-of-joint-upper--2b8237380ba0fb9277321e78",
  "source": {
    "blob": "9c3f22b88964590d8d8c1f2c8dd37c316e557254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant163991e7cb0cd4e732c0b72a1e3168dcaa10e2321dc0b73ab58286bb245bdf9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b8237380ba0fb9277321e7879e496c519ad11cd0a0898ed8298371956851cd1",
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

Occurrence: `result:c6ad1f88-d6d0-0ee4-d933-b8f06c96b2b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem work_lower_of_joint_upper (D C_F A : ℝ) (hA : 1 ≤ A)
    (hT : VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A ≤ D)
    (hF : |betaMainLedger A + independentMainTerm A| ≤ C_F) :
    -(D + 2 + C_F) ≤ criticalMangoldtWork A := by
  have h := (abs_le.mp (joint_add_work_abs_le C_F A hA hF)).1
  linarith

/-- The actual remaining signed covariance estimate is exactly the full-Mangoldt work target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant163991e7cb0cd4e732c0b72a1e3168dcaa10e2321dc0b73ab58286bb245bdf9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant163991e7cb0cd4e732c0b72a1e3168dcaa10e2321dc0b73ab58286bb245bdf9c.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c3f22b88964590d8d8c1f2c8dd37c316e557254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
