# eGen_expand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d233844ceff2b99cb3dff48e4a49b6c3e2b3fb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:733e6937-3de1-21fb-9788-4a236ad726c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78d28abb-ccfb-b40b-44f8-7be79a19919c",
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
  "slug": "egen-expand--68af1cc68e2fe8a842bd0085",
  "source": {
    "blob": "1d233844ceff2b99cb3dff48e4a49b6c3e2b3fb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68af1cc68e2fe8a842bd008595fce6293edd357304c58f504d84f343e598e9ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78d28abb-ccfb-b40b-44f8-7be79a19919c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–152.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantd58666cb449a55d63442cf78766bdaa96f0592a9952153fb269af04f1bbba395.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d233844ceff2b99cb3dff48e4a49b6c3e2b3fb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
