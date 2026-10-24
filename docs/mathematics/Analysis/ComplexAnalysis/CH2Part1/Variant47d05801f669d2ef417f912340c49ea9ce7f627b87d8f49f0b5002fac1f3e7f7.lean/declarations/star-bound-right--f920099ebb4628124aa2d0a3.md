# ϕ_star_bound_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22a36818-7efe-1c95-27ce-8d057def346e",
  "kind": "theorem",
  "lexical_name": "ϕ_star_bound_right",
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
  "slug": "star-bound-right--f920099ebb4628124aa2d0a3",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2464,
    "line": 2399,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f920099ebb4628124aa2d0a33d495b7aa4520045c45c9ebd3dbbb76eef21e682",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22a36818-7efe-1c95-27ce-8d057def346e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2399–2464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ϕ_star_bound_right (ν₀ ν₁ ε c : ℝ) (hν₀ : 0 < ν₀) (hν₁ : ν₀ ≤ ν₁) (hc : c > -ν₀ / (2 * π)) :
    ∃ C : ℝ, ∀ ν ∈ Set.Icc ν₀ ν₁, ∀ z : ℂ, z.im ≥ c → ‖Phi_star ν ε z‖ ≤ C * (‖z‖ + 1) := by
  obtain ⟨C₁, hC₁⟩ := ϕ_circ_bound_right ν₀ ν₁ ε c hc
  obtain ⟨C₂, hC₂⟩ : ∃ C₂ : ℝ, ∀ ν ∈ Set.Icc ν₀ ν₁, ‖B ε ν‖ ≤ C₂ := by
    have hB_def : ∀ ν ∈ Set.Icc ν₀ ν₁, B ε ν =
        ν * (Complex.cosh (ν / 2) / Complex.sinh (ν / 2) + ε) / 2 := by
      intro ν hν
      exact B_ofReal_eq ε ν (by linarith [hν.1])
    have h_cont : ContinuousOn
        (fun ν : ℝ => ν * (Complex.cosh (ν / 2) / Complex.sinh (ν / 2) + ε) / 2)
        (Set.Icc ν₀ ν₁) := by
      refine ContinuousOn.div_const ?_ _
      refine ContinuousOn.mul Complex.continuous_ofReal.continuousOn
        (ContinuousOn.add ?_ continuousOn_const)
      refine ContinuousOn.div ?_ ?_ ?_
      · fun_prop
      · fun_prop
      · intro x hx
        simpa using sinh_ofReal_half_ne_zero (by linarith [hx.1])
    obtain ⟨C₂, hC₂⟩ := IsCompact.exists_bound_of_continuousOn
      CompactIccSpace.isCompact_Icc h_cont
    exact ⟨C₂, fun ν hν => by aesop⟩
  have h_bound : ∀ ν ∈ Set.Icc ν₀ ν₁, ∀ z : ℂ, z.im ≥ c →
      ‖Phi_star ν ε z‖ ≤
        (‖z‖ * (2 * Real.pi * C₁) + ν₁ * C₁ + C₂) / (2 * Real.pi) := by
    intro ν hν z hz
    have h_norm_B : ‖B ε (-2 * Real.pi * I * z + ν)‖ ≤
        ‖z‖ * (2 * Real.pi * C₁) + ν₁ * C₁ := by
      have h1 : ‖B ε (-2 * Real.pi * I * z + ν)‖ ≤
          ‖-2 * Real.pi * I * z + ν‖ * C₁ := by
        by_cases h : -2 * Real.pi * I * z + ν = 0 <;>
        simp_all only [gt_iff_lt, Set.mem_Icc, ge_iff_le, Phi_circ, one_div, norm_inv, and_imp, B,
          ↓reduceIte,Complex.norm_mul, Complex.norm_ofNat, Complex.norm_div]
        · norm_num [Complex.ext_iff] at h
          rw [div_lt_iff₀] at hc <;> nlinarith [Real.pi_pos]
        · have := hC₁ ν hν.1 hν.2 z hz
          rw [mul_div_assoc]
          exact mul_le_mul_of_nonneg_left (by linarith) (norm_nonneg _)
      have h2 : ‖-2 * Real.pi * I * z + ν‖ ≤ 2 * Real.pi * ‖z‖ + ν₁ := by
        refine le_trans (norm_add_le ..) ?_
        norm_num [abs_of_nonneg Real.pi_pos.le]
        cases abs_cases ν <;> linarith [hν.1, hν.2]
      nlinarith [show 0 ≤ C₁ from le_trans (norm_nonneg _) (hC₁ ν hν z hz)]
    have h_eq : ‖Phi_star ν ε z‖ =
        ‖B ε (-2 * Real.pi * I * z + ν) - B ε ν‖ / (2 * Real.pi) := by
      unfold Phi_star
      norm_num [abs_of_nonneg Real.pi_pos.le]
    exact h_eq ▸ div_le_div_of_nonneg_right
      (le_trans (norm_sub_le ..) (add_le_add h_norm_B (hC₂ ν hν))) (by positivity)
  use (|2 * Real.pi * C₁| + |ν₁ * C₁ + C₂|) / (2 * Real.pi)
  intro ν hν z hz
  convert le_trans (h_bound ν hν z hz) _ using 1
  rw [div_mul_eq_mul_div]
  rw [div_le_div_iff_of_pos_right (by positivity)]
  cases abs_cases (2 * Real.pi * C₁) <;>
    cases abs_cases (ν₁ * C₁ + C₂) <;>
      nlinarith [norm_nonneg z, Real.pi_pos]

@[blueprint
  "phi-star-bound-left"
  (title := "Bound on $\\Phi^{\\pm,\\ast}_\\nu$ from below")
  (statement := /--
  Let $0 < \nu_0 \leq \nu_1$ and $c < - \nu_1/2\pi$, then there exists $C$ such that for all $\nu \in [\nu_0, \nu_1]$, $\Im z \leq c$ one has $|\Phi^{\pm,\star}_{\nu}(z)| \leq C (|z|+1)$.
  -/)
  (proof := /-- Similar to previous lemma. -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L2399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
