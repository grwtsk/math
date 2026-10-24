# _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasFPowerSeriesWithinAtHasStrictFDerivWithinAt.Variant43b90cd03bb0e8fd768020031946fcde89224788f57c5eef966ea9c8c35bb057.HasFDerivAt.linear_multilinear_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f7ca280-5642-32a2-94e0-dad6aefd5542",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasFPowerSeriesWithinAtHasStrictFDerivWithinAt.Variant43b90cd03bb0e8fd768020031946fcde89224788f57c5eef966ea9c8c35bb057.HasFDerivAt.linear_multilinear_comp",
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
  "slug": "root-grwtsk-analysis-realanalysis-differentialcalculus-hasfpowerserieswi--508d17a2e7c004c1c950e2f7",
  "source": {
    "blob": "a2a1b62436fc49c1e81f0064db010828b4774ac6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 921,
    "line": 912,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant5d7907353e4db1dacf0ed9efb99f1e0140a3b64496c7582a9131660950aacab0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:508d17a2e7c004c1c950e2f7b87591d2bfb7e5e339f7550dd1272a026bfaef47",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant5d7907353e4db1dacf0ed9efb99f1e0140a3b64496c7582a9131660950aacab0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f7ca280-5642-32a2-94e0-dad6aefd5542`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 912–921.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasFPowerSeriesWithinAtHasStrictFDerivWithinAt.Variant43b90cd03bb0e8fd768020031946fcde89224788f57c5eef966ea9c8c35bb057.HasFDerivAt.linear_multilinear_comp [DecidableEq ι] {a : H → E} {a' : H →L[𝕜] E}
    {b : ∀ i, H → G i} {b' : ∀ i, H →L[𝕜] G i} {x : H}
    (ha : HasFDerivAt a a' x) (hb : ∀ i, HasFDerivAt (b i) (b' i) x)
    (f : E →L[𝕜] ContinuousMultilinearMap 𝕜 G F) :
    HasFDerivAt (fun y ↦ f (a y) (fun i ↦ b i y))
      ((f.flipMultilinear (fun i ↦ b i x)) ∘L a' +
        ∑ i, ((f (a x)).toContinuousLinearMap (fun j ↦ b j x) i) ∘L (b' i)) x :=
  (f.hasFDerivAt.comp x ha).continuousMultilinearMap_apply hb

end ContinuousLinearMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant5d7907353e4db1dacf0ed9efb99f1e0140a3b64496c7582a9131660950aacab0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Analytic/Variant5d7907353e4db1dacf0ed9efb99f1e0140a3b64496c7582a9131660950aacab0.lean#L912).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2a1b62436fc49c1e81f0064db010828b4774ac6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
