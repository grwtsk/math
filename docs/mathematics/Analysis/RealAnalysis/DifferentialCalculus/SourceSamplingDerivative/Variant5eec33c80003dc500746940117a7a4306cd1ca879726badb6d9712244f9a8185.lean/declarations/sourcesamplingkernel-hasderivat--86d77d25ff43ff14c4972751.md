# sourceSamplingKernel_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "481d78760420536b7748be1f141734ada93d4498",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5eec33c80003dc500746940117a7a4306cd1ca879726badb6d9712244f9a8185.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94ff5f0e-6b55-b992-0975-b6629f917480",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca689d4e-18b0-7217-3f01-5158cca5a471",
  "kind": "theorem",
  "lexical_name": "sourceSamplingKernel_hasDerivAt",
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
  "slug": "sourcesamplingkernel-hasderivat--86d77d25ff43ff14c4972751",
  "source": {
    "blob": "481d78760420536b7748be1f141734ada93d4498",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant5eec33c80003dc500746940117a7a4306cd1ca879726badb6d9712244f9a8185.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86d77d25ff43ff14c497275129ff9bcec9ea27eedc537b968fbce85f43657578",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant5eec33c80003dc500746940117a7a4306cd1ca879726badb6d9712244f9a8185.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca689d4e-18b0-7217-3f01-5158cca5a471`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceSamplingKernel_hasDerivAt (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (sourceSamplingKernel A)
      (1 / x * ∑ k ∈ samplingIndices A x,
        Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
          correlationDifference A (Real.log (x * (k : ℝ)))) x := by
  let N : ℕ := ⌊2 * Real.exp (2 * A) / x⌋₊ + 1
  have hN (y : ℝ) (hy : x / 2 < y) : Real.exp (2 * A) / y ≤ (N : ℝ) := by
    have hy0 : 0 < y := by linarith
    have hquot : Real.exp (2 * A) / y < 2 * Real.exp (2 * A) / x := by
      apply (div_lt_div_iff₀ hy0 hx).mpr
      nlinarith [Real.exp_pos (2 * A)]
    have hf := Nat.lt_floor_add_one (2 * Real.exp (2 * A) / x)
    exact (hquot.trans (by simpa only [N, Nat.cast_add, Nat.cast_one] using hf)).le
  have heq : sourceSamplingKernel A =ᶠ[𝓝 x]
      (fun y ↦ ∑ k ∈ Finset.Icc 1 N, Real.log (k : ℝ) / Real.sqrt (y * (k : ℝ)) *
        sourceCorrelation explicitSecondDerivative A (Real.log (y * (k : ℝ)))) := by
    filter_upwards [eventually_gt_nhds (show x / 2 < x by linarith)] with y hy
    exact kernel_eq_fixed_sum A y N hA (by linarith) (hN y hy)
  have hd := HasDerivAt.fun_sum (u := Finset.Icc 1 N) (fun k hk ↦
    sampling_term_hasDerivAt A x k hA hx
      (by exact_mod_cast (show 0 < k by have := (Finset.mem_Icc.mp hk).1; omega)))
  have hfixed := hd.congr_of_eventuallyEq heq
  rw [← Finset.mul_sum, ← difference_sum_eq_fixed_sum A x N hA hx
    (hN x (by linarith))] at hfixed
  exact hfixed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant5eec33c80003dc500746940117a7a4306cd1ca879726badb6d9712244f9a8185.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSamplingDerivative/Variant5eec33c80003dc500746940117a7a4306cd1ca879726badb6d9712244f9a8185.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `481d78760420536b7748be1f141734ada93d4498` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
