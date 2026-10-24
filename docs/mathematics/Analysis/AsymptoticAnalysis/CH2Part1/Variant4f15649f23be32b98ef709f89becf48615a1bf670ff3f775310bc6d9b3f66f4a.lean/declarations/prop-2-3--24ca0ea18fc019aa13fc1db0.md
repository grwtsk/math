# prop_2_3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4a7946c-f2f9-4af3-5a87-ef9273e9a921",
  "kind": "theorem",
  "lexical_name": "prop_2_3",
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
  "slug": "prop-2-3--24ca0ea18fc019aa13fc1db0",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 672,
    "line": 637,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24ca0ea18fc019aa13fc1db01d5ee78f959733a4aa031a7a65cceae68ac62a6f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4a7946c-f2f9-4af3-5a87-ef9273e9a921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 637–672.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_2_3 {a : ℕ → ℂ} {T β : ℝ} (hT : 0 < T) (hβ : 1 < β)
    (ha : Summable (fun n : ℕ ↦ ‖a n‖ / (n * log n ^ β)))
    {G : ℂ → ℂ} (hG : ContinuousOn G { z | z.re ≥ 1 ∧ z.im ∈ Set.Icc (-T) T })
    (hG' : Set.EqOn G (fun s ↦ ∑' n, a n / n ^ s - 1 / (s - 1)) { z | z.re > 1 })
    {φ : ℝ → ℂ} (hφ_mes : Measurable φ) (hφ_int : Integrable φ)
    (hφ_cont : ContinuousAt φ 0)
    (hφ_supp : ∀ x, x ∉ Set.Icc (-1) 1 → φ x = 0)
    (hφ_Fourier : ∃ C : ℝ, ∀ y : ℝ, y ≠ 0 → ‖𝓕 φ y‖ ≤ C / |y| ^ β)
    (x : ℝ) (hx : 0 < x) :
    (1 / (2 * π)) * ∑' (n : ℕ+), a n * (x / n) * 𝓕 φ ((T / (2 * π)) * log (n / x)) =
      (1 / (2 * π * T)) *
        (∫ t in Set.Icc (-T) T, φ (t/T) * G (1 + t * I) * x ^ (1 + t * I)) +
      (φ 0 - ∫ y in Set.Iic (-T * log x / (2 * π)), 𝓕 φ y) * (x / T) := by
  have h_LHS_eq_RHS : (fun (sig : ℝ) ↦ (1 / (2 * π)) * ∑' (n : ℕ), (x : ℂ) * LSeries.term a sig n * 𝓕 φ ((T / (2 * π)) * log (n / x))) =ᶠ[nhdsWithin 1 (Set.Ioi 1)]
      (fun (sig : ℝ) ↦ (1 / (2 * π * T)) * (∫ t in Set.Icc (-T) T, φ (t / T) * G (sig + t * I) * x ^ (1 + t * I)) +
      ((x ^ (2 - sig) / (2 * π * T) : ℝ) : ℂ) * (∫ u in Set.Ici (-log x), Real.exp (-u * (sig - 1)) * 𝓕 (fun t : ℝ ↦ φ (t / T)) (u / (2 * π)))) := by
    filter_upwards [self_mem_nhdsWithin] with sig hsig
    refine prop_2_3_1 hT hβ ha ?_ hφ_mes hφ_int hφ_supp hφ_Fourier x sig hx hsig
    intro s hs; rw [hG' hs]; dsimp; congr 1; unfold LSeries; apply tsum_congr; intro n
    unfold LSeries.term; split_ifs with hn
    · subst hn; simp only [CharP.cast_eq_zero, div_eq_zero_iff, cpow_eq_zero_iff, ne_eq, true_and]
      apply Or.inr; intro h; subst h; simp at hs; linarith
    · rfl
  have h_LHS_tendsto := prop_2_3_tendsto_dirichlet_sum hT hβ ha hφ_Fourier x hx
  have h_RHS_first_tendsto := prop_2_3_tendsto_G_integral hT hG hφ_mes hφ_int hφ_supp x hx
  have h_RHS_second_tendsto := prop_2_3_tendsto_polar_residual hT hβ hφ_int hφ_cont hφ_Fourier x hx
  have h_RHS_tendsto := Filter.Tendsto.add h_RHS_first_tendsto h_RHS_second_tendsto
  exact tendsto_nhds_unique h_LHS_tendsto (h_RHS_tendsto.congr' h_LHS_eq_RHS.symm)


@[blueprint
  "ch2-S-def"
  (title := "CH2 Definition of $S$, (2.8)")
  (statement := /--
  $S_\sigma(x)$ is equal to $\sum_{n \leq x} a_n / n^\sigma$ if $\sigma < 1$ and $\sum_{n \geq x} a_n / n^\sigma$ if $\sigma > 1$.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L637).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
