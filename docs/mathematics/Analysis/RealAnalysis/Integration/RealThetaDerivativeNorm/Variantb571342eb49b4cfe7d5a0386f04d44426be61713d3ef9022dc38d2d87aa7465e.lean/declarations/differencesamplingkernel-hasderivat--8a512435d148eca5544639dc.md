# differenceSamplingKernel_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fb04bbf-3366-f754-ce48-e22a186caae7",
  "kind": "theorem",
  "lexical_name": "differenceSamplingKernel_hasDerivAt",
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
  "slug": "differencesamplingkernel-hasderivat--8a512435d148eca5544639dc",
  "source": {
    "blob": "6c2493b3f8c282529b1ff3a350e9351ce7a0bd20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 498,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantb571342eb49b4cfe7d5a0386f04d44426be61713d3ef9022dc38d2d87aa7465e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a512435d148eca5544639dc781dd64e3c4d0da4023a65cb0c7d0d139d9b953f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantb571342eb49b4cfe7d5a0386f04d44426be61713d3ef9022dc38d2d87aa7465e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fb04bbf-3366-f754-ce48-e22a186caae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differenceSamplingKernel_hasDerivAt (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (differenceSamplingKernel A)
      (1 / x * ∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
        iteratedDifference A (Real.log (x * (k : ℝ)))) x := by
  have hd := (hasDerivAt_id x).mul (sourceSamplingKernel_derivative_hasDerivAt A x hA hx)
  have he : differenceSamplingKernel A =ᶠ[𝓝 x]
      (fun y ↦ y * deriv (sourceSamplingKernel A) y) := by
    filter_upwards [eventually_gt_nhds hx] with y hy
    exact differenceSamplingKernel_eq_mul_deriv A y hA hy
  apply (hd.congr_of_eventuallyEq he).congr_deriv
  rw [sourceSamplingKernel_deriv A x hA hx]
  simp only [one_mul, id_eq, mul_sum]
  rw [← sum_add_distrib]
  apply sum_congr rfl
  intro k hk
  unfold secondDifference iteratedDifference
  field_simp
  ring


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantb571342eb49b4cfe7d5a0386f04d44426be61713d3ef9022dc38d2d87aa7465e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantb571342eb49b4cfe7d5a0386f04d44426be61713d3ef9022dc38d2d87aa7465e.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c2493b3f8c282529b1ff3a350e9351ce7a0bd20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
