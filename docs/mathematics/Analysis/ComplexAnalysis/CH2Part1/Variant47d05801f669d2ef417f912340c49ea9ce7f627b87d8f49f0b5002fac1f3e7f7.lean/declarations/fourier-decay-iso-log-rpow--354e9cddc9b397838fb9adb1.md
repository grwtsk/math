# fourier_decay_isO_log_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:067526bc-20a0-93bf-3a0e-cf8efe3c15d5",
  "kind": "lemma",
  "lexical_name": "fourier_decay_isO_log_rpow",
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
  "slug": "fourier-decay-iso-log-rpow--354e9cddc9b397838fb9adb1",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 271,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:354e9cddc9b397838fb9adb12d21d26be06fdaca20649b77800a636b7882a5b1",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:067526bc-20a0-93bf-3a0e-cf8efe3c15d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma fourier_decay_isO_log_rpow
    {β : ℝ} (hβ : 1 < β) {T : ℝ} (hT : 0 < T)
    {x : ℝ} (hx : 0 < x) {φ : ℝ → ℂ}
    (hφ_Fourier : ∃ C : ℝ, ∀ y : ℝ, y ≠ 0 → ‖𝓕 φ y‖ ≤ C / |y| ^ β) :
    (fun n : ℕ+ ↦ ‖𝓕 φ ((T / (2 * π)) * log (↑n / x))‖)
      =O[Filter.atTop] (fun n ↦ log (↑n) ^ (-β)) := by
  obtain ⟨C, hC⟩ := hφ_Fourier
  let y (n : ℕ+) : ℝ := (T / (2 * π)) * log (↑n / x)
  have h_y_pos : ∀ᶠ (n : ℕ+) in Filter.atTop, 0 < y n := by
    let n₀ : ℕ+ := ⟨⌊x⌋₊ + 1, Nat.succ_pos _⟩
    filter_upwards [Filter.eventually_ge_atTop n₀] with n hn
    have hnx : x < (n : ℝ) := by
      rw [← Nat.floor_lt hx.le]
      exact_mod_cast (Nat.lt_of_succ_le hn)
    apply mul_pos (by positivity)
    exact log_pos (by rwa [lt_div_iff₀ hx, one_mul])
  have h_y_ne_zero : ∀ᶠ (n : ℕ+) in Filter.atTop, y n ≠ 0 := h_y_pos.mono (fun n hn ↦ hn.ne')
  have h_y_ge : ∀ᶠ (n : ℕ+) in Filter.atTop, (T / (4 * π)) * log n ≤ y n := by
    let n₀ : ℕ+ := ⟨⌊x ^ 2⌋₊ + 2, Nat.succ_pos _⟩
    filter_upwards [Filter.eventually_ge_atTop n₀] with n hn
    have hn2 : x ^ 2 < (n : ℝ) := by
      rw [← Nat.floor_lt (sq_nonneg x)]
      have : ⌊x ^ 2⌋₊ + 2 ≤ (n : ℕ) := by exact_mod_cast hn
      linarith
    have hlog : log x ≤ (1 / 2) * log (n : ℝ) := by
      have : 2 * log x ≤ log (n : ℝ) := by
        rw [← log_rpow hx 2]
        exact log_le_log (by positivity) (by simp [hn2.le])
      linarith
    dsimp [y]
    calc (T / (2 * π)) * log (↑n / x)
          = (T / (2 * π)) * (log (n : ℝ) - log x) := by rw [log_div (by positivity) hx.ne']
        _ ≥ (T / (2 * π)) * (log (n : ℝ) - (1 / 2) * log (n : ℝ)) := by gcongr
        _ = (T / (4 * π)) * log (n : ℝ) := by ring
  have h_phi_le := h_y_ne_zero.mono (fun n hn ↦ hC (y n) hn)
  have h_y_inv_le : ∀ᶠ (n : ℕ+) in Filter.atTop,
      (y n)⁻¹ ^ β ≤ ((T / (4 * π)) * log n)⁻¹ ^ β := by
    filter_upwards [h_y_ge, Filter.eventually_ge_atTop (2 : ℕ+)] with n hn hn2
    have hlog_pos : 0 < log (n : ℝ) := log_pos (by exact_mod_cast (show 1 < (n : ℕ) from hn2))
    have h_rhs_pos : 0 < (T / (4 * π)) * log (n : ℝ) := mul_pos (by positivity) hlog_pos
    apply Real.rpow_le_rpow (inv_nonneg.mpr (h_rhs_pos.trans_le hn).le)
      ((inv_le_inv₀ (h_rhs_pos.trans_le hn) h_rhs_pos).mpr hn) (zero_le_one.trans hβ.le)
  apply IsBigO.of_bound (C * (T / (4 * π)) ^ (-β))
  filter_upwards [h_y_pos, h_phi_le, h_y_inv_le, Filter.eventually_ge_atTop (2 : ℕ+)]
    with n hy_pos hn_phi_le hn_inv_le hn2
  simp only [Real.norm_eq_abs, abs_norm]
  have h_log_n : 0 ≤ log (n : ℝ) := log_nonneg (by exact_mod_cast n.2)
  apply hn_phi_le.trans
  rw [abs_of_pos hy_pos, div_eq_mul_inv, ← inv_rpow hy_pos.le, abs_of_nonneg (rpow_nonneg h_log_n _)]
  have h_rhs : (C * (T / (4 * π)) ^ (-β)) * log n ^ (-β) = C * ((T / (4 * π)) * log n)⁻¹ ^ β := by
    have h_rhs_pos : 0 < (T / (4 * π)) := by positivity
    have h_log_n_pos : 0 < log (n : ℝ) := log_pos (by exact_mod_cast (show 1 < (n : ℕ) from hn2))
    rw [mul_assoc, ← mul_rpow h_rhs_pos.le h_log_n,
        rpow_neg (mul_pos h_rhs_pos h_log_n_pos).le,
        ← inv_rpow (mul_pos h_rhs_pos h_log_n_pos).le]
  rw [h_rhs]
  apply mul_le_mul_of_nonneg_left hn_inv_le
  have hC_bound := hC 1 one_ne_zero
  rw [abs_one, one_rpow, div_one] at hC_bound
  exact (norm_nonneg _).trans hC_bound

-- This proof requires several `erw`'s because `Measure.setIntegral_comp_smul` is stated with `T • v`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
