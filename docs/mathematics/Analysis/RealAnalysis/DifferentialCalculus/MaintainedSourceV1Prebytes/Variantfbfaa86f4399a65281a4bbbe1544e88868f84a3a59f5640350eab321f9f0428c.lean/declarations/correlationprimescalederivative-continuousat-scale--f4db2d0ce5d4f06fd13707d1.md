# correlationPrimeScaleDerivative_continuousAt_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff6c15f4-5833-e760-4a17-a44b33724a62",
  "kind": "theorem",
  "lexical_name": "correlationPrimeScaleDerivative_continuousAt_scale",
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
  "slug": "correlationprimescalederivative-continuousat-scale--f4db2d0ce5d4f06fd13707d1",
  "source": {
    "blob": "a98e5e40fb2ed7823816530ddd9cf4a44d711a4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 348,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MaintainedSourceV1Prebytes/Variantfbfaa86f4399a65281a4bbbe1544e88868f84a3a59f5640350eab321f9f0428c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4db2d0ce5d4f06fd13707d1f99668c98f5b38c4f9eb43cf5cb01ff2a66d796b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MaintainedSourceV1Prebytes/Variantfbfaa86f4399a65281a4bbbe1544e88868f84a3a59f5640350eab321f9f0428c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff6c15f4-5833-e760-4a17-a44b33724a62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlationPrimeScaleDerivative_continuousAt_scale {A : ℝ} (hA : 0 < A) (s : ℝ) :
    ContinuousAt (fun B => correlationPrimeScaleDerivative B s) A := by
  let L : ComplexL2 →L[ℝ] ComplexL2 :=
    (translation s).toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  have hr := spatialDerivativeState_continuousAt hA
  have hp := scaleDerivativeState_continuousAt hA
  exact (Complex.continuous_re.continuousAt.comp
    (hr.inner (L.continuous.continuousAt.comp hp))).sub
    (Complex.continuous_re.continuousAt.comp
      (hp.inner (L.continuous.continuousAt.comp hr)))

/-- Actual C_A′ is C1 in all positive scales, without any C4 bump or q_A′ scale derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MaintainedSourceV1Prebytes/Variantfbfaa86f4399a65281a4bbbe1544e88868f84a3a59f5640350eab321f9f0428c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MaintainedSourceV1Prebytes/Variantfbfaa86f4399a65281a4bbbe1544e88868f84a3a59f5640350eab321f9f0428c.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a98e5e40fb2ed7823816530ddd9cf4a44d711a4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
