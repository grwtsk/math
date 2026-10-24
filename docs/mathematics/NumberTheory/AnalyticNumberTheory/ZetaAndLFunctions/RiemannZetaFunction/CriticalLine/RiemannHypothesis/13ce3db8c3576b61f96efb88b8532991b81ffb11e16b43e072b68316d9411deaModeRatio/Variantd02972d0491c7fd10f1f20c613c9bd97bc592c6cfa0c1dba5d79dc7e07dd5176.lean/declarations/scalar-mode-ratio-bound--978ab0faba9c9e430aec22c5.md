# scalar_mode_ratio_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:314991f5-591b-a733-bcd9-0d23deb262c9",
  "kind": "theorem",
  "lexical_name": "scalar_mode_ratio_bound",
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
  "slug": "scalar-mode-ratio-bound--978ab0faba9c9e430aec22c5",
  "source": {
    "blob": "c710d1b71621c63cf4277565bb997ef2cea452b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 14,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/13ce3db8c3576b61f96efb88b8532991b81ffb11e16b43e072b68316d9411deaModeRatio/Variantd02972d0491c7fd10f1f20c613c9bd97bc592c6cfa0c1dba5d79dc7e07dd5176.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:978ab0faba9c9e430aec22c55f5dc3ab1b77d26b0f171de5d85c2dc6d1574f20",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/13ce3db8c3576b61f96efb88b8532991b81ffb11e16b43e072b68316d9411deaModeRatio/Variantd02972d0491c7fd10f1f20c613c9bd97bc592c6cfa0c1dba5d79dc7e07dd5176.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:314991f5-591b-a733-bcd9-0d23deb262c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scalar_mode_ratio_bound {A : ℝ} (hA : 3 ≤ A) (n : ℝ) :
    n ^ 2 * (2 * A * n ^ 2 - 3) / (2 * A - 3) ≤ 2 * n ^ 4 := by
  apply (div_le_iff₀ (by linarith : (0 : ℝ) < 2 * A - 3)).mpr
  have h : 0 ≤ 2 * (A - 3) * n ^ 4 + 3 * n ^ 2 := by
    positivity
  nlinarith only [h]

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/13ce3db8c3576b61f96efb88b8532991b81ffb11e16b43e072b68316d9411deaModeRatio/Variantd02972d0491c7fd10f1f20c613c9bd97bc592c6cfa0c1dba5d79dc7e07dd5176.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/13ce3db8c3576b61f96efb88b8532991b81ffb11e16b43e072b68316d9411deaModeRatio/Variantd02972d0491c7fd10f1f20c613c9bd97bc592c6cfa0c1dba5d79dc7e07dd5176.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c710d1b71621c63cf4277565bb997ef2cea452b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
