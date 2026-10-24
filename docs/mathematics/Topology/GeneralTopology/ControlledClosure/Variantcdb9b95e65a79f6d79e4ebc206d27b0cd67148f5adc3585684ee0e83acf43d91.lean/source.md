# Complete source: GRWTSK.Topology.GeneralTopology.ControlledClosure.Variantcdb9b95e65a79f6d79e4ebc206d27b0cd67148f5adc3585684ee0e83acf43d91

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4dbb501befdde48023e7fb858cac320fa345fcef` · SHA-256 `a23dd3ea358ee8c5aedfe5741d3fa14302c5494358572d0338ddb09c84cdefaf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ControlledClosureOfComplete.Variant831fc5af7e6b45b3e2d7ef894147dca6e16c83564c161eb3a2d299e87da658bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"831fc5af7e6b45b3e2d7ef894147dca6e16c83564c161eb3a2d299e87da658bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ControlledClosureOfComplete.Variant831fc5af7e6b45b3e2d7ef894147dca6e16c83564c161eb3a2d299e87da658bf","mathematical_subject":"Topology.GeneralTopology","original_sha256":"831fc5af7e6b45b3e2d7ef894147dca6e16c83564c161eb3a2d299e87da658bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/Normed/Group/ControlledClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot
-/
import Mathlib.Analysis.Normed.Group.Hom
import Mathlib.Analysis.SpecificLimits.Normed


namespace GRWTSK.Topology.GeneralTopology.ControlledClosureOfComplete.Variant831fc5af7e6b45b3e2d7ef894147dca6e16c83564c161eb3a2d299e87da658bf

#align_import analysis.normed.group.controlled_closure from "leanprover-community/mathlib"@"f2ce6086713c78a7f880485f7917ea547a215982"

/-! # Extending a backward bound on a normed group homomorphism from a dense set

Possible TODO (from the PR's review, https://github.com/leanprover-community/mathlib/pull/8498 ):
"This feels a lot like the second step in the proof of the Banach open mapping theorem
(`exists_preimage_norm_le`) ... wonder if it would be possible to refactor it using one of [the
lemmas in this file]."
-/


open Filter Finset

open Topology BigOperators

variable {G : Type*} [NormedAddCommGroup G] [CompleteSpace G]

variable {H : Type*} [NormedAddCommGroup H]

/-- Given `f : NormedAddGroupHom G H` for some complete `G` and a subgroup `K` of `H`, if every
element `x` of `K` has a preimage under `f` whose norm is at most `C*‖x‖` then the same holds for
elements of the (topological) closure of `K` with constant `C+ε` instead of `C`, for any
positive `ε`.
-/
theorem controlled_closure_of_complete {f : NormedAddGroupHom G H} {K : AddSubgroup H} {C ε : ℝ}
    (hC : 0 < C) (hε : 0 < ε) (hyp : f.SurjectiveOnWith K C) :
    f.SurjectiveOnWith K.topologicalClosure (C + ε) := by
  rintro (h : H) (h_in : h ∈ K.topologicalClosure)
  -- We first get rid of the easy case where `h = 0`.
  by_cases hyp_h : h = 0
  · rw [hyp_h]
    use 0
    simp
  /- The desired preimage will be constructed as the sum of a series. Convergence of
    the series will be guaranteed by completeness of `G`. We first write `h` as the sum
    of a sequence `v` of elements of `K` which starts close to `h` and then quickly goes to zero.
    The sequence `b` below quantifies this. -/
  set b : ℕ → ℝ := fun i => (1 / 2) ^ i * (ε * ‖h‖ / 2) / C
  have b_pos : ∀ i, 0 < b i := by
    intro i
    field_simp [hC]
    exact
      div_pos (mul_pos hε (norm_pos_iff.mpr hyp_h)) (mul_pos (by norm_num : (0 : ℝ) < 2 ^ i * 2) hC)
  obtain
    ⟨v : ℕ → H, lim_v : Tendsto (fun n : ℕ => ∑ k in range (n + 1), v k) atTop (𝓝 h), v_in :
      ∀ n, v n ∈ K, hv₀ : ‖v 0 - h‖ < b 0, hv : ∀ n > 0, ‖v n‖ < b n⟩ :=
    controlled_sum_of_mem_closure h_in b_pos
  /- The controlled surjectivity assumption on `f` allows to build preimages `u n` for all
    elements `v n` of the `v` sequence. -/
  have : ∀ n, ∃ m' : G, f m' = v n ∧ ‖m'‖ ≤ C * ‖v n‖ := fun n : ℕ => hyp (v n) (v_in n)
  choose u hu hnorm_u using this
  /- The desired series `s` is then obtained by summing `u`. We then check our choice of
    `b` ensures `s` is Cauchy. -/
  set s : ℕ → G := fun n => ∑ k in range (n + 1), u k
  have : CauchySeq s := by
    apply NormedAddCommGroup.cauchy_series_of_le_geometric'' (by norm_num) one_half_lt_one
    rintro n (hn : n ≥ 1)
    calc
      ‖u n‖ ≤ C * ‖v n‖ := hnorm_u n
      _ ≤ C * b n := by gcongr; exact (hv _ <| Nat.succ_le_iff.mp hn).le
      _ = (1 / 2) ^ n * (ε * ‖h‖ / 2) := by simp [mul_div_cancel' _ hC.ne.symm]
      _ = ε * ‖h‖ / 2 * (1 / 2) ^ n := mul_comm _ _
  -- We now show that the limit `g` of `s` is the desired preimage.
  obtain ⟨g : G, hg⟩ := cauchySeq_tendsto_of_complete this
  refine' ⟨g, _, _⟩
  · -- We indeed get a preimage. First note:
    have : f ∘ s = fun n => ∑ k in range (n + 1), v k := by
      ext n
      simp [map_sum, hu]
    /- In the above equality, the left-hand-side converges to `f g` by continuity of `f` and
      definition of `g` while the right-hand-side converges to `h` by construction of `v` so
      `g` is indeed a preimage of `h`. -/
    rw [← this] at lim_v
    exact tendsto_nhds_unique ((f.continuous.tendsto g).comp hg) lim_v
  · -- Then we need to estimate the norm of `g`, using our careful choice of `b`.
    suffices : ∀ n, ‖s n‖ ≤ (C + ε) * ‖h‖
    exact le_of_tendsto' (continuous_norm.continuousAt.tendsto.comp hg) this
    intro n
    have hnorm₀ : ‖u 0‖ ≤ C * b 0 + C * ‖h‖ := by
      have :=
        calc
          ‖v 0‖ ≤ ‖h‖ + ‖v 0 - h‖ := norm_le_insert' _ _
          _ ≤ ‖h‖ + b 0 := by gcongr
      calc
        ‖u 0‖ ≤ C * ‖v 0‖ := hnorm_u 0
        _ ≤ C * (‖h‖ + b 0) := by gcongr
        _ = C * b 0 + C * ‖h‖ := by rw [add_comm, mul_add]
    have : (∑ k in range (n + 1), C * b k) ≤ ε * ‖h‖ :=
      calc
        (∑ k in range (n + 1), C * b k) = (∑ k in range (n + 1), (1 / 2 : ℝ) ^ k) * (ε * ‖h‖ / 2) :=
          by simp only [mul_div_cancel' _ hC.ne.symm, ← sum_mul]
        _ ≤ 2 * (ε * ‖h‖ / 2) := by gcongr; apply sum_geometric_two_le
        _ = ε * ‖h‖ := mul_div_cancel' _ two_ne_zero
    calc
      ‖s n‖ ≤ ∑ k in range (n + 1), ‖u k‖ := norm_sum_le _ _
      _ = (∑ k in range n, ‖u (k + 1)‖) + ‖u 0‖ := (sum_range_succ' _ _)
      _ ≤ (∑ k in range n, C * ‖v (k + 1)‖) + ‖u 0‖ := by gcongr; apply hnorm_u
      _ ≤ (∑ k in range n, C * b (k + 1)) + (C * b 0 + C * ‖h‖) := by
        gcongr with k; exact (hv _ k.succ_pos).le
      _ = (∑ k in range (n + 1), C * b k) + C * ‖h‖ := by rw [← add_assoc, sum_range_succ']
      _ ≤ (C + ε) * ‖h‖ := by
        rw [add_comm, add_mul]
        apply add_le_add_left this
#align controlled_closure_of_complete controlled_closure_of_complete

/-- Given `f : NormedAddGroupHom G H` for some complete `G`, if every element `x` of the image of
an isometric immersion `j : NormedAddGroupHom K H` has a preimage under `f` whose norm is at most
`C*‖x‖` then the same holds for elements of the (topological) closure of this image with constant
`C+ε` instead of `C`, for any positive `ε`.
This is useful in particular if `j` is the inclusion of a normed group into its completion
(in this case the closure is the full target group).
-/
theorem controlled_closure_range_of_complete {f : NormedAddGroupHom G H} {K : Type*}
    [SeminormedAddCommGroup K] {j : NormedAddGroupHom K H} (hj : ∀ x, ‖j x‖ = ‖x‖) {C ε : ℝ}
    (hC : 0 < C) (hε : 0 < ε) (hyp : ∀ k, ∃ g, f g = j k ∧ ‖g‖ ≤ C * ‖k‖) :
    f.SurjectiveOnWith j.range.topologicalClosure (C + ε) := by
  replace hyp : ∀ h ∈ j.range, ∃ g, f g = h ∧ ‖g‖ ≤ C * ‖h‖
  · intro h h_in
    rcases(j.mem_range _).mp h_in with ⟨k, rfl⟩
    rw [hj]
    exact hyp k
  exact controlled_closure_of_complete hC hε hyp
#align controlled_closure_range_of_complete controlled_closure_range_of_complete
```
