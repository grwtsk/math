# HasFTaylorSeriesUpToOn.hasStrictFDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ee4e4a1-6e08-a74b-5504-50570d5170a4",
  "kind": "theorem",
  "lexical_name": "HasFTaylorSeriesUpToOn.hasStrictFDerivAt",
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
  "slug": "hasftaylorseriesuptoon-hasstrictfderivat--e974ce2d5cc91ec2445888e7",
  "source": {
    "blob": "553658f7834248a1aec4dc8b24f9ab14e095928f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1973,
    "line": 1965,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e974ce2d5cc91ec2445888e7acdadaaf1e656016c1e00926b1255ccacd2bcb07",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ee4e4a1-6e08-a74b-5504-50570d5170a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1965–1973.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFTaylorSeriesUpToOn.hasStrictFDerivAt {s : Set E'} {f : E' → F'} {x : E'}
    {p : E' → FormalMultilinearSeries 𝕂 E' F'} (hf : HasFTaylorSeriesUpToOn n f p s) (hn : 1 ≤ n)
    (hs : s ∈ 𝓝 x) : HasStrictFDerivAt f ((continuousMultilinearCurryFin1 𝕂 E' F') (p x 1)) x :=
  hasStrictFDerivAt_of_hasFDerivAt_of_continuousAt (hf.eventually_hasFDerivAt hn hs) <|
    (continuousMultilinearCurryFin1 𝕂 E' F').continuousAt.comp <| (hf.cont 1 hn).continuousAt hs
#align has_ftaylor_series_up_to_on.has_strict_fderiv_at HasFTaylorSeriesUpToOn.hasStrictFDerivAt

/-- If a function is `C^n` with `1 ≤ n` around a point, and its derivative at that point is given to
us as `f'`, then `f'` is also a strict derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean#L1965).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `553658f7834248a1aec4dc8b24f9ab14e095928f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
