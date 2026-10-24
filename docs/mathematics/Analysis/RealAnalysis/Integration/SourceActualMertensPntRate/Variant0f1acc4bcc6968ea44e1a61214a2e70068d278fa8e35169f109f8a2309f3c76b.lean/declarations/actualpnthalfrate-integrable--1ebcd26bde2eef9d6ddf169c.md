# actualPntHalfRate_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a38d2010-0f71-ef32-4530-5bae13bb7cc7",
  "kind": "theorem",
  "lexical_name": "actualPntHalfRate_integrable",
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
  "slug": "actualpnthalfrate-integrable--1ebcd26bde2eef9d6ddf169c",
  "source": {
    "blob": "9580b6bf2c0233862571810fad613bd4a8f9dacc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant0f1acc4bcc6968ea44e1a61214a2e70068d278fa8e35169f109f8a2309f3c76b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ebcd26bde2eef9d6ddf169c983fd9f0bce663fb7a636dae3e14cd711b4f5286",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant0f1acc4bcc6968ea44e1a61214a2e70068d278fa8e35169f109f8a2309f3c76b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a38d2010-0f71-ef32-4530-5bae13bb7cc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPntHalfRate_integrable {c : ℝ} (hc : 0 < c) :
    IntegrableOn (fun r : ℝ => Real.exp (-(c / 2) * r ^ ((1 : ℝ) / 10))) (Ioi 0) := by
  simpa only [Real.rpow_zero, one_mul] using
    integrableOn_rpow_mul_exp_neg_mul_rpow (by norm_num : (-1 : ℝ) < 0)
      (by norm_num : (0 : ℝ) < 1 / 10) (half_pos hc)

/-- The actual signed tail obeys a quantitative half-rate bound beyond its PNT radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant0f1acc4bcc6968ea44e1a61214a2e70068d278fa8e35169f109f8a2309f3c76b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMertensPntRate/Variant0f1acc4bcc6968ea44e1a61214a2e70068d278fa8e35169f109f8a2309f3c76b.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9580b6bf2c0233862571810fad613bd4a8f9dacc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
