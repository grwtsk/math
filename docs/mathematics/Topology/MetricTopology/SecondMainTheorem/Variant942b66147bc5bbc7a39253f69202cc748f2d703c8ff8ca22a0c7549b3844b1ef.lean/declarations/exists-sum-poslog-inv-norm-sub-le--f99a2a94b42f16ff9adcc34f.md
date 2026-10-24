# exists_sum_posLog_inv_norm_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb0f0001-f475-e2ca-c474-0da877c520aa",
  "kind": "theorem",
  "lexical_name": "exists_sum_posLog_inv_norm_sub_le",
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
  "slug": "exists-sum-poslog-inv-norm-sub-le--f99a2a94b42f16ff9adcc34f",
  "source": {
    "blob": "64a76ba50041de210b647257e3717c0c68863c1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 64,
    "path": "GRWTSK/Topology/MetricTopology/SecondMainTheorem/Variant942b66147bc5bbc7a39253f69202cc748f2d703c8ff8ca22a0c7549b3844b1ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f99a2a94b42f16ff9adcc34f190e00fb92018b2f5479c067c8b4e0e0f28642f5",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/SecondMainTheorem/Variant942b66147bc5bbc7a39253f69202cc748f2d703c8ff8ca22a0c7549b3844b1ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb0f0001-f475-e2ca-c474-0da877c520aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_sum_posLog_inv_norm_sub_le (s : Finset 𝕜) :
    ∃ C, ∀ w : 𝕜, ∑ a ∈ s, log⁺ ‖w - a‖⁻¹ ≤ log⁺ ‖∑ a ∈ s, (w - a)⁻¹‖ + C := by
  -- If `w` is close to one point `a₀` of `s`, the singular term `(w - a₀)⁻¹` dominates the sum, so
  -- the single function `‖∑ a ∈ s, (· - a)⁻¹‖` detects closeness to *any* point of `s`; if `w` is
  -- far from all points of `s`, the left-hand side is bounded by a constant.
  classical
  obtain (rfl | ⟨a, rfl⟩ | hs) : s = ∅ ∨ (∃ a, s = {a}) ∨ s.Nontrivial := by
    grind [Finset.Nonempty.exists_eq_singleton_or_nontrivial]
  case inl | inr.inl => exact ⟨0, by simp⟩ -- For `#s ≤ 1` the constant `0` works.
  case inr.inr => -- Main case `2 ≤ #s`: take `δ` as the minimal separation in `s`, capped at `1`.
    obtain ⟨δ, hδ₀, hδ₁, hδgap⟩ :
        ∃ δ, 0 < δ ∧ δ ≤ 1 ∧ ∀ a ∈ s, ∀ b ∈ s, a ≠ b → δ ≤ ‖a - b‖ := by
      refine ⟨min 1 (s : Set 𝕜).infsep, lt_min zero_lt_one ?_, min_le_left .., ?_⟩
      · simpa [Finset.infsep_pos_iff_nontrivial]
      · refine fun a ha b hb hab ↦ ?_
        grw [min_le_right, ← dist_eq_norm]
        exact Set.le_edist_of_le_infsep ha hb hab le_rfl
    have hq2 : (2 : ℝ) ≤ #s := mod_cast hs.two_le_card
    have hlogq : 0 ≤ log #s := by positivity
    have hposA : 0 ≤ log⁺ (2 * #s / δ) := posLog_nonneg
    refine ⟨#s * log⁺ (2 * #s / δ) + log #s, fun w ↦ ?_⟩
    by_cases! hfar : ∀ a ∈ s, δ / (2 * #s) ≤ ‖w - a‖
    · -- Case (i): `w` keeps distance `δ/(2 #s)` from every point of `s`; then already the
      -- left-hand side is bounded by the constant.
      have h1 := sum_posLog_inv_norm_sub_le (by positivity) hfar
      rw [inv_div] at h1
      have h2 : 0 ≤ log⁺ ‖∑ a ∈ s, (w - a)⁻¹‖ := posLog_nonneg
      linarith
    · -- Case (ii): `w` is `δ/(2 #s)`-close to some `a₀ ∈ s`, hence `δ/2`-far from every
      -- other point of `s`.
      obtain ⟨a₀, ha₀, hnear⟩ := hfar
      have hcaste : #(s.erase a₀) = (#s : ℝ) - 1 := by grind [Nat.cast_sub]
      have hother (b) (hb : b ∈ s.erase a₀) : δ / 2 ≤ ‖w - b‖ := by
        have h1 : δ / (2 * #s) ≤ δ / 4 := by
          gcongr
          linarith
        have h2 : δ ≤ ‖w - a₀‖ + ‖w - b‖ := hδgap a₀ ha₀ b (by grind) (by grind) |>.trans <| by
          simpa [norm_sub_rev] using norm_sub_le (w - a₀) (w - b)
        linarith
      -- Tail estimate: the sum over `s \ {a₀}` is bounded by the constant.
      have htail : ∑ b ∈ s.erase a₀, log⁺ ‖w - b‖⁻¹ ≤ (#s - 1) * log⁺ (2 * #s / δ) := by
        have h1 := sum_posLog_inv_norm_sub_le (by positivity) hother
        rw [inv_div, hcaste] at h1
        have hd2 : (0 : ℝ) < 2 / δ := by positivity
        apply h1.trans
        gcongr <;> linarith
      -- Head estimate: the singular term `(w - a₀)⁻¹` dominates `∑ a ∈ s, (w - a)⁻¹`, so
      -- its `log⁺` is controlled by the right-hand side.
      have hhead : log⁺ ‖w - a₀‖⁻¹ ≤ log #s + log⁺ ‖∑ a ∈ s, (w - a)⁻¹‖ := by
        rcases eq_or_ne w a₀ with rfl | hne
        -- At `w = a₀` the junk-value convention gives `log⁺ ‖w - a₀‖⁻¹ = log⁺ 0⁻¹ = 0`.
        · simpa only [sub_self, norm_zero, inv_zero, posLog_zero]
            using add_nonneg hlogq posLog_nonneg
        · have hpos : 0 < ‖w - a₀‖ := norm_pos_iff.mpr (sub_ne_zero.mpr hne)
          -- The singular term is large …
          have hlarge : 2 * #s / δ ≤ ‖w - a₀‖⁻¹ := by
            rw [← inv_div]
            gcongr
          -- … while the remaining terms are uniformly bounded …
          have htv := calc
            ‖∑ b ∈ s.erase a₀, (w - b)⁻¹‖ ≤ ∑ b ∈ s.erase a₀, ‖(w - b)⁻¹‖ := norm_sum_le _ _
            _ ≤ ∑ b ∈ s.erase a₀, 2 / δ := by
              refine sum_le_sum fun b hb ↦ ?_
              rw [norm_inv, ← inv_div]
              gcongr
              exact hother b hb
            _ = (#s - 1) * (2 / δ) := by
              rw [sum_const, nsmul_eq_mul, hcaste]
          -- … so the full sum has norm at least `‖w - a₀‖⁻¹ / #s`.
          have hlow : ‖w - a₀‖⁻¹ - (#s - 1) * (2 / δ) ≤ ‖∑ a ∈ s, (w - a)⁻¹‖ := by
            have h5 : ‖w - a₀‖⁻¹ ≤ ‖∑ a ∈ s, (w - a)⁻¹‖ + ‖∑ b ∈ s.erase a₀, (w - b)⁻¹‖ := by
              simpa [← add_sum_erase s _ ha₀] using
                norm_sub_le ((w - a₀)⁻¹ + ∑ b ∈ s.erase a₀, (w - b)⁻¹) (∑ b ∈ s.erase a₀, (w - b)⁻¹)
            linarith
          have hdom : ‖w - a₀‖⁻¹ ≤ #s * ‖∑ a ∈ s, (w - a)⁻¹‖ := by
            have h7 : #s * (2 / δ) = 2 * #s / δ := by ring
            have h8 : 0 ≤ (#s - 1) * (‖w - a₀‖⁻¹ - #s * (2 / δ)) := by
              apply mul_nonneg <;> linarith
            nlinarith [mul_le_mul_of_nonneg_left hlow (by positivity : (0 : ℝ) ≤ #s)]
          calc log⁺ ‖w - a₀‖⁻¹ ≤ log⁺ (#s * ‖∑ a ∈ s, (w - a)⁻¹‖) := by
                have : (0 : ℝ) ≤ ‖w - a₀‖⁻¹ := by positivity
                gcongr
                linarith
            _ ≤ log #s + log⁺ ‖∑ a ∈ s, (w - a)⁻¹‖ := posLog_nat_mul
      -- Assemble the two estimates.
      rw [← add_sum_erase s (fun a ↦ log⁺ ‖w - a‖⁻¹) ha₀]
      have h6 : (#s - 1) * log⁺ (2 * #s / δ) ≤ #s * log⁺ (2 * #s / δ) := by
        gcongr; linarith
      linarith

end Real
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/SecondMainTheorem/Variant942b66147bc5bbc7a39253f69202cc748f2d703c8ff8ca22a0c7549b3844b1ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/SecondMainTheorem/Variant942b66147bc5bbc7a39253f69202cc748f2d703c8ff8ca22a0c7549b3844b1ef.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64a76ba50041de210b647257e3717c0c68863c1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
