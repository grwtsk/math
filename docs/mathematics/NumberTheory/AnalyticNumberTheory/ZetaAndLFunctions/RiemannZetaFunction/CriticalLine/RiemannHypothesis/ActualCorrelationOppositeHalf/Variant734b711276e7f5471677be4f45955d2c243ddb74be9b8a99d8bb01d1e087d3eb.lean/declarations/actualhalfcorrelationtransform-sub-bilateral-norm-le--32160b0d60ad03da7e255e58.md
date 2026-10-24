# actualHalfCorrelationTransform_sub_bilateral_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2b6efc0-67e0-0de2-5212-eb1a60ff8d17",
  "kind": "theorem",
  "lexical_name": "actualHalfCorrelationTransform_sub_bilateral_norm_le",
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
  "slug": "actualhalfcorrelationtransform-sub-bilateral-norm-le--32160b0d60ad03da7e255e58",
  "source": {
    "blob": "8b4f229afda6ac311ae5a525279384e96aef87db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 107,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOppositeHalf/Variant734b711276e7f5471677be4f45955d2c243ddb74be9b8a99d8bb01d1e087d3eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32160b0d60ad03da7e255e5848971af4928d1d820503688083e1226442835f4e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOppositeHalf/Variant734b711276e7f5471677be4f45955d2c243ddb74be9b8a99d8bb01d1e087d3eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2b6efc0-67e0-0de2-5212-eb1a60ff8d17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfCorrelationTransform_sub_bilateral_norm_le {A : ℝ} (hA : 1 ≤ A)
    {z : ℂ} (hz : 0 < z.re) :
    ‖actualHalfCorrelationTransform A z - actualBilateralCorrelationTransform A z‖ ≤
      1 / z.re := by
  rw [actualBilateralCorrelationTransform_eq_halves (show 0 < A by linarith) z,
    sub_add_eq_sub_sub, sub_self, zero_sub, norm_neg]
  exact actualHalfCorrelationTransform_opposite_norm_le hA hz

end
end FormalResearch.RiemannHypothesis.ActualCorrelationOppositeHalf
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOppositeHalf/Variant734b711276e7f5471677be4f45955d2c243ddb74be9b8a99d8bb01d1e087d3eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCorrelationOppositeHalf/Variant734b711276e7f5471677be4f45955d2c243ddb74be9b8a99d8bb01d1e087d3eb.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b4f229afda6ac311ae5a525279384e96aef87db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
