# eventually_atTop_nonneg_or_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a1922aa8af6afec1530ec0d7f0a2b0be7489fe5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22409d0e-1683-a186-e384-558d66bcf81a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d49934e-5d4b-3731-5b2c-290eaa52350f",
  "kind": "lemma",
  "lexical_name": "eventually_atTop_nonneg_or_nonpos",
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
  "slug": "eventually-attop-nonneg-or-nonpos--8e66c6e36883adca83db4582",
  "source": {
    "blob": "9a1922aa8af6afec1530ec0d7f0a2b0be7489fe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 153,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e66c6e36883adca83db4582fbb2f4cb2e5b00c4f4905fe9a79d9284b11d1c8d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d49934e-5d4b-3731-5b2c-290eaa52350f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_atTop_nonneg_or_nonpos (hf : GrowsPolynomially f) :
    (∀ᶠ x in atTop, 0 ≤ f x) ∨ (∀ᶠ x in atTop, f x ≤ 0) := by
  obtain ⟨c₁, _, c₂, _, h⟩ := hf (1/2) (by norm_num)
  match lt_trichotomy c₁ c₂ with
  | .inl hlt => -- c₁ < c₂
    left
    filter_upwards [h, eventually_ge_atTop 0] with x hx hx_nonneg
    have h' : 3 / 4 * x ∈ Set.Icc (1 / 2 * x) x := by
      rw [Set.mem_Icc]
      exact ⟨by gcongr ?_ * x; norm_num, by linarith⟩
    have hu := hx (3/4 * x) h'
    have hu := Set.nonempty_of_mem hu
    rw [Set.nonempty_Icc] at hu
    have hu' : 0 ≤ (c₂ - c₁) * f x := by linarith
    exact nonneg_of_mul_nonneg_right hu' (by linarith)
  | .inr (.inr hgt) => -- c₂ < c₁
    right
    filter_upwards [h, eventually_ge_atTop 0] with x hx hx_nonneg
    have h' : 3 / 4 * x ∈ Set.Icc (1 / 2 * x) x := by
      rw [Set.mem_Icc]
      exact ⟨by gcongr ?_ * x; norm_num, by linarith⟩
    have hu := hx (3/4 * x) h'
    have hu := Set.nonempty_of_mem hu
    rw [Set.nonempty_Icc] at hu
    have hu' : (c₁ - c₂) * f x ≤ 0 := by linarith
    exact nonpos_of_mul_nonpos_right hu' (by linarith)
  | .inr (.inl heq) => -- c₁ = c₂
    have hmain : ∃ c, ∀ᶠ x in atTop, f x = c := by
      simp only [heq, Set.Icc_self, Set.mem_singleton_iff, one_mul] at h
      rw [eventually_atTop] at h
      obtain ⟨n₀, hn₀⟩ := h
      refine ⟨f (max n₀ 2), ?_⟩
      rw [eventually_atTop]
      refine ⟨max n₀ 2, ?_⟩
      refine Real.induction_Ico_mul _ 2 (by norm_num) (by positivity) ?base ?step
      case base =>
        intro x ⟨hxlb, hxub⟩
        have h₁ := calc n₀ ≤ 1 * max n₀ 2 := by simp
                        _ ≤ 2 * max n₀ 2 := by gcongr; norm_num
        have h₂ := hn₀ (2 * max n₀ 2) h₁ (max n₀ 2) ⟨by simp [hxlb], by linarith⟩
        rw [h₂]
        exact hn₀ (2 * max n₀ 2) h₁ x ⟨by simp [hxlb], le_of_lt hxub⟩
      case step =>
        intro n hn hyp_ind z hz
        have z_nonneg : 0 ≤ z := by
          calc (0 : ℝ) ≤ (2 : ℝ)^n * max n₀ 2 := by
                        exact mul_nonneg (pow_nonneg (by norm_num) _) (by norm_num)
                  _ ≤ z := by exact_mod_cast hz.1
        have le_2n : max n₀ 2 ≤ (2 : ℝ)^n * max n₀ 2 := by
          nth_rewrite 1 [← one_mul (max n₀ 2)]
          gcongr
          exact one_le_pow₀ (by norm_num : (1 : ℝ) ≤ 2)
        have n₀_le_z : n₀ ≤ z := by
          calc n₀ ≤ max n₀ 2 := by simp
                _ ≤ (2 : ℝ)^n * max n₀ 2 := le_2n
                _ ≤ _ := by exact_mod_cast hz.1
        have fz_eq_c₂fz : f z = c₂ * f z := hn₀ z n₀_le_z z ⟨by linarith, le_rfl⟩
        have z_to_half_z' : f (1/2 * z) = c₂ * f z := hn₀ z n₀_le_z (1/2 * z) ⟨le_rfl, by linarith⟩
        have z_to_half_z : f (1/2 * z) = f z := by rwa [← fz_eq_c₂fz] at z_to_half_z'
        have half_z_to_base : f (1/2 * z) = f (max n₀ 2) := by
          refine hyp_ind (1/2 * z) ⟨?lb, ?ub⟩
          case lb =>
            calc max n₀ 2 ≤ ((1 : ℝ)/(2 : ℝ)) * (2 : ℝ) ^ 1 * max n₀ 2 := by simp
                        _ ≤ ((1 : ℝ)/(2 : ℝ)) * (2 : ℝ) ^ n * max n₀ 2 := by gcongr; norm_num
                        _ ≤ _ := by rw [mul_assoc]; gcongr; exact_mod_cast hz.1
          case ub =>
            have h₁ : (2 : ℝ)^n = ((1 : ℝ)/(2 : ℝ)) * (2 : ℝ)^(n+1) := by
              rw [one_div, pow_add, pow_one]
              ring
            rw [h₁, mul_assoc]
            gcongr
            exact_mod_cast hz.2
        rw [← z_to_half_z, half_z_to_base]
    obtain ⟨c, hc⟩ := hmain
    cases le_or_lt 0 c with
    | inl hpos =>
      exact Or.inl <| by filter_upwards [hc] with _ hc; simpa only [hc]
    | inr hneg =>
      right
      filter_upwards [hc] with x hc
      exact le_of_lt <| by simpa only [hc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant0dbb229ba40e590e5ea82677daea9c6f17bef395d4baf619e4302cbb2d19c9c1.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a1922aa8af6afec1530ec0d7f0a2b0be7489fe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
