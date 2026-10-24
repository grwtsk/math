# three_quarter_power_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b4717ddd3693a0e2ad492dbd87ecd2dc8e9eaec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8a42a79b8eb453f40aa87e001493bf9a6b65722f6220dd0f0e87984d1be95fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b275dc3a-f9a5-dbef-caa3-5749100bf0db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2eda5d60-8367-e45c-4a8e-ae4cd6dccd7c",
  "kind": "theorem",
  "lexical_name": "three_quarter_power_integral",
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
  "slug": "three-quarter-power-integral--8bf4c73403d8936588a1c506",
  "source": {
    "blob": "5b4717ddd3693a0e2ad492dbd87ecd2dc8e9eaec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AbsoluteMertensEnvelopeAudit/Variantc8a42a79b8eb453f40aa87e001493bf9a6b65722f6220dd0f0e87984d1be95fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bf4c73403d8936588a1c506df4b309567c4dab1438349c447575528864fae16",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AbsoluteMertensEnvelopeAudit/Variantc8a42a79b8eb453f40aa87e001493bf9a6b65722f6220dd0f0e87984d1be95fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2eda5d60-8367-e45c-4a8e-ae4cd6dccd7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem three_quarter_power_integral (R X : ℝ) :
    (∫ x in R..X, x ^ (-(3 : ℝ) / 4)) =
      4 * (X ^ ((1 : ℝ) / 4) - R ^ ((1 : ℝ) / 4)) := by
  rw [integral_rpow (Or.inl (by norm_num : -(1 : ℝ) < -3 / 4))]
  norm_num
  ring

/-- Any envelope with the stated eventual lower bound loses enough decay
that its absolute Mertens majorant is not tail integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AbsoluteMertensEnvelopeAudit/Variantc8a42a79b8eb453f40aa87e001493bf9a6b65722f6220dd0f0e87984d1be95fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AbsoluteMertensEnvelopeAudit/Variantc8a42a79b8eb453f40aa87e001493bf9a6b65722f6220dd0f0e87984d1be95fd.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b4717ddd3693a0e2ad492dbd87ecd2dc8e9eaec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
