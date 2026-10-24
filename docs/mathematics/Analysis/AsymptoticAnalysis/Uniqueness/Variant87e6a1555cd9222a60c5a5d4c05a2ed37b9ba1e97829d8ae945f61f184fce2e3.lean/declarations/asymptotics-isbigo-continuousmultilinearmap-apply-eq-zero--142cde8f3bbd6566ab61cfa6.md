# Asymptotics.IsBigO.continuousMultilinearMap_apply_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21e4d8592e1cf731850fea2bb638a074f6913ae7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3c3763a-d96e-9559-d7f3-8a8a30b0a04a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4ab698a-0607-72ae-390a-bd806b63156c",
  "kind": "theorem",
  "lexical_name": "Asymptotics.IsBigO.continuousMultilinearMap_apply_eq_zero",
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
  "slug": "asymptotics-isbigo-continuousmultilinearmap-apply-eq-zero--142cde8f3bbd6566ab61cfa6",
  "source": {
    "blob": "21e4d8592e1cf731850fea2bb638a074f6913ae7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 42,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:142cde8f3bbd6566ab61cfa6442384c65c89b413de7e5c17689e6b3e526bcfa5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4ab698a-0607-72ae-390a-bd806b63156c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Asymptotics.IsBigO.continuousMultilinearMap_apply_eq_zero {n : ℕ} {p : E [×n]→L[𝕜] F}
    (h : (fun y => p fun _ => y) =O[𝓝 0] fun y => ‖y‖ ^ (n + 1)) (y : E) : (p fun _ => y) = 0 := by
  obtain ⟨c, c_pos, hc⟩ := h.exists_pos
  obtain ⟨t, ht, t_open, z_mem⟩ := eventually_nhds_iff.mp (isBigOWith_iff.mp hc)
  obtain ⟨δ, δ_pos, δε⟩ := (Metric.isOpen_iff.mp t_open) 0 z_mem
  clear h hc z_mem
  rcases n with - | n
  · exact norm_eq_zero.mp (by
      simpa only [fin0_apply_norm, norm_eq_zero, norm_zero, zero_add, pow_one,
        mul_zero, norm_le_zero_iff] using ht 0 (δε (Metric.mem_ball_self δ_pos)))
  · refine Or.elim (Classical.em (y = 0))
      (fun hy => by simpa only [hy] using p.map_zero) fun hy => ?_
    replace hy := norm_pos_iff.mpr hy
    refine norm_eq_zero.mp (le_antisymm (le_of_forall_pos_le_add fun ε ε_pos => ?_) (norm_nonneg _))
    have h₀ := _root_.mul_pos c_pos (pow_pos hy (n.succ + 1))
    obtain ⟨k, k_pos, k_norm⟩ := NormedField.exists_norm_lt 𝕜
      (lt_min (mul_pos δ_pos (inv_pos.mpr hy)) (mul_pos ε_pos (inv_pos.mpr h₀)))
    have h₁ : ‖k • y‖ < δ := by
      rw [norm_smul]
      exact inv_mul_cancel_right₀ hy.ne.symm δ ▸
        mul_lt_mul_of_pos_right (lt_of_lt_of_le k_norm (min_le_left _ _)) hy
    have h₂ :=
      calc
        ‖p fun _ => k • y‖ ≤ c * ‖k • y‖ ^ (n.succ + 1) := by
          -- Porting note: now Lean wants `_root_.`
          simpa only [norm_pow, _root_.norm_norm] using ht (k • y) (δε (mem_ball_zero_iff.mpr h₁))
          --simpa only [norm_pow, norm_norm] using ht (k • y) (δε (mem_ball_zero_iff.mpr h₁))
        _ = ‖k‖ ^ n.succ * (‖k‖ * (c * ‖y‖ ^ (n.succ + 1))) := by
          simp only [norm_smul, mul_pow]
          ring
    have h₃ : ‖k‖ * (c * ‖y‖ ^ (n.succ + 1)) < ε :=
      inv_mul_cancel_right₀ h₀.ne.symm ε ▸
        mul_lt_mul_of_pos_right (lt_of_lt_of_le k_norm (min_le_right _ _)) h₀
    calc
      ‖p fun _ => y‖ = ‖k⁻¹ ^ n.succ‖ * ‖p fun _ => k • y‖ := by
        simpa only [inv_smul_smul₀ (norm_pos_iff.mp k_pos), norm_smul, Finset.prod_const,
          Finset.card_fin] using
          congr_arg norm (p.map_smul_univ (fun _ : Fin n.succ => k⁻¹) fun _ : Fin n.succ => k • y)
      _ ≤ ‖k⁻¹ ^ n.succ‖ * (‖k‖ ^ n.succ * (‖k‖ * (c * ‖y‖ ^ (n.succ + 1)))) := by gcongr
      _ = ‖(k⁻¹ * k) ^ n.succ‖ * (‖k‖ * (c * ‖y‖ ^ (n.succ + 1))) := by
        rw [← mul_assoc]
        simp [norm_mul, mul_pow]
      _ ≤ 0 + ε := by
        rw [inv_mul_cancel₀ (norm_pos_iff.mp k_pos)]
        simpa using h₃.le

/-- If a formal multilinear series `p` represents the zero function at `x : E`, then the
terms `p n (fun i ↦ y)` appearing in the sum are zero for any `n : ℕ`, `y : E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Uniqueness/Variant87e6a1555cd9222a60c5a5d4c05a2ed37b9ba1e97829d8ae945f61f184fce2e3.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21e4d8592e1cf731850fea2bb638a074f6913ae7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
