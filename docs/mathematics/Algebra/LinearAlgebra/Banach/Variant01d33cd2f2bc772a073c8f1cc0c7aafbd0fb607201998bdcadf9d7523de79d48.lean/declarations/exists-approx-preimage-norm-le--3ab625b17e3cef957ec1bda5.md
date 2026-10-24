# exists_approx_preimage_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f368320f-83bc-60e6-9b2c-e9f418b8f866",
  "kind": "theorem",
  "lexical_name": "exists_approx_preimage_norm_le",
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
  "slug": "exists-approx-preimage-norm-le--3ab625b17e3cef957ec1bda5",
  "source": {
    "blob": "c1520c5c00879c9132d0a3640584d3f47428f3aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 91,
    "path": "GRWTSK/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ab625b17e3cef957ec1bda505ab2ceae5d41f5aaf7c16b20cc8e41e7e7c0b39",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f368320f-83bc-60e6-9b2c-e9f418b8f866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_approx_preimage_norm_le (surj : Surjective f) :
    ∃ C ≥ 0, ∀ y, ∃ x, dist (f x) y ≤ 1 / 2 * ‖y‖ ∧ ‖x‖ ≤ C * ‖y‖ := by
  have A : ⋃ n : ℕ, closure (f '' ball 0 n) = Set.univ := by
    refine' Subset.antisymm (subset_univ _) fun y _ => _
    rcases surj y with ⟨x, hx⟩
    rcases exists_nat_gt ‖x‖ with ⟨n, hn⟩
    refine' mem_iUnion.2 ⟨n, subset_closure _⟩
    refine' (mem_image _ _ _).2 ⟨x, ⟨_, hx⟩⟩
    rwa [mem_ball, dist_eq_norm, sub_zero]
  have : ∃ (n : ℕ) (x : _), x ∈ interior (closure (f '' ball 0 n)) :=
    nonempty_interior_of_iUnion_of_closed (fun n => isClosed_closure) A
  simp only [mem_interior_iff_mem_nhds, Metric.mem_nhds_iff] at this
  rcases this with ⟨n, a, ε, ⟨εpos, H⟩⟩
  rcases NormedField.exists_one_lt_norm 𝕜 with ⟨c, hc⟩
  refine' ⟨(ε / 2)⁻¹ * ‖c‖ * 2 * n, _, fun y => _⟩
  · refine' mul_nonneg (mul_nonneg (mul_nonneg _ (norm_nonneg _)) (by norm_num)) _
    exacts [inv_nonneg.2 (div_nonneg (le_of_lt εpos) (by norm_num)), n.cast_nonneg]
  · by_cases hy : y = 0
    · use 0
      simp [hy]
    · rcases rescale_to_shell hc (half_pos εpos) hy with ⟨d, hd, ydlt, -, dinv⟩
      let δ := ‖d‖ * ‖y‖ / 4
      have δpos : 0 < δ := div_pos (mul_pos (norm_pos_iff.2 hd) (norm_pos_iff.2 hy)) (by norm_num)
      have : a + d • y ∈ ball a ε := by
        simp [dist_eq_norm, lt_of_le_of_lt ydlt.le (half_lt_self εpos)]
      rcases Metric.mem_closure_iff.1 (H this) _ δpos with ⟨z₁, z₁im, h₁⟩
      rcases(mem_image _ _ _).1 z₁im with ⟨x₁, hx₁, xz₁⟩
      rw [← xz₁] at h₁
      rw [mem_ball, dist_eq_norm, sub_zero] at hx₁
      have : a ∈ ball a ε := by
        simp
        exact εpos
      rcases Metric.mem_closure_iff.1 (H this) _ δpos with ⟨z₂, z₂im, h₂⟩
      rcases(mem_image _ _ _).1 z₂im with ⟨x₂, hx₂, xz₂⟩
      rw [← xz₂] at h₂
      rw [mem_ball, dist_eq_norm, sub_zero] at hx₂
      let x := x₁ - x₂
      have I : ‖f x - d • y‖ ≤ 2 * δ :=
        calc
          ‖f x - d • y‖ = ‖f x₁ - (a + d • y) - (f x₂ - a)‖ := by
            congr 1
            simp only [f.map_sub]
            abel
          _ ≤ ‖f x₁ - (a + d • y)‖ + ‖f x₂ - a‖ := (norm_sub_le _ _)
          _ ≤ δ + δ := by
            apply add_le_add
            · rw [← dist_eq_norm, dist_comm]
              exact le_of_lt h₁
            · rw [← dist_eq_norm, dist_comm]
              exact le_of_lt h₂
          _ = 2 * δ := (two_mul _).symm
      have J : ‖f (d⁻¹ • x) - y‖ ≤ 1 / 2 * ‖y‖ :=
        calc
          ‖f (d⁻¹ • x) - y‖ = ‖d⁻¹ • f x - (d⁻¹ * d) • y‖ := by
            rwa [f.map_smul _, inv_mul_cancel, one_smul]
          _ = ‖d⁻¹ • (f x - d • y)‖ := by rw [mul_smul, smul_sub]
          _ = ‖d‖⁻¹ * ‖f x - d • y‖ := by rw [norm_smul, norm_inv]
          _ ≤ ‖d‖⁻¹ * (2 * δ) := by
            apply mul_le_mul_of_nonneg_left I
            rw [inv_nonneg]
            exact norm_nonneg _
          _ = ‖d‖⁻¹ * ‖d‖ * ‖y‖ / 2 := by
            simp only
            ring
          _ = ‖y‖ / 2 := by
            rw [inv_mul_cancel, one_mul]
            simp [norm_eq_zero, hd]
          _ = 1 / 2 * ‖y‖ := by ring
      rw [← dist_eq_norm] at J
      have K : ‖d⁻¹ • x‖ ≤ (ε / 2)⁻¹ * ‖c‖ * 2 * ↑n * ‖y‖ :=
        calc
          ‖d⁻¹ • x‖ = ‖d‖⁻¹ * ‖x₁ - x₂‖ := by rw [norm_smul, norm_inv]
          _ ≤ (ε / 2)⁻¹ * ‖c‖ * ‖y‖ * (n + n) := by
            refine' mul_le_mul dinv _ (norm_nonneg _) _
            · exact le_trans (norm_sub_le _ _) (add_le_add (le_of_lt hx₁) (le_of_lt hx₂))
            · apply mul_nonneg (mul_nonneg _ (norm_nonneg _)) (norm_nonneg _)
              exact inv_nonneg.2 (le_of_lt (half_pos εpos))
          _ = (ε / 2)⁻¹ * ‖c‖ * 2 * ↑n * ‖y‖ := by ring

      exact ⟨d⁻¹ • x, J, K⟩
#align continuous_linear_map.exists_approx_preimage_norm_le ContinuousLinearMap.exists_approx_preimage_norm_le

variable [CompleteSpace E]

/-- The Banach open mapping theorem: if a bounded linear map between Banach spaces is onto, then
any point has a preimage with controlled norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Banach/Variant01d33cd2f2bc772a073c8f1cc0c7aafbd0fb607201998bdcadf9d7523de79d48.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1520c5c00879c9132d0a3640584d3f47428f3aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
