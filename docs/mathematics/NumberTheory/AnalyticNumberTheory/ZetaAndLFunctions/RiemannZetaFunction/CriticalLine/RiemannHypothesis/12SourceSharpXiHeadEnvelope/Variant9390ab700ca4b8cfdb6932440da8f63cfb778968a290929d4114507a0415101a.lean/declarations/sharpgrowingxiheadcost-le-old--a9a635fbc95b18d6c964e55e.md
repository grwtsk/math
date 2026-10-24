# sharpGrowingXiHeadCost_le_old

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7f23461-9e71-86ef-00e5-71beb22a4132",
  "kind": "theorem",
  "lexical_name": "sharpGrowingXiHeadCost_le_old",
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
  "slug": "sharpgrowingxiheadcost-le-old--a9a635fbc95b18d6c964e55e",
  "source": {
    "blob": "516bd4f40771741bb6491a6e67e32d0b9f580963",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 188,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/12SourceSharpXiHeadEnvelope/Variant9390ab700ca4b8cfdb6932440da8f63cfb778968a290929d4114507a0415101a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9a635fbc95b18d6c964e55e46dc67fcbe0bae34d966849a0744a80e90e775b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/12SourceSharpXiHeadEnvelope/Variant9390ab700ca4b8cfdb6932440da8f63cfb778968a290929d4114507a0415101a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7f23461-9e71-86ef-00e5-71beb22a4132`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sharpGrowingXiHeadCost_le_old {Q : ℝ} (hQ : 91 ≤ Q) :
    sharpGrowingXiHeadCost Q ≤ RH16GrowingXiHead.growingXiHeadCost Q := by
  have hc : sharpXiEnvelopeConstant ≤ actualXiExponentialEnvelopeConstant := by
    unfold sharpXiEnvelopeConstant actualXiExponentialEnvelopeConstant
    nlinarith [abs_nonneg (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2))]
  have hlog : 0 ≤ Real.log Q := Real.log_nonneg (by linarith)
  unfold sharpGrowingXiHeadCost RH16GrowingXiHead.growingXiHeadCost
  exact div_le_div_of_nonneg_right
    (mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hc (by norm_num)) hlog)
    (by linarith)

end RH16SharpXiHeadEnvelope
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/12SourceSharpXiHeadEnvelope/Variant9390ab700ca4b8cfdb6932440da8f63cfb778968a290929d4114507a0415101a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/12SourceSharpXiHeadEnvelope/Variant9390ab700ca4b8cfdb6932440da8f63cfb778968a290929d4114507a0415101a.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `516bd4f40771741bb6491a6e67e32d0b9f580963` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
