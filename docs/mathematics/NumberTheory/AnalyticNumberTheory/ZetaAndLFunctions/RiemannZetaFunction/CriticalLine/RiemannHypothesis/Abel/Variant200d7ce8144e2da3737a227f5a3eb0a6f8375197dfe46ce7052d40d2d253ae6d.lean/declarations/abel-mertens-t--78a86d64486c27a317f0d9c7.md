# abel_mertens_t

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36ab3544-894f-ffc4-f887-f4c540f2be21",
  "kind": "theorem",
  "lexical_name": "abel_mertens_t",
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
  "slug": "abel-mertens-t--78a86d64486c27a317f0d9c7",
  "source": {
    "blob": "3894725686f394a5344ae96e8bcbe08eeb43dcfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78a86d64486c27a317f0d9c708f9413087b52742efac854fd370d9120a1acf42",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36ab3544-894f-ffc4-f887-f4c540f2be21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abel_mertens_t {x : ℝ} (hx : 1 ≤ x) {g g' : ℝ → ℝ}
    (hg : ∀ t ∈ Icc 1 x, HasDerivAt g (g' t) t) (hg' : ContinuousOn g' (Icc 1 x)) :
    |(∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n / n * g n) - ∫ t in (1:ℝ)..x, g t / t|
      ≤ KM * (|g x| + ∫ t in (1:ℝ)..x, |g' t|) := by
  have huIcc : uIcc 1 x = Icc 1 x := uIcc_of_le hx
  have hgc : ContinuousOn g (Icc 1 x) := fun t ht => (hg t ht).continuousAt.continuousWithinAt
  have hg'c : ContinuousOn g' (uIcc 1 x) := by rwa [huIcc]
  have hpos : ∀ t ∈ Icc (1:ℝ) x, 0 < t := fun t ht => lt_of_lt_of_le one_pos ht.1
  have hinvc : ContinuousOn (fun t : ℝ => t⁻¹) (Icc 1 x) :=
    continuousOn_inv₀.mono fun t ht => (hpos t ht).ne'
  have hlogc : ContinuousOn Real.log (Icc 1 x) := fun t ht =>
    (Real.continuousAt_log (hpos t ht).ne').continuousWithinAt
  -- (1) Abel summation
  have habel : ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n / n * g n
      = g x * Mfun x - ∫ t in (1:ℝ)..x, g' t * Mfun t := by
    have hdiff : ∀ t ∈ Icc 1 x, DifferentiableAt ℝ g t := fun t ht => (hg t ht).differentiableAt
    have hint : IntegrableOn (deriv g) (Icc 1 x) :=
      (hg'.integrableOn_Icc).congr_fun (fun t ht => ((hg t ht).deriv).symm) measurableSet_Icc
    have h := sum_mul_eq_sub_integral_mul₀ (fun n => Λ n / n) (by simp) x hdiff hint
    rw [sum_Icc_eq_sum_Ioc' (by simp)] at h
    have hL : ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n / n * g n = ∑ k ∈ Ioc 0 ⌊x⌋₊, g k * (Λ k / k) :=
      sum_congr rfl fun k _ => by ring
    rw [hL, h, intervalIntegral.integral_of_le hx]
    congr 1
    refine setIntegral_congr_fun measurableSet_Ioc fun t ht => ?_
    rw [(hg t (Ioc_subset_Icc_self ht)).deriv]
    rfl
  -- (2) integration by parts for ∫ g/t:  (g·log)′ = g′ log + g/t
  have hparts : ∫ t in (1:ℝ)..x, g t / t = g x * Real.log x - ∫ t in (1:ℝ)..x, g' t * Real.log t := by
    have hderiv : ∀ t ∈ uIcc 1 x, HasDerivAt (fun t => g t * Real.log t) (g' t * Real.log t + g t / t) t := by
      intro t ht
      rw [huIcc] at ht
      have h1 := (hg t ht).mul (Real.hasDerivAt_log (hpos t ht).ne')
      simpa [div_eq_mul_inv, Pi.mul_def] using h1
    have hint1 : IntervalIntegrable (fun t => g' t * Real.log t) volume 1 x := by
      apply ContinuousOn.intervalIntegrable; rw [huIcc]; exact hg'.mul hlogc
    have hint2 : IntervalIntegrable (fun t => g t / t) volume 1 x := by
      apply ContinuousOn.intervalIntegrable; rw [huIcc]
      simpa [div_eq_mul_inv, Pi.mul_def] using hgc.mul hinvc
    have hftc := intervalIntegral.integral_eq_sub_of_hasDerivAt hderiv (hint1.add hint2)
    rw [intervalIntegral.integral_add hint1 hint2] at hftc
    simp only [Real.log_one, mul_zero, sub_zero] at hftc
    linarith
  -- (3) integrability facts for the error integral
  have hMint : IntervalIntegrable Mfun volume 1 x := Mfun_mono.intervalIntegrable
  have hEint : IntervalIntegrable (fun t => g' t * (Mfun t - Real.log t)) volume 1 x := by
    have h1 : IntervalIntegrable (fun t => g' t * Mfun t) volume 1 x := hMint.continuousOn_mul hg'c
    have h2 : IntervalIntegrable (fun t => g' t * Real.log t) volume 1 x := by
      apply ContinuousOn.intervalIntegrable; rw [huIcc]; exact hg'.mul hlogc
    have : (fun t => g' t * (Mfun t - Real.log t)) = (fun t => g' t * Mfun t) - fun t => g' t * Real.log t := by
      funext t; simp [mul_sub]
    rw [this]; exact h1.sub h2
  have habsint : IntervalIntegrable (fun t => |g' t|) volume 1 x := by
    apply ContinuousOn.intervalIntegrable; rw [huIcc]; exact hg'.abs
  -- (4) assemble
  have hkey : (∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n / n * g n) - ∫ t in (1:ℝ)..x, g t / t
      = g x * (Mfun x - Real.log x) - ∫ t in (1:ℝ)..x, g' t * (Mfun t - Real.log t) := by
    rw [habel, hparts]
    have : ∫ t in (1:ℝ)..x, g' t * (Mfun t - Real.log t)
        = (∫ t in (1:ℝ)..x, g' t * Mfun t) - ∫ t in (1:ℝ)..x, g' t * Real.log t := by
      rw [← intervalIntegral.integral_sub (hMint.continuousOn_mul hg'c)]
      · exact intervalIntegral.integral_congr fun t _ => by ring
      · apply ContinuousOn.intervalIntegrable; rw [huIcc]; exact hg'.mul hlogc
    rw [this]; ring
  rw [hkey]
  have hb1 : |g x * (Mfun x - Real.log x)| ≤ KM * |g x| := by
    rw [abs_mul, mul_comm]
    exact mul_le_mul_of_nonneg_right (abs_Mfun_sub_log_le hx) (abs_nonneg _)
  have hb2 : |∫ t in (1:ℝ)..x, g' t * (Mfun t - Real.log t)| ≤ KM * ∫ t in (1:ℝ)..x, |g' t| := by
    calc |∫ t in (1:ℝ)..x, g' t * (Mfun t - Real.log t)|
        ≤ ∫ t in (1:ℝ)..x, |g' t * (Mfun t - Real.log t)| :=
          intervalIntegral.abs_integral_le_integral_abs hx
      _ ≤ ∫ t in (1:ℝ)..x, KM * |g' t| := by
          refine intervalIntegral.integral_mono_on hx hEint.abs (habsint.const_mul KM) fun t ht => ?_
          rw [abs_mul, mul_comm]
          exact mul_le_mul_of_nonneg_right (abs_Mfun_sub_log_le ht.1) (abs_nonneg _)
      _ = KM * ∫ t in (1:ℝ)..x, |g' t| := intervalIntegral.integral_const_mul KM _
  calc |g x * (Mfun x - Real.log x) - ∫ t in (1:ℝ)..x, g' t * (Mfun t - Real.log t)|
      ≤ |g x * (Mfun x - Real.log x)| + |∫ t in (1:ℝ)..x, g' t * (Mfun t - Real.log t)| := abs_sub _ _
    _ ≤ KM * |g x| + KM * ∫ t in (1:ℝ)..x, |g' t| := add_le_add hb1 hb2
    _ = KM * (|g x| + ∫ t in (1:ℝ)..x, |g' t|) := by ring

/-- **Mertens step, u-variable.**  For f ∈ C¹[0,y] (y ≥ 0):
  |Σ_{n ≤ e^y} (Λ(n)/n) f(log n) − ∫₀ʸ f| ≤ K (|f(y)| + ∫₀ʸ |f′|). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abel/Variant200d7ce8144e2da3737a227f5a3eb0a6f8375197dfe46ce7052d40d2d253ae6d.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3894725686f394a5344ae96e8bcbe08eeb43dcfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
