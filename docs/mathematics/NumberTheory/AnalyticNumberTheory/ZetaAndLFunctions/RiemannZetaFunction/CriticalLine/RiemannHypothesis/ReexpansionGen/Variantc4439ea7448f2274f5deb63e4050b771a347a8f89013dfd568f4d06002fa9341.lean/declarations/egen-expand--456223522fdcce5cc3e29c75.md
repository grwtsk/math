# eGen_expand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e83e80dd-7257-793e-004f-284579c3dc13",
  "kind": "theorem",
  "lexical_name": "eGen_expand",
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
  "slug": "egen-expand--456223522fdcce5cc3e29c75",
  "source": {
    "blob": "c44add26a7f407e151ee79ab0dff13008593abc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:456223522fdcce5cc3e29c75aded95114b14a0d2903f8c8a8e19d11439a452b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e83e80dd-7257-793e-004f-284579c3dc13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eGen_expand (hre : ∀ T, (Lb T).re = l T / 2) {T : ℝ} (hl : 2 ≤ l T) {δ : ℝ} (hδ : δ ∈ Set.Icc (0:ℝ) (1 / 2)) (N : ℕ) :
    HasSum (fun r : ℕ => eGen Lb T (r + 1) N * (δ : ℂ) ^ (r + 1))
      (xiCoeff (Lb T + δ) N - xiCoeff (Lb T) N) := by
  set L := Lb T with hLdef
  have hl0 : 0 < l T := by linarith
  have hL0 : L ≠ 0 := base_ne_zero hre hl0
  have hLδ : L + (δ : ℂ) ≠ 0 := base_add_ne_zero hre hl0 hδ.1
  have hnormL : 1 ≤ ‖L‖ := le_trans (by linarith) (norm_base_ge hre T)
  -- the ratio
  set q : ℂ := -(δ : ℂ) / L with hq
  have hqn : ‖q‖ < 1 := by
    rw [hq, norm_div, norm_neg, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hδ.1]
    rw [div_lt_one (by linarith)]
    linarith [hδ.2]
  have h1q : (1 : ℂ) - q = (L + δ) / L := by rw [hq]; field_simp; ring
  -- per-j geometric/binomial series
  have hj : ∀ j ∈ Finset.range (Ω N),
      HasSum (fun n : ℕ => (L⁻¹) ^ (j + 1) * ((lamLogConv j N : ℝ) : ℂ)
          * ((((n + j).choose j : ℕ) : ℂ) * q ^ n))
        (((L + δ)⁻¹) ^ (j + 1) * ((lamLogConv j N : ℝ) : ℂ)) := by
    intro j _
    have h := (hasSum_choose_mul_geometric_of_norm_lt_one j hqn).mul_left
      ((L⁻¹) ^ (j + 1) * ((lamLogConv j N : ℝ) : ℂ))
    have hv : (L⁻¹) ^ (j + 1) * ((lamLogConv j N : ℝ) : ℂ) * (1 / (1 - q) ^ (j + 1))
        = ((L + δ)⁻¹) ^ (j + 1) * ((lamLogConv j N : ℝ) : ℂ) := by
      rw [h1q, div_pow, one_div, inv_div, inv_pow, inv_pow]
      field_simp
    rw [hv] at h
    exact h
  have hsum := hasSum_sum hj
  -- value of the full series: Σ_j (L+δ)^{-(j+1)} conv_j = C(N;L+δ) + Λ(N)
  have hval : ∑ j ∈ Finset.range (Ω N), ((L + δ)⁻¹) ^ (j + 1) * ((lamLogConv j N : ℝ) : ℂ)
      = xiCoeff (L + δ) N + ((Λ N : ℝ) : ℂ) := by
    unfold xiCoeff; ring
  -- drop the n = 0 block (= C(N;L) + Λ(N))
  have hshift := (hasSum_nat_add_iff' 1).mpr hsum
  simp only [Finset.sum_range_one] at hshift
  have h0 : ∑ j ∈ Finset.range (Ω N), (L⁻¹) ^ (j + 1) * ((lamLogConv j N : ℝ) : ℂ)
        * ((((0 + j).choose j : ℕ) : ℂ) * q ^ 0)
      = xiCoeff L N + ((Λ N : ℝ) : ℂ) := by
    unfold xiCoeff
    simp only [zero_add, Nat.choose_self, Nat.cast_one, pow_zero, mul_one]
    ring
  rw [hval, h0] at hshift
  have hfun : (fun n : ℕ => ∑ j ∈ Finset.range (Ω N), (L⁻¹) ^ (j + 1) * ((lamLogConv j N : ℝ) : ℂ)
        * ((((n + 1 + j).choose j : ℕ) : ℂ) * q ^ (n + 1)))
      = fun r : ℕ => eGen Lb T (r + 1) N * (δ : ℂ) ^ (r + 1) := by
    funext n
    rw [← eGen_block_eq Lb T δ N (n + 1)]
  rw [hfun] at hshift
  convert hshift using 1
  all_goals first | ring | rfl

/-! ### the pointwise majorant ‖e_r(N)‖ ≤ (2/‖L‖)^r · log N · F_{2/‖L‖}(N) -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c44add26a7f407e151ee79ab0dff13008593abc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
