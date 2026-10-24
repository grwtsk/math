# continuousHalfScaleDerivative_flux_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b19927d8-6f5a-6ba0-bf3a-8d4aa84bd4fe",
  "kind": "theorem",
  "lexical_name": "continuousHalfScaleDerivative_flux_nonpos",
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
  "slug": "continuoushalfscalederivative-flux-nonpos--954a71b2cff9fd8da19e25ce",
  "source": {
    "blob": "4729ecd4348e8d61a0eca1f909e9971938297b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 228,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FluxTargetV1Prebytes/Variant2d21ae1d2e3c4931a25ecb4d23e3ecd1928360238fe06073dd90b30e1d32da2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:954a71b2cff9fd8da19e25ceea063285e3e4c0b1ac78472a8573fca02616eb00",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FluxTargetV1Prebytes/Variant2d21ae1d2e3c4931a25ecb4d23e3ecd1928360238fe06073dd90b30e1d32da2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b19927d8-6f5a-6ba0-bf3a-8d4aa84bd4fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousHalfScaleDerivative_flux_nonpos {a b : ℝ}
    (ha : 1 < a) (hab : a ≤ b) :
    (∫ A in a..b, continuousHalfScaleDerivative A) ≤ 0 := by
  have hn : 0 ≤ ∫ A in a..b, -continuousHalfScaleDerivative A := by
    apply intervalIntegral.integral_nonneg hab
    intro A hA
    have hp : 0 < A := (by linarith : 0 < a).trans_le (mem_Icc.mp hA).1
    exact neg_nonneg.mpr (continuousHalfScaleDerivative_lt_zero hp).le
  rw [intervalIntegral.integral_neg] at hn
  exact neg_nonneg.mp hn

/-- Source-only storage has a bounded negative flux; this does not bound the arithmetic flux. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FluxTargetV1Prebytes/Variant2d21ae1d2e3c4931a25ecb4d23e3ecd1928360238fe06073dd90b30e1d32da2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FluxTargetV1Prebytes/Variant2d21ae1d2e3c4931a25ecb4d23e3ecd1928360238fe06073dd90b30e1d32da2f.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4729ecd4348e8d61a0eca1f909e9971938297b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
