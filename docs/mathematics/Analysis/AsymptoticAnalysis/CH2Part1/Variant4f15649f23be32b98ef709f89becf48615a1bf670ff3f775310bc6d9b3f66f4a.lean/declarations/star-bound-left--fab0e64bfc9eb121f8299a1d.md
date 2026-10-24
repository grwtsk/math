# ϕ_star_bound_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f07b176d-567b-bd10-8e20-e5ea7ec2a9e5",
  "kind": "theorem",
  "lexical_name": "ϕ_star_bound_left",
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
  "slug": "star-bound-left--fab0e64bfc9eb121f8299a1d",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2543,
    "line": 2462,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fab0e64bfc9eb121f8299a1d6350f257c5ce9021c85c384ec95683be935d0898",
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

Occurrence: `result:f07b176d-567b-bd10-8e20-e5ea7ec2a9e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2462–2543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ϕ_star_bound_left (ν₀ ν₁ ε c : ℝ) (hν₀ : 0 < ν₀) (hν₁ : ν₀ ≤ ν₁) (hc : c < -ν₁ / (2 * π)) :
    ∃ C : ℝ, ∀ ν ∈ Set.Icc ν₀ ν₁, ∀ z : ℂ, z.im ≤ c → ‖Phi_star ν ε z‖ ≤ C * (‖z‖ + 1) := by
  obtain ⟨C₁, hC₁⟩ := ϕ_circ_bound_left ν₀ ν₁ ε c hc
  obtain ⟨M, hM⟩ : ∃ M : ℝ, ∀ ν ∈ Set.Icc ν₀ ν₁, ‖B ε ν‖ ≤ M := by
    have hB_def : ∀ ν : ℝ, ν ≠ 0 →
        B ε ν = ν * (Complex.cosh (ν / 2) / Complex.sinh (ν / 2) + ε) / 2 := by
      exact B_ofReal_eq ε
    have hB_cont : ContinuousOn
        (fun ν : ℝ => ν * (Complex.cosh (ν / 2) / Complex.sinh (ν / 2) + ε) / 2)
        (Set.Icc ν₀ ν₁) := by
      refine ContinuousOn.div_const ?_ _
      refine ContinuousOn.mul (Complex.continuous_ofReal.continuousOn)
        (ContinuousOn.add ?_ continuousOn_const)
      refine ContinuousOn.div ?_ ?_ ?_
      · fun_prop
      · fun_prop
      · intro x hx₁ hx₂
        have hx_ne : x ≠ 0 := ne_of_gt (lt_of_lt_of_le hν₀ hx₁.1)
        exact sinh_ofReal_half_ne_zero hx_ne hx₂
    obtain ⟨M, hM⟩ := IsCompact.exists_bound_of_continuousOn
      CompactIccSpace.isCompact_Icc hB_cont
    refine ⟨M, fun ν hν => ?_⟩
    specialize hB_def ν (by linarith [hν.1])
    grind
  have hB : ∀ ν ∈ Set.Icc ν₀ ν₁, ∀ z : ℂ, z.im ≤ c →
      ‖B ε (-2 * Real.pi * I * z + ν)‖ ≤ (2 * Real.pi * ‖z‖ + ν₁) * C₁ := by
    intro ν hν z hz
    have hB_eq : B ε (-2 * Real.pi * I * z + ν) =
        (-2 * Real.pi * I * z + ν) * Phi_circ ν ε z := by
      unfold B Phi_circ
      split_ifs <;> simp_all [Complex.ext_iff]
      · rw [lt_div_iff₀] at hc <;> nlinarith [Real.pi_pos]
      · constructor <;> ring
    rw [hB_eq, norm_mul]
    gcongr
    · exact add_nonneg (mul_nonneg (mul_nonneg zero_le_two Real.pi_pos.le) (norm_nonneg _))
        (by linarith)
    · refine le_trans (norm_add_le _ _) ?_
      norm_num [abs_of_nonneg Real.pi_pos.le]
      cases abs_cases ν <;> linarith [hν.1, hν.2]
    · exact hC₁ ν hν z hz
  have hPhi_star_bound : ∀ ν ∈ Set.Icc ν₀ ν₁, ∀ z : ℂ, z.im ≤ c →
      ‖Phi_star ν ε z‖ ≤ ((2 * Real.pi * ‖z‖ + ν₁) * C₁ + M) / (2 * Real.pi) := by
    intros ν hν z hz
    have h : ‖Phi_star ν ε z‖ ≤
        (‖B ε (-2 * Real.pi * I * z + ν)‖ + ‖B ε ν‖) / (2 * Real.pi) := by
      rw [CH2.Phi_star]
      norm_num [abs_of_nonneg Real.pi_pos.le]
      bound
    exact h.trans (by gcongr <;> linarith [hB ν hν z hz, hM ν hν])
  exact ⟨((2 * Real.pi * 0 + ν₁) * C₁ + M) / (2 * Real.pi) +
    (2 * Real.pi * C₁) / (2 * Real.pi), fun ν hν z hz =>
    le_trans (hPhi_star_bound ν hν z hz) (by
      ring_nf; norm_num [Real.pi_pos.ne']
      norm_num [mul_assoc, mul_comm, mul_left_comm, Real.pi_ne_zero]
      linarith [
        show 0 ≤ C₁ from le_trans (norm_nonneg _) (hC₁ ν hν z hz),
        show 0 ≤ M from le_trans (norm_nonneg _) (hM ν hν),
        show 0 ≤ C₁ * (ν₁ * (Real.pi⁻¹ * (‖z‖ * (1 / 2)))) from
          mul_nonneg (le_trans (norm_nonneg _) (hC₁ ν hν z hz))
            (mul_nonneg (by linarith) (mul_nonneg (inv_nonneg.2 Real.pi_pos.le)
              (mul_nonneg (norm_nonneg _) (by norm_num)))),
        show 0 ≤ M * (Real.pi⁻¹ * (‖z‖ * (1 / 2))) from by
          apply mul_nonneg (le_trans (norm_nonneg _) (hM ν hν))
          positivity
      ])⟩


@[blueprint
  "B-plus-mono"
  (title := "$B^+$ is increasing")
  (statement := /--
  For real $t$, $B^+(t)$ is increasing.
  -/)
  (proof := /-- For all $t \neq 0$, by the identities $2\cosh\frac{t}{2}\sinh\frac{t}{2} = \sinh t$ and $2\sinh^2\frac{t}{2} = \cosh t - 1$,
\[
\frac{dB^{\pm}(t)}{dt} = \frac{\cosh\frac{t}{2}\sinh\frac{t}{2} - \frac{t}{2} \pm \sinh^2\frac{t}{2}}{2\sinh^2\frac{t}{2}} = \frac{\pm(e^{\pm t} - (1 \pm t))}{4\sinh^2\frac{t}{2}}.
\]
Since $e^u$ is convex, $e^u \geq 1 + u$ for all $u \in \mathbb{R}$. We apply this inequality with $u = t$ and $u = -t$ and obtain the conclusion for $t \neq 0$. Since $B^{\pm}(t)$ is continuous at $t = 0$, we are done.
. -/)
  (latexEnv := "lemma")
  (discussion := 1077)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L2462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
