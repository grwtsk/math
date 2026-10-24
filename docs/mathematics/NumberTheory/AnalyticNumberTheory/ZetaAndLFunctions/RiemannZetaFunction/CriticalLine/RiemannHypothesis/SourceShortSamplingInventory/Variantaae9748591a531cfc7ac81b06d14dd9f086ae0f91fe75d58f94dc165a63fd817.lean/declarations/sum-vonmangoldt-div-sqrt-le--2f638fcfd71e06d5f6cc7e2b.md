# sum_vonMangoldt_div_sqrt_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f61c14513fd27af629b5eb5743bc018a120fd7fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aae9748591a531cfc7ac81b06d14dd9f086ae0f91fe75d58f94dc165a63fd817.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69d83da8-52f7-40fd-921b-1dab88f6c3d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e2ebf10-44c5-4ea0-d118-4e7865745ba0",
  "kind": "theorem",
  "lexical_name": "sum_vonMangoldt_div_sqrt_le",
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
  "slug": "sum-vonmangoldt-div-sqrt-le--2f638fcfd71e06d5f6cc7e2b",
  "source": {
    "blob": "f61c14513fd27af629b5eb5743bc018a120fd7fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceShortSamplingInventory/Variantaae9748591a531cfc7ac81b06d14dd9f086ae0f91fe75d58f94dc165a63fd817.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f638fcfd71e06d5f6cc7e2b855395f26f44ffdd717ddeadcf6d20e34a25e76d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceShortSamplingInventory/Variantaae9748591a531cfc7ac81b06d14dd9f086ae0f91fe75d58f94dc165a63fd817.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e2ebf10-44c5-4ea0-d118-4e7865745ba0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_vonMangoldt_div_sqrt_le (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, vonMangoldt n / Real.sqrt n) ≤
      2 * (Real.log 4 + 4) * Real.sqrt N := by
  let K := Real.log 4 + 4
  let f : ℕ → ℝ := fun n ↦ 1 / Real.sqrt (n+1 : ℕ)
  let g : ℕ → ℝ := fun n ↦ vonMangoldt (n+1) - K
  have hp (j : ℕ) : (∑ n ∈ Finset.range j, g n) ≤ 0 := by
    dsimp only [g]
    rw [Finset.sum_sub_distrib, range_succ_sum]
    simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
    have h := Chebyshev.psi_le_const_mul_self (x := (j : ℝ)) (Nat.cast_nonneg j)
    have hset : Finset.Ioc 0 j = Finset.Icc 1 j := by ext n; simp; omega
    simp only [Chebyshev.psi, Nat.floor_natCast, hset] at h
    dsimp [K]
    linarith
  have hf (n : ℕ) : 0 ≤ f n := by dsimp [f]; positivity
  have ha (n : ℕ) : f (n+1) ≤ f n := by
    dsimp [f]
    apply one_div_le_one_div_of_le (by positivity)
    apply Real.sqrt_le_sqrt
    push_cast
    linarith
  have hparts := Finset.sum_range_by_parts f g N
  simp only [smul_eq_mul] at hparts
  have hb := mul_nonpos_of_nonneg_of_nonpos (hf (N-1)) (hp N)
  have hs : 0 ≤ ∑ n ∈ Finset.range (N-1), (f (n+1)-f n) * ∑ i ∈ Finset.range (n+1), g i := by
    exact Finset.sum_nonneg (fun n _ ↦ mul_nonneg_of_nonpos_of_nonpos
      (sub_nonpos.mpr (ha n)) (hp (n+1)))
  have hw : (∑ n ∈ Finset.range N, f n * g n) ≤ 0 := by linarith
  have he : (∑ n ∈ Finset.range N, f n * g n) =
      (∑ n ∈ Finset.Icc 1 N, vonMangoldt n / Real.sqrt n) -
      K * ∑ n ∈ Finset.Icc 1 N, 1 / Real.sqrt n := by
    dsimp [f,g]
    simp_rw [mul_sub, one_div, mul_comm (Real.sqrt _ )⁻¹]
    rw [Finset.sum_sub_distrib, ← Finset.mul_sum]
    simp only [← div_eq_mul_inv]
    rw [range_succ_sum (fun n ↦ vonMangoldt n / Real.sqrt n),
      range_succ_sum (fun n ↦ (Real.sqrt (n : ℝ))⁻¹)]
  rw [he] at hw
  have hk : 0 ≤ K := by dsimp [K]; positivity
  have hsum := mul_le_mul_of_nonneg_left (sum_reciprocal_sqrt_le N) hk
  dsimp [K] at hw hsum
  nlinarith


/-- The actual signed logarithmic inventory with a supplied finite sampling main term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceShortSamplingInventory/Variantaae9748591a531cfc7ac81b06d14dd9f086ae0f91fe75d58f94dc165a63fd817.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceShortSamplingInventory/Variantaae9748591a531cfc7ac81b06d14dd9f086ae0f91fe75d58f94dc165a63fd817.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f61c14513fd27af629b5eb5743bc018a120fd7fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
