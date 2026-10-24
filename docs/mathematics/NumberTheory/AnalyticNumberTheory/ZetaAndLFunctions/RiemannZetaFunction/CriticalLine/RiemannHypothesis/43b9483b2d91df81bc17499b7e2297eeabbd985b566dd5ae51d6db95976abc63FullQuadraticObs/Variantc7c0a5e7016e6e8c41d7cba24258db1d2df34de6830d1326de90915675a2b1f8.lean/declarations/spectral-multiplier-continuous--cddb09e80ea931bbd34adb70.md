# spectral_multiplier_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a757ebbe-6d5b-9cdf-8fb7-c9887a6dcd4d",
  "kind": "theorem",
  "lexical_name": "spectral_multiplier_continuous",
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
  "slug": "spectral-multiplier-continuous--cddb09e80ea931bbd34adb70",
  "source": {
    "blob": "47689fea780a20fa04b1153a1b38fa6b94034f25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 105,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs/Variantc7c0a5e7016e6e8c41d7cba24258db1d2df34de6830d1326de90915675a2b1f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cddb09e80ea931bbd34adb70d724afcad08627c9e128f82d8f65bbdf822972fe",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs/Variantc7c0a5e7016e6e8c41d7cba24258db1d2df34de6830d1326de90915675a2b1f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a757ebbe-6d5b-9cdf-8fb7-c9887a6dcd4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectral_multiplier_continuous (A : ℝ) : Continuous (spectralMultiplier A) := by
  unfold spectralMultiplier cosineMultiplier
  apply AdmissionDirect.actual_multiplier_continuous.add
  exact continuous_const.mul (continuous_finsetSum _ fun n _ ↦
    continuous_const.mul (Real.continuous_cos.comp
      (continuous_id.mul continuous_const)))

/-- The complete multiplier has arbitrarily negative zero-frequency values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs/Variantc7c0a5e7016e6e8c41d7cba24258db1d2df34de6830d1326de90915675a2b1f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs/Variantc7c0a5e7016e6e8c41d7cba24258db1d2df34de6830d1326de90915675a2b1f8.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47689fea780a20fa04b1153a1b38fa6b94034f25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
