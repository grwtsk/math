# sourceSamplingKernel_derivative_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b99f91ce-4a4e-b102-b7e6-fc8e666157e3",
  "kind": "theorem",
  "lexical_name": "sourceSamplingKernel_derivative_hasDerivAt",
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
  "slug": "sourcesamplingkernel-derivative-hasderivat--102ac1e35dc67ed7903bc207",
  "source": {
    "blob": "284769d36036617eb160abc852328382730410cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:102ac1e35dc67ed7903bc20770733bea8f75c53280aa755e6be24719d9239725",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b99f91ce-4a4e-b102-b7e6-fc8e666157e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceSamplingKernel_derivative_hasDerivAt (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (deriv (sourceSamplingKernel A))
      (1 / x ^ 2 * ∑ k ∈ samplingIndices A x,
        Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
          secondDifference A (Real.log (x * (k : ℝ)))) x := by
  let N : ℕ := ⌊2 * Real.exp (2 * A) / x⌋₊ + 1
  have hN (y : ℝ) (hy : x / 2 < y) : Real.exp (2 * A) / y ≤ (N : ℝ) := by
    have hy0 : 0 < y := by linarith
    have hquot : Real.exp (2 * A) / y < 2 * Real.exp (2 * A) / x := by
      apply (div_lt_div_iff₀ hy0 hx).mpr
      nlinarith [Real.exp_pos (2 * A)]
    have hf := Nat.lt_floor_add_one (2 * Real.exp (2 * A) / x)
    exact (hquot.trans (by simpa only [N, Nat.cast_add, Nat.cast_one] using hf)).le
  have heq : deriv (sourceSamplingKernel A) =ᶠ[𝓝 x]
      (fun y ↦ ∑ k ∈ Finset.Icc 1 N, 1 / y * (Real.log (k : ℝ) /
        Real.sqrt (y * (k : ℝ)) * correlationDifference A (Real.log (y * (k : ℝ))))) := by
    filter_upwards [eventually_gt_nhds (show x / 2 < x by linarith)] with y hy
    rw [sourceSamplingKernel_deriv A y hA (by linarith),
      difference_sum_eq_fixed_sum A y N hA (by linarith) (hN y hy), Finset.mul_sum]
  have hd := HasDerivAt.fun_sum (u := Finset.Icc 1 N) (fun k hk ↦
    derivative_sampling_term_hasDerivAt A x k hA hx
      (by exact_mod_cast (show 0 < k by have := (Finset.mem_Icc.mp hk).1; omega)))
  have hfixed := hd.congr_of_eventuallyEq heq
  rw [← Finset.mul_sum, ← second_difference_sum_eq_fixed_sum A x N hA hx
    (hN x (by linarith))] at hfixed
  exact hfixed

/-- Compact C¹ integration by parts transports the literal second exponential moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `284769d36036617eb160abc852328382730410cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
