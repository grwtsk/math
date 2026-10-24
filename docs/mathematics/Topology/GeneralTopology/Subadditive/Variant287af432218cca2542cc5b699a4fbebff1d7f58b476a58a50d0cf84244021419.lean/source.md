# Complete source: GRWTSK.Topology.GeneralTopology.Subadditive.Variant287af432218cca2542cc5b699a4fbebff1d7f58b476a58a50d0cf84244021419

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee5113a3258cafa515279c1c961d29123bfc2332` · SHA-256 `65a922890fe61083acf3a9ce8c78fef4490f5ee5838e7fcaf77b2287002cc7fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Subadditive.Variantf38cb611753715cb12754ebb5ffe54ef32e9c7bbee7b020f2b3ffc5dda543bcb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f38cb611753715cb12754ebb5ffe54ef32e9c7bbee7b020f2b3ffc5dda543bcb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Subadditive.Variantf38cb611753715cb12754ebb5ffe54ef32e9c7bbee7b020f2b3ffc5dda543bcb","mathematical_subject":"Topology.GeneralTopology","original_sha256":"f38cb611753715cb12754ebb5ffe54ef32e9c7bbee7b020f2b3ffc5dda543bcb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Subadditive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
module

public import Mathlib.Order.Filter.AtTopBot.Archimedean
public import Mathlib.Order.Filter.AtTopBot.Finite
public import Mathlib.Order.Filter.AtTopBot.Prod
public import Mathlib.Topology.Algebra.Ring.Real

/-!
# Convergence of subadditive sequences

A subadditive sequence `u : ℕ → ℝ` is a sequence satisfying `u (m + n) ≤ u m + u n` for all `m, n`.
We define this notion as `Subadditive u`, and prove in `Subadditive.tendsto_lim` that, if `u n / n`
is bounded below, then it converges to a limit (that we denote by `Subadditive.lim` for
convenience). This result is known as Fekete's lemma in the literature.

## TODO

Define a bundled `SubadditiveHom`, use it.
-/


namespace GRWTSK.Topology.GeneralTopology.Subadditive.Variantf38cb611753715cb12754ebb5ffe54ef32e9c7bbee7b020f2b3ffc5dda543bcb

@[expose] public section

noncomputable section

open Set Filter

open scoped Topology

/-- A real-valued sequence is subadditive if it satisfies the inequality `u (m + n) ≤ u m + u n`
for all `m, n`. -/
def Subadditive (u : ℕ → ℝ) : Prop :=
  ∀ m n, u (m + n) ≤ u m + u n

namespace Subadditive

variable {u : ℕ → ℝ} (h : Subadditive u)

/-- The limit of a bounded-below subadditive sequence. The fact that the sequence indeed tends to
this limit is given in `Subadditive.tendsto_lim` -/
@[nolint unusedArguments, irreducible]
protected def lim (_h : Subadditive u) :=
  sInf ((fun n : ℕ => u n / n) '' Ici 1)

theorem lim_le_div (hbdd : BddBelow (range fun n => u n / n)) {n : ℕ} (hn : n ≠ 0) :
    h.lim ≤ u n / n := by
  rw [Subadditive.lim]
  exact csInf_le (hbdd.mono <| image_subset_range _ _) ⟨n, hn.bot_lt, rfl⟩

include h in
theorem apply_mul_add_le (k n r) : u (k * n + r) ≤ k * u n + u r := by
  induction k with
  | zero => simp only [Nat.cast_zero, zero_mul, zero_add]; rfl
  | succ k IH =>
    calc
      u ((k + 1) * n + r) = u (n + (k * n + r)) := by congr 1; ring
      _ ≤ u n + u (k * n + r) := h _ _
      _ ≤ u n + (k * u n + u r) := by grw [IH]
      _ = (k + 1 : ℕ) * u n + u r := by simp; ring

include h in
theorem eventually_div_lt_of_div_lt {L : ℝ} {n : ℕ} (hn : n ≠ 0) (hL : u n / n < L) :
    ∀ᶠ p in atTop, u p / p < L := by
  /- It suffices to prove the statement for each arithmetic progression `(n * · + r)`. -/
  refine .atTop_of_arithmetic hn fun r _ => ?_
  /- `(k * u n + u r) / (k * n + r)` tends to `u n / n < L`, hence
  `(k * u n + u r) / (k * n + r) < L` for sufficiently large `k`. -/
  have A : Tendsto (fun x : ℝ => (u n + u r / x) / (n + r / x)) atTop (𝓝 ((u n + 0) / (n + 0))) :=
    (tendsto_const_nhds.add <| tendsto_const_nhds.div_atTop tendsto_id).div
      (tendsto_const_nhds.add <| tendsto_const_nhds.div_atTop tendsto_id) <| by simpa
  have B : Tendsto (fun x => (x * u n + u r) / (x * n + r)) atTop (𝓝 (u n / n)) := by
    rw [add_zero, add_zero] at A
    refine A.congr' <| (eventually_ne_atTop 0).mono fun x hx => ?_
    simp only [add_div' _ _ _ hx, div_div_div_cancel_right₀ hx, mul_comm]
  refine ((B.comp tendsto_natCast_atTop_atTop).eventually (gt_mem_nhds hL)).mono fun k hk => ?_
  /- Finally, we use an upper estimate on `u (k * n + r)` to get an estimate on
  `u (k * n + r) / (k * n + r)`. -/
  rw [mul_comm]
  refine lt_of_le_of_lt ?_ hk
  simp only [(· ∘ ·), ← Nat.cast_add, ← Nat.cast_mul]
  gcongr
  apply h.apply_mul_add_le

/-- Fekete's lemma: a subadditive sequence which is bounded below converges. -/
theorem tendsto_lim (hbdd : BddBelow (range fun n => u n / n)) :
    Tendsto (fun n => u n / n) atTop (𝓝 h.lim) := by
  refine tendsto_order.2 ⟨fun l hl => ?_, fun L hL => ?_⟩
  · refine eventually_atTop.2
      ⟨1, fun n hn => hl.trans_le (h.lim_le_div hbdd (zero_lt_one.trans_le hn).ne')⟩
  · obtain ⟨n, npos, hn⟩ : ∃ n : ℕ, 0 < n ∧ u n / n < L := by
      rw [Subadditive.lim] at hL
      rcases exists_lt_of_csInf_lt (by simp) hL with ⟨x, hx, xL⟩
      rcases (mem_image _ _ _).1 hx with ⟨n, hn, rfl⟩
      exact ⟨n, zero_lt_one.trans_le hn, xL⟩
    exact h.eventually_div_lt_of_div_lt npos.ne' hn

end Subadditive
```
