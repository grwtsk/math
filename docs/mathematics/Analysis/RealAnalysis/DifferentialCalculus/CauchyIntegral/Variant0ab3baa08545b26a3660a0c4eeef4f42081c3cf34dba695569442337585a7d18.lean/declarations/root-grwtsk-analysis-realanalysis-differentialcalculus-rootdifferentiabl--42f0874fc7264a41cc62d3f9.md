# _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootDifferentiableAnalyticOnNhd.Variant7588990f3c8fa7e05afb019b64eca3d809da4436c5caec9aed0bd0cdf32ed111.Differentiable.analyticOnNhd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:405959c5-5a0c-eb13-8db7-1f31e081d68a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootDifferentiableAnalyticOnNhd.Variant7588990f3c8fa7e05afb019b64eca3d809da4436c5caec9aed0bd0cdf32ed111.Differentiable.analyticOnNhd",
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
  "slug": "root-grwtsk-analysis-realanalysis-differentialcalculus-rootdifferentiabl--42f0874fc7264a41cc62d3f9",
  "source": {
    "blob": "07d665f20a15490fd0d8bc19d8f593c077cd4a27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant0ab3baa08545b26a3660a0c4eeef4f42081c3cf34dba695569442337585a7d18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42f0874fc7264a41cc62d3f9ea32efeb910215f88ac3174f2501ad109693ddff",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant0ab3baa08545b26a3660a0c4eeef4f42081c3cf34dba695569442337585a7d18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:405959c5-5a0c-eb13-8db7-1f31e081d68a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem _root_.GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootDifferentiableAnalyticOnNhd.Variant7588990f3c8fa7e05afb019b64eca3d809da4436c5caec9aed0bd0cdf32ed111.Differentiable.analyticOnNhd {f : ℂ → E} (hf : Differentiable ℂ f) :
    AnalyticOnNhd ℂ f Set.univ :=
  fun _ _ => hf.analyticAt _
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant0ab3baa08545b26a3660a0c4eeef4f42081c3cf34dba695569442337585a7d18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CauchyIntegral/Variant0ab3baa08545b26a3660a0c4eeef4f42081c3cf34dba695569442337585a7d18.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07d665f20a15490fd0d8bc19d8f593c077cd4a27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
