# positiveOnsetTail_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcaeb9df-1521-10ba-9193-b516b8f47815",
  "kind": "theorem",
  "lexical_name": "positiveOnsetTail_integral",
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
  "slug": "positiveonsettail-integral--165e10f1ec3c8601afca4177",
  "source": {
    "blob": "3ccd9fea83c925c437de1f6720a7b6b8661d930c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:165e10f1ec3c8601afca4177fc323b61208e94b92ec20b59c8cf506b64b69ecc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcaeb9df-1521-10ba-9193-b516b8f47815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveOnsetTail_integral : (∫ t : ℝ, positiveOnsetTail t) = properPowerB1 := by
  have he := (ofReal_integral_eq_lintegral_ofReal positiveOnsetTail_integrable
    (Eventually.of_forall positiveOnsetTail_nonneg)).trans positiveOnsetTail_lintegral
  have h := congrArg ENNReal.toReal he
  simpa only [ENNReal.toReal_ofReal (integral_nonneg positiveOnsetTail_nonneg),
    ENNReal.toReal_ofReal (show 0≤properPowerB1 from properPowerMoment_nonneg 1)] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerTransport/Variantba2b74d12bc4398ed6acc7da72001135a6f4ff91aebf6a2cc064a0958bdc9bb7.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ccd9fea83c925c437de1f6720a7b6b8661d930c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
