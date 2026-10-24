# proposition_17

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88be1b47c741ee6510e22488953556110e8e6ff5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2430,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:101b690d-414c-090d-6a7b-9a764e1f841b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bcc3e91-421d-4e4d-455c-86c2b4cdd4ba",
  "kind": "theorem",
  "lexical_name": "proposition_17",
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
  "slug": "proposition-17--5c9590bb12f13b72b65f17c2",
  "source": {
    "blob": "88be1b47c741ee6510e22488953556110e8e6ff5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2507,
    "line": 2430,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c9590bb12f13b72b65f17c2f9c65572348c894ab36993637dd2606766d0d848",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bcc3e91-421d-4e4d-455c-86c2b4cdd4ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2430–2507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem proposition_17 {x x₀ : ℝ} (hx : x > x₀) (hx₀ : x₀ > 2) (εψ : ℝ → ℝ) (hEψ : Eψ x ≤ εψ x₀) :
    -εθ_from_εψ εψ x₀ ≤ (θ x - x) / x ∧ (θ x - x) / x ≤ εψ x₀ ∧ εψ x₀ ≤ εθ_from_εψ εψ x₀ := by
  refine ⟨?_, ?_, ?_⟩
  · have hx_pos : 0 < x := by linarith
    have hθ_bound :
        θ x ≥ x - εψ x₀ * x -
          1.00000002 * (x ^ (1 / 2 : ℝ) + x ^ (1 / 3 : ℝ) + x ^ (1 / 5 : ℝ)) -
          0.94 * (x ^ (1 / 4 : ℝ) + x ^ (1 / 6 : ℝ) + x ^ (1 / 10 : ℝ)) := by
      have hθ_from_ψ :
          θ x ≥ x - εψ x₀ * x -
            (ψ (x ^ (1 / 2 : ℝ)) + ψ (x ^ (1 / 3 : ℝ)) + ψ (x ^ (1 / 5 : ℝ))) := by
        have hθ_basic : θ x ≥ x - εψ x₀ * x - (ψ x - θ x) := by
          rw [show Eψ x = |ψ x - x| / x from rfl] at hEψ
          rw [div_le_iff₀] at hEψ <;>
            cases abs_cases (ψ x - x) <;> nlinarith [show 0 < x by linarith]
        exact hθ_basic.trans' <| sub_le_sub_left
          (le_trans (by norm_num) (CostaPereira.theorem_1a (by linarith))) _
      have hψ_bounds :
          ψ (x ^ (1 / 2 : ℝ)) ≤ 1.00000002 * x ^ (1 / 2 : ℝ) + 0.94 * x ^ (1 / 4 : ℝ) ∧
          ψ (x ^ (1 / 3 : ℝ)) ≤ 1.00000002 * x ^ (1 / 3 : ℝ) + 0.94 * x ^ (1 / 6 : ℝ) ∧
          ψ (x ^ (1 / 5 : ℝ)) ≤ 1.00000002 * x ^ (1 / 5 : ℝ) + 0.94 * x ^ (1 / 10 : ℝ) := by
        have hψ_le : ∀ y : ℝ, 1 < y → ψ y ≤ 1.00000002 * y + 0.94 * y ^ (1 / 2 : ℝ) :=
          fun y a ↦ psi_le_bound y a
        exact ⟨by
            convert hψ_le (x ^ (1 / 2 : ℝ)) (one_lt_rpow (by linarith) (by norm_num)) using 1
            rw [← rpow_mul (by linarith)]; norm_num, by
            convert hψ_le (x ^ (1 / 3 : ℝ)) (one_lt_rpow (by linarith) (by norm_num)) using 1
            rw [← rpow_mul (by linarith)]; norm_num, by
            convert hψ_le (x ^ (1 / 5 : ℝ)) (one_lt_rpow (by linarith) (by norm_num)) using 1
            rw [← rpow_mul (by linarith)]; norm_num⟩
      linarith [rpow_pos_of_pos hx_pos (1 / 2 : ℝ),
        rpow_pos_of_pos hx_pos (1 / 3 : ℝ), rpow_pos_of_pos hx_pos (1 / 5 : ℝ),
        rpow_pos_of_pos hx_pos (1 / 4 : ℝ), rpow_pos_of_pos hx_pos (1 / 6 : ℝ),
        rpow_pos_of_pos hx_pos (1 / 10 : ℝ)]
    have hfactor :
        1.00000002 * (x ^ (1 / 2 : ℝ) + x ^ (1 / 3 : ℝ) + x ^ (1 / 5 : ℝ)) +
          0.94 * (x ^ (1 / 4 : ℝ) + x ^ (1 / 6 : ℝ) + x ^ (1 / 10 : ℝ)) ≤
        x * (1.00000002 * (x₀ ^ (-(1 / 2 : ℝ)) + x₀ ^ (-(2 / 3 : ℝ)) + x₀ ^ (-(4 / 5 : ℝ))) +
          0.94 * (x₀ ^ (-(3 / 4 : ℝ)) + x₀ ^ (-(5 / 6 : ℝ)) + x₀ ^ (-(9 / 10 : ℝ)))) := by
      have hpowers :
          x ^ (1 / 2 : ℝ) ≤ x * x₀ ^ (-(1 / 2 : ℝ)) ∧
          x ^ (1 / 3 : ℝ) ≤ x * x₀ ^ (-(2 / 3 : ℝ)) ∧
          x ^ (1 / 5 : ℝ) ≤ x * x₀ ^ (-(4 / 5 : ℝ)) ∧
          x ^ (1 / 4 : ℝ) ≤ x * x₀ ^ (-(3 / 4 : ℝ)) ∧
          x ^ (1 / 6 : ℝ) ≤ x * x₀ ^ (-(5 / 6 : ℝ)) ∧
          x ^ (1 / 10 : ℝ) ≤ x * x₀ ^ (-(9 / 10 : ℝ)) := by
        have hpower_bound : ∀ k : ℝ, 0 < k → k < 1 → x ^ k ≤ x * x₀ ^ (k - 1) := by
          intro k hk hk'
          rw [← log_le_log_iff (rpow_pos_of_pos (by linarith) _) (mul_pos (by linarith)
            (rpow_pos_of_pos (by linarith) _)), log_rpow (by linarith),
              log_mul (by linarith) (ne_of_gt (rpow_pos_of_pos (by linarith) _)), log_rpow (by linarith)]
          ring_nf
          nlinarith [log_lt_log (by linarith) hx]
        exact ⟨by convert hpower_bound (1 / 2) (by norm_num) (by norm_num) using 1; ring_nf,
          by convert hpower_bound (1 / 3) (by norm_num) (by norm_num) using 1; ring_nf,
          by convert hpower_bound (1 / 5) (by norm_num) (by norm_num) using 1; ring_nf,
          by convert hpower_bound (1 / 4) (by norm_num) (by norm_num) using 1; ring_nf,
          by convert hpower_bound (1 / 6) (by norm_num) (by norm_num) using 1; ring_nf,
          by convert hpower_bound (1 / 10) (by norm_num) (by norm_num) using 1; ring_nf⟩
      linarith [rpow_pos_of_pos hx_pos (1 / 2 : ℝ),
        rpow_pos_of_pos hx_pos (1 / 3 : ℝ), rpow_pos_of_pos hx_pos (1 / 5 : ℝ),
        rpow_pos_of_pos hx_pos (1 / 4 : ℝ), rpow_pos_of_pos hx_pos (1 / 6 : ℝ),
        rpow_pos_of_pos hx_pos (1 / 10 : ℝ)]
    rw [le_div_iff₀ hx_pos, εθ_from_εψ]
    grind
  · have h_le_psi : (θ x - x) / x ≤ (ψ x - x) / x := by
      gcongr
      · linarith
      · exact theta_le_psi x
    exact h_le_psi.trans <| hEψ.trans' (div_le_div_of_nonneg_right (le_abs_self _) (by linarith))
  · exact le_add_of_le_of_nonneg (le_add_of_nonneg_right <| by positivity) <| by positivity

blueprint_comment /--
\subsection{From numerical estimates on theta to numerical estimates on pi}

Here we record a way to convert a numerical bound on $E_\theta$ to a numerical bound on $E_\pi$.  We first need some preliminary lemmas.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean#L2430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88be1b47c741ee6510e22488953556110e8e6ff5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
