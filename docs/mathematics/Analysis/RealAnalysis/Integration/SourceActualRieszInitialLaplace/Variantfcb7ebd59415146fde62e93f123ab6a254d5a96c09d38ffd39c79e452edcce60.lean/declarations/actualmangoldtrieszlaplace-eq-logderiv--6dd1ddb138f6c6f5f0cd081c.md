# actualMangoldtRieszLaplace_eq_logDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8691849b-d36b-ef17-8e30-fab018193dea",
  "kind": "theorem",
  "lexical_name": "actualMangoldtRieszLaplace_eq_logDeriv",
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
  "slug": "actualmangoldtrieszlaplace-eq-logderiv--6dd1ddb138f6c6f5f0cd081c",
  "source": {
    "blob": "6b13e3d0911482e29c3e8c7ed068d6479621d869",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 498,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dd1ddb138f6c6f5f0cd081cff4d0416f67346f709dec25cfd6806b6dbf5cdb8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8691849b-d36b-ef17-8e30-fab018193dea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMangoldtRieszLaplace_eq_logDeriv {z : ℂ} (hz : 1 / 2 < z.re) :
    actualMangoldtRieszLaplace z =
      (-logDeriv riemannZeta (z + 1 / 2) - 1 / (z - 1 / 2)) / z^2 := by
  have hs : 1 < (z + 1 / 2).re := by simp only [add_re]; norm_num; linarith
  rw [actualMangoldtRieszLaplace_eq_LSeries hz,
    ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hs,
    logDeriv_apply]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

end FormalResearch.RiemannHypothesis.SourceActualRieszInitialLaplace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplace/Variantfcb7ebd59415146fde62e93f123ab6a254d5a96c09d38ffd39c79e452edcce60.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b13e3d0911482e29c3e8c7ed068d6479621d869` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
