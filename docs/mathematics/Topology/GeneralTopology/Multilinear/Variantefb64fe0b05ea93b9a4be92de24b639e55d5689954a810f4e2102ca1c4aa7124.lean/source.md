# Complete source: GRWTSK.Topology.GeneralTopology.Multilinear.Variantefb64fe0b05ea93b9a4be92de24b639e55d5689954a810f4e2102ca1c4aa7124

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb7d6a77e37c67ebd04eb70781e0d39590c8ab69` · SHA-256 `cd29db0eddc7b3d12dbc6437cfdf3d9a1f008c2f2f21fc7fbd34b452c2919c6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.BoundOfShell.Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.BoundOfShell.Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"db427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/NormedSpace/Multilinear.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Analysis.NormedSpace.OperatorNorm
import Mathlib.Topology.Algebra.Module.Multilinear


namespace GRWTSK.Topology.GeneralTopology.BoundOfShell.Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b

#align_import analysis.normed_space.multilinear from "leanprover-community/mathlib"@"f40476639bac089693a489c9e354ebd75dc0f886"

/-!
# Operator norm on the space of continuous multilinear maps

When `f` is a continuous multilinear map in finitely many variables, we define its norm `‖f‖` as the
smallest number such that `‖f m‖ ≤ ‖f‖ * ∏ i, ‖m i‖` for all `m`.

We show that it is indeed a norm, and prove its basic properties.

## Main results

Let `f` be a multilinear map in finitely many variables.
* `exists_bound_of_continuous` asserts that, if `f` is continuous, then there exists `C > 0`
  with `‖f m‖ ≤ C * ∏ i, ‖m i‖` for all `m`.
* `continuous_of_bound`, conversely, asserts that this bound implies continuity.
* `mkContinuous` constructs the associated continuous multilinear map.

Let `f` be a continuous multilinear map in finitely many variables.
* `‖f‖` is its norm, i.e., the smallest number such that `‖f m‖ ≤ ‖f‖ * ∏ i, ‖m i‖` for
  all `m`.
* `le_op_norm f m` asserts the fundamental inequality `‖f m‖ ≤ ‖f‖ * ∏ i, ‖m i‖`.
* `norm_image_sub_le f m₁ m₂` gives a control of the difference `f m₁ - f m₂` in terms of
  `‖f‖` and `‖m₁ - m₂‖`.

We also register isomorphisms corresponding to currying or uncurrying variables, transforming a
continuous multilinear function `f` in `n+1` variables into a continuous linear function taking
values in continuous multilinear functions in `n` variables, and also into a continuous multilinear
function in `n` variables taking values in continuous linear functions. These operations are called
`f.curryLeft` and `f.curryRight` respectively (with inverses `f.uncurryLeft` and
`f.uncurryRight`). They induce continuous linear equivalences between spaces of
continuous multilinear functions in `n+1` variables and spaces of continuous linear functions into
continuous multilinear functions in `n` variables (resp. continuous multilinear functions in `n`
variables taking values in continuous linear functions), called respectively
`continuousMultilinearCurryLeftEquiv` and `continuousMultilinearCurryRightEquiv`.

## Implementation notes

We mostly follow the API (and the proofs) of `OperatorNorm.lean`, with the additional complexity
that we should deal with multilinear maps in several variables. The currying/uncurrying
constructions are based on those in `Multilinear.lean`.

From the mathematical point of view, all the results follow from the results on operator norm in
one variable, by applying them to one variable after the other through currying. However, this
is only well defined when there is an order on the variables (for instance on `Fin n`) although
the final result is independent of the order. While everything could be done following this
approach, it turns out that direct proofs are easier and more efficient.
-/


noncomputable section

open BigOperators NNReal

open Finset Metric

/-
Porting note: These lines are not required in Mathlib4.
```lean
attribute [local instance 1001]
  AddCommGroup.toAddCommMonoid NormedAddCommGroup.toAddCommGroup NormedSpace.toModule'
```
-/

/-!
### Type variables

We use the following type variables in this file:

* `𝕜` : a `NontriviallyNormedField`;
* `ι`, `ι'` : finite index types with decidable equality;
* `E`, `E₁` : families of normed vector spaces over `𝕜` indexed by `i : ι`;
* `E'` : a family of normed vector spaces over `𝕜` indexed by `i' : ι'`;
* `Ei` : a family of normed vector spaces over `𝕜` indexed by `i : Fin (Nat.succ n)`;
* `G`, `G'` : normed vector spaces over `𝕜`.
-/


universe u v v' wE wE₁ wE' wEi wG wG'

variable {𝕜 : Type u} {ι : Type v} {ι' : Type v'} {n : ℕ} {E : ι → Type wE} {E₁ : ι → Type wE₁}
  {E' : ι' → Type wE'} {Ei : Fin n.succ → Type wEi} {G : Type wG} {G' : Type wG'} [Fintype ι]
  [Fintype ι'] [NontriviallyNormedField 𝕜] [∀ i, NormedAddCommGroup (E i)]
  [∀ i, NormedSpace 𝕜 (E i)] [∀ i, NormedAddCommGroup (E₁ i)] [∀ i, NormedSpace 𝕜 (E₁ i)]
  [∀ i, NormedAddCommGroup (E' i)] [∀ i, NormedSpace 𝕜 (E' i)] [∀ i, NormedAddCommGroup (Ei i)]
  [∀ i, NormedSpace 𝕜 (Ei i)] [NormedAddCommGroup G] [NormedSpace 𝕜 G] [NormedAddCommGroup G']
  [NormedSpace 𝕜 G']

/-!
### Continuity properties of multilinear maps

We relate continuity of multilinear maps to the inequality `‖f m‖ ≤ C * ∏ i, ‖m i‖`, in
both directions. Along the way, we prove useful bounds on the difference `‖f m₁ - f m₂‖`.
-/


namespace MultilinearMap

variable (f : MultilinearMap 𝕜 E G)

/-- If a multilinear map in finitely many variables on normed spaces satisfies the inequality
`‖f m‖ ≤ C * ∏ i, ‖m i‖` on a shell `ε i / ‖c i‖ < ‖m i‖ < ε i` for some positive numbers `ε i`
and elements `c i : 𝕜`, `1 < ‖c i‖`, then it satisfies this inequality for all `m`. -/
theorem bound_of_shell {ε : ι → ℝ} {C : ℝ} (hε : ∀ i, 0 < ε i) {c : ι → 𝕜} (hc : ∀ i, 1 < ‖c i‖)
    (hf : ∀ m : ∀ i, E i, (∀ i, ε i / ‖c i‖ ≤ ‖m i‖) → (∀ i, ‖m i‖ < ε i) → ‖f m‖ ≤ C * ∏ i, ‖m i‖)
    (m : ∀ i, E i) : ‖f m‖ ≤ C * ∏ i, ‖m i‖ := by
  rcases em (∃ i, m i = 0) with (⟨i, hi⟩ | hm) <;> [skip; push_neg at hm]
  · simp [f.map_coord_zero i hi, prod_eq_zero (mem_univ i), hi]
  choose δ hδ0 hδm_lt hle_δm _ using fun i => rescale_to_shell (hc i) (hε i) (hm i)
  have hδ0 : 0 < ∏ i, ‖δ i‖ := prod_pos fun i _ => norm_pos_iff.2 (hδ0 i)
  simpa [map_smul_univ, norm_smul, prod_mul_distrib, mul_left_comm C, mul_le_mul_left hδ0] using
    hf (fun i => δ i • m i) hle_δm hδm_lt
#align multilinear_map.bound_of_shell MultilinearMap.bound_of_shell

/-- If a multilinear map in finitely many variables on normed spaces is continuous, then it
satisfies the inequality `‖f m‖ ≤ C * ∏ i, ‖m i‖`, for some `C` which can be chosen to be
positive. -/
theorem exists_bound_of_continuous (hf : Continuous f) :
    ∃ C : ℝ, 0 < C ∧ ∀ m, ‖f m‖ ≤ C * ∏ i, ‖m i‖ := by
  cases isEmpty_or_nonempty ι
  · refine' ⟨‖f 0‖ + 1, add_pos_of_nonneg_of_pos (norm_nonneg _) zero_lt_one, fun m => _⟩
    obtain rfl : m = 0
    exact funext (IsEmpty.elim ‹_›)
    simp [univ_eq_empty, zero_le_one]
  obtain ⟨ε : ℝ, ε0 : 0 < ε, hε : ∀ m : ∀ i, E i, ‖m - 0‖ < ε → ‖f m - f 0‖ < 1⟩ :=
    NormedAddCommGroup.tendsto_nhds_nhds.1 (hf.tendsto 0) 1 zero_lt_one
  simp only [sub_zero, f.map_zero] at hε
  rcases NormedField.exists_one_lt_norm 𝕜 with ⟨c, hc⟩
  have : 0 < (‖c‖ / ε) ^ Fintype.card ι := pow_pos (div_pos (zero_lt_one.trans hc) ε0) _
  refine' ⟨_, this, _⟩
  refine' f.bound_of_shell (fun _ => ε0) (fun _ => hc) fun m hcm hm => _
  refine' (hε m ((pi_norm_lt_iff ε0).2 hm)).le.trans _
  rw [← div_le_iff' this, one_div, ← inv_pow, inv_div, Fintype.card, ← prod_const]
  exact prod_le_prod (fun _ _ => div_nonneg ε0.le (norm_nonneg _)) fun i _ => hcm i
#align multilinear_map.exists_bound_of_continuous MultilinearMap.exists_bound_of_continuous

/-- If `f` satisfies a boundedness property around `0`, one can deduce a bound on `f m₁ - f m₂`
using the multilinearity. Here, we give a precise but hard to use version. See
`norm_image_sub_le_of_bound` for a less precise but more usable version. The bound reads
`‖f m - f m'‖ ≤
  C * ‖m 1 - m' 1‖ * max ‖m 2‖ ‖m' 2‖ * max ‖m 3‖ ‖m' 3‖ * ... * max ‖m n‖ ‖m' n‖ + ...`,
where the other terms in the sum are the same products where `1` is replaced by any `i`. -/
theorem norm_image_sub_le_of_bound' [DecidableEq ι] {C : ℝ} (hC : 0 ≤ C)
    (H : ∀ m, ‖f m‖ ≤ C * ∏ i, ‖m i‖) (m₁ m₂ : ∀ i, E i) :
    ‖f m₁ - f m₂‖ ≤ C * ∑ i, ∏ j, if j = i then ‖m₁ i - m₂ i‖ else max ‖m₁ j‖ ‖m₂ j‖ := by
  have A :
    ∀ s : Finset ι,
      ‖f m₁ - f (s.piecewise m₂ m₁)‖ ≤
        C * ∑ i in s, ∏ j, if j = i then ‖m₁ i - m₂ i‖ else max ‖m₁ j‖ ‖m₂ j‖ := by
    intro s
    induction' s using Finset.induction with i s his Hrec
    · simp
    have I :
      ‖f (s.piecewise m₂ m₁) - f ((insert i s).piecewise m₂ m₁)‖ ≤
        C * ∏ j, if j = i then ‖m₁ i - m₂ i‖ else max ‖m₁ j‖ ‖m₂ j‖ := by
      have A : (insert i s).piecewise m₂ m₁ = Function.update (s.piecewise m₂ m₁) i (m₂ i) :=
        s.piecewise_insert _ _ _
      have B : s.piecewise m₂ m₁ = Function.update (s.piecewise m₂ m₁) i (m₁ i) := by
        ext j
        by_cases h : j = i
        · rw [h]
          simp [his]
        · simp [h]
      rw [B, A, ← f.map_sub]
      apply le_trans (H _)
      gcongr with j
      · exact fun j _ => norm_nonneg _
      by_cases h : j = i
      · rw [h]
        simp
      · by_cases h' : j ∈ s <;> simp [h', h, le_refl]
    calc
      ‖f m₁ - f ((insert i s).piecewise m₂ m₁)‖ ≤
          ‖f m₁ - f (s.piecewise m₂ m₁)‖ +
            ‖f (s.piecewise m₂ m₁) - f ((insert i s).piecewise m₂ m₁)‖ := by
        rw [← dist_eq_norm, ← dist_eq_norm, ← dist_eq_norm]
        exact dist_triangle _ _ _
      _ ≤
          (C * ∑ i in s, ∏ j, if j = i then ‖m₁ i - m₂ i‖ else max ‖m₁ j‖ ‖m₂ j‖) +
            C * ∏ j, if j = i then ‖m₁ i - m₂ i‖ else max ‖m₁ j‖ ‖m₂ j‖ :=
        (add_le_add Hrec I)
      _ = C * ∑ i in insert i s, ∏ j, if j = i then ‖m₁ i - m₂ i‖ else max ‖m₁ j‖ ‖m₂ j‖ := by
        simp [his, add_comm, left_distrib]
  convert A univ
  simp
#align multilinear_map.norm_image_sub_le_of_bound' MultilinearMap.norm_image_sub_le_of_bound'

/-- If `f` satisfies a boundedness property around `0`, one can deduce a bound on `f m₁ - f m₂`
using the multilinearity. Here, we give a usable but not very precise version. See
`norm_image_sub_le_of_bound'` for a more precise but less usable version. The bound is
`‖f m - f m'‖ ≤ C * card ι * ‖m - m'‖ * (max ‖m‖ ‖m'‖) ^ (card ι - 1)`. -/
theorem norm_image_sub_le_of_bound {C : ℝ} (hC : 0 ≤ C) (H : ∀ m, ‖f m‖ ≤ C * ∏ i, ‖m i‖)
    (m₁ m₂ : ∀ i, E i) :
    ‖f m₁ - f m₂‖ ≤ C * Fintype.card ι * max ‖m₁‖ ‖m₂‖ ^ (Fintype.card ι - 1) * ‖m₁ - m₂‖ := by
  classical
  have A :
    ∀ i : ι,
      ∏ j, (if j = i then ‖m₁ i - m₂ i‖ else max ‖m₁ j‖ ‖m₂ j‖) ≤
        ‖m₁ - m₂‖ * max ‖m₁‖ ‖m₂‖ ^ (Fintype.card ι - 1) := by
    intro i
    calc
      ∏ j, (if j = i then ‖m₁ i - m₂ i‖ else max ‖m₁ j‖ ‖m₂ j‖) ≤
          ∏ j : ι, Function.update (fun _ => max ‖m₁‖ ‖m₂‖) i ‖m₁ - m₂‖ j := by
        apply prod_le_prod
        · intro j _
          by_cases h : j = i <;> simp [h, norm_nonneg]
        · intro j _
          by_cases h : j = i
          · rw [h]
            simp
            exact norm_le_pi_norm (m₁ - m₂) i
          · simp [h, -le_max_iff, -max_le_iff, max_le_max, norm_le_pi_norm (_ : ∀ i, E i)]
      _ = ‖m₁ - m₂‖ * max ‖m₁‖ ‖m₂‖ ^ (Fintype.card ι - 1) := by
        rw [prod_update_of_mem (Finset.mem_univ _)]
        simp [card_univ_diff]
  calc
    ‖f m₁ - f m₂‖ ≤ C * ∑ i, ∏ j, if j = i then ‖m₁ i - m₂ i‖ else max ‖m₁ j‖ ‖m₂ j‖ :=
      f.norm_image_sub_le_of_bound' hC H m₁ m₂
    _ ≤ C * ∑ i, ‖m₁ - m₂‖ * max ‖m₁‖ ‖m₂‖ ^ (Fintype.card ι - 1) := by gcongr; apply A
    _ = C * Fintype.card ι * max ‖m₁‖ ‖m₂‖ ^ (Fintype.card ι - 1) * ‖m₁ - m₂‖ := by
      rw [sum_const, card_univ, nsmul_eq_mul]
      ring
#align multilinear_map.norm_image_sub_le_of_bound MultilinearMap.norm_image_sub_le_of_bound

/-- If a multilinear map satisfies an inequality `‖f m‖ ≤ C * ∏ i, ‖m i‖`, then it is
continuous. -/
theorem continuous_of_bound (C : ℝ) (H : ∀ m, ‖f m‖ ≤ C * ∏ i, ‖m i‖) : Continuous f := by
  let D := max C 1
  have D_pos : 0 ≤ D := le_trans zero_le_one (le_max_right _ _)
  replace H : ∀ m, ‖f m‖ ≤ D * ∏ i, ‖m i‖
  · intro m
    apply le_trans (H m) (mul_le_mul_of_nonneg_right (le_max_left _ _) _)
    exact prod_nonneg fun (i : ι) _ => norm_nonneg (m i)
  refine' continuous_iff_continuousAt.2 fun m => _
  refine'
    continuousAt_of_locally_lipschitz zero_lt_one
      (D * Fintype.card ι * (‖m‖ + 1) ^ (Fintype.card ι - 1)) fun m' h' => _
  rw [dist_eq_norm, dist_eq_norm]
  have : max ‖m'‖ ‖m‖ ≤ ‖m‖ + 1 := by
    simp [zero_le_one, norm_le_of_mem_closedBall (le_of_lt h')]
  calc
    ‖f m' - f m‖ ≤ D * Fintype.card ι * max ‖m'‖ ‖m‖ ^ (Fintype.card ι - 1) * ‖m' - m‖ :=
      f.norm_image_sub_le_of_bound D_pos H m' m
    _ ≤ D * Fintype.card ι * (‖m‖ + 1) ^ (Fintype.card ι - 1) * ‖m' - m‖ := by gcongr
#align multilinear_map.continuous_of_bound MultilinearMap.continuous_of_bound

/-- Constructing a continuous multilinear map from a multilinear map satisfying a boundedness
condition. -/
def mkContinuous (C : ℝ) (H : ∀ m, ‖f m‖ ≤ C * ∏ i, ‖m i‖) : ContinuousMultilinearMap 𝕜 E G :=
  { f with cont := f.continuous_of_bound C H }
#align multilinear_map.mk_continuous MultilinearMap.mkContinuous

@[simp]
theorem coe_mkContinuous (C : ℝ) (H : ∀ m, ‖f m‖ ≤ C * ∏ i, ‖m i‖) : ⇑(f.mkContinuous C H) = f :=
  rfl
#align multilinear_map.coe_mk_continuous MultilinearMap.coe_mkContinuous

/-- Given a multilinear map in `n` variables, if one restricts it to `k` variables putting `z` on
the other coordinates, then the resulting restricted function satisfies an inequality
`‖f.restr v‖ ≤ C * ‖z‖^(n-k) * Π ‖v i‖` if the original function satisfies `‖f v‖ ≤ C * Π ‖v i‖`. -/
theorem restr_norm_le {k n : ℕ} (f : (MultilinearMap 𝕜 (fun _ : Fin n => G) G' : _))
    (s : Finset (Fin n)) (hk : s.card = k) (z : G) {C : ℝ} (H : ∀ m, ‖f m‖ ≤ C * ∏ i, ‖m i‖)
    (v : Fin k → G) : ‖f.restr s hk z v‖ ≤ C * ‖z‖ ^ (n - k) * ∏ i, ‖v i‖ := by
  rw [mul_right_comm, mul_assoc]
  convert H _ using 2
  simp only [apply_dite norm, Fintype.prod_dite, prod_const ‖z‖, Finset.card_univ,
    Fintype.card_of_subtype sᶜ fun _ => mem_compl, card_compl, Fintype.card_fin, hk, mk_coe, ←
    (s.orderIsoOfFin hk).symm.bijective.prod_comp fun x => ‖v x‖]
  convert rfl
#align multilinear_map.restr_norm_le MultilinearMap.restr_norm_le

end MultilinearMap

/-!
### Continuous multilinear maps

We define the norm `‖f‖` of a continuous multilinear map `f` in finitely many variables as the
smallest number such that `‖f m‖ ≤ ‖f‖ * ∏ i, ‖m i‖` for all `m`. We show that this
defines a normed space structure on `ContinuousMultilinearMap 𝕜 E G`.
-/


namespace ContinuousMultilinearMap

variable (c : 𝕜) (f g : ContinuousMultilinearMap 𝕜 E G) (m : ∀ i, E i)

theorem bound : ∃ C : ℝ, 0 < C ∧ ∀ m, ‖f m‖ ≤ C * ∏ i, ‖m i‖ :=
  f.toMultilinearMap.exists_bound_of_continuous f.2
#align continuous_multilinear_map.bound ContinuousMultilinearMap.bound

open Real

/-- The operator norm of a continuous multilinear map is the inf of all its bounds. -/
def opNorm :=
  sInf { c | 0 ≤ (c : ℝ) ∧ ∀ m, ‖f m‖ ≤ c * ∏ i, ‖m i‖ }
#align continuous_multilinear_map.op_norm ContinuousMultilinearMap.opNorm

instance hasOpNorm : Norm (ContinuousMultilinearMap 𝕜 E G) :=
  ⟨opNorm⟩
#align continuous_multilinear_map.has_op_norm ContinuousMultilinearMap.hasOpNorm

/-- An alias of `ContinuousMultilinearMap.hasOpNorm` with non-dependent types to help typeclass
search. -/
instance hasOpNorm' : Norm (ContinuousMultilinearMap 𝕜 (fun _ : ι => G) G') :=
  ContinuousMultilinearMap.hasOpNorm
#align continuous_multilinear_map.has_op_norm' ContinuousMultilinearMap.hasOpNorm'

theorem norm_def : ‖f‖ = sInf { c | 0 ≤ (c : ℝ) ∧ ∀ m, ‖f m‖ ≤ c * ∏ i, ‖m i‖ } :=
  rfl
#align continuous_multilinear_map.norm_def ContinuousMultilinearMap.norm_def

-- So that invocations of `le_csInf` make sense: we show that the set of
-- bounds is nonempty and bounded below.
theorem bounds_nonempty {f : ContinuousMultilinearMap 𝕜 E G} :
    ∃ c, c ∈ { c | 0 ≤ c ∧ ∀ m, ‖f m‖ ≤ c * ∏ i, ‖m i‖ } :=
  let ⟨M, hMp, hMb⟩ := f.bound
  ⟨M, le_of_lt hMp, hMb⟩
#align continuous_multilinear_map.bounds_nonempty ContinuousMultilinearMap.bounds_nonempty

theorem bounds_bddBelow {f : ContinuousMultilinearMap 𝕜 E G} :
    BddBelow { c | 0 ≤ c ∧ ∀ m, ‖f m‖ ≤ c * ∏ i, ‖m i‖ } :=
  ⟨0, fun _ ⟨hn, _⟩ => hn⟩
#align continuous_multilinear_map.bounds_bdd_below ContinuousMultilinearMap.bounds_bddBelow

theorem op_norm_nonneg : 0 ≤ ‖f‖ :=
  le_csInf bounds_nonempty fun _ ⟨hx, _⟩ => hx
#align continuous_multilinear_map.op_norm_nonneg ContinuousMultilinearMap.op_norm_nonneg

/-- The fundamental property of the operator norm of a continuous multilinear map:
`‖f m‖` is bounded by `‖f‖` times the product of the `‖m i‖`. -/
theorem le_op_norm : ‖f m‖ ≤ ‖f‖ * ∏ i, ‖m i‖ := by
  have A : 0 ≤ ∏ i, ‖m i‖ := prod_nonneg fun j _ => norm_nonneg _
  cases' A.eq_or_lt with h hlt
  · rcases prod_eq_zero_iff.1 h.symm with ⟨i, _, hi⟩
    rw [norm_eq_zero] at hi
    have : f m = 0 := f.map_coord_zero i hi
    rw [this, norm_zero]
    exact mul_nonneg (op_norm_nonneg f) A
  · rw [← div_le_iff hlt]
    apply le_csInf bounds_nonempty
    rintro c ⟨_, hc⟩
    rw [div_le_iff hlt]
    apply hc
#align continuous_multilinear_map.le_op_norm ContinuousMultilinearMap.le_op_norm

theorem le_of_op_norm_le {C : ℝ} (h : ‖f‖ ≤ C) : ‖f m‖ ≤ C * ∏ i, ‖m i‖ :=
  (f.le_op_norm m).trans <| mul_le_mul_of_nonneg_right h (prod_nonneg fun i _ => norm_nonneg (m i))
#align continuous_multilinear_map.le_of_op_norm_le ContinuousMultilinearMap.le_of_op_norm_le

theorem ratio_le_op_norm : (‖f m‖ / ∏ i, ‖m i‖) ≤ ‖f‖ :=
  div_le_of_nonneg_of_le_mul (prod_nonneg fun _ _ => norm_nonneg _) (op_norm_nonneg _)
    (f.le_op_norm m)
#align continuous_multilinear_map.ratio_le_op_norm ContinuousMultilinearMap.ratio_le_op_norm

/-- The image of the unit ball under a continuous multilinear map is bounded. -/
theorem unit_le_op_norm (h : ‖m‖ ≤ 1) : ‖f m‖ ≤ ‖f‖ :=
  calc
    ‖f m‖ ≤ ‖f‖ * ∏ i, ‖m i‖ := f.le_op_norm m
    _ ≤ ‖f‖ * ∏ i : ι, 1 :=
      (mul_le_mul_of_nonneg_left
        (prod_le_prod (fun i _ => norm_nonneg _) fun i _ =>
          le_trans (norm_le_pi_norm (_ : ∀ i, E i) _) h)
        (op_norm_nonneg f))
    _ = ‖f‖ := by simp
#align continuous_multilinear_map.unit_le_op_norm ContinuousMultilinearMap.unit_le_op_norm

/-- If one controls the norm of every `f x`, then one controls the norm of `f`. -/
theorem op_norm_le_bound {M : ℝ} (hMp : 0 ≤ M) (hM : ∀ m, ‖f m‖ ≤ M * ∏ i, ‖m i‖) : ‖f‖ ≤ M :=
  csInf_le bounds_bddBelow ⟨hMp, hM⟩
#align continuous_multilinear_map.op_norm_le_bound ContinuousMultilinearMap.op_norm_le_bound

/-- The operator norm satisfies the triangle inequality. -/
theorem op_norm_add_le : ‖f + g‖ ≤ ‖f‖ + ‖g‖ :=
  csInf_le bounds_bddBelow
    ⟨add_nonneg (op_norm_nonneg _) (op_norm_nonneg _), fun x => by
      rw [add_mul]
      exact norm_add_le_of_le (le_op_norm _ _) (le_op_norm _ _)⟩
#align continuous_multilinear_map.op_norm_add_le ContinuousMultilinearMap.op_norm_add_le

theorem op_norm_zero : ‖(0 : ContinuousMultilinearMap 𝕜 E G)‖ = 0 :=
  (op_norm_nonneg _).antisymm' <| op_norm_le_bound 0 le_rfl fun m => by simp
#align continuous_multilinear_map.op_norm_zero ContinuousMultilinearMap.op_norm_zero

/-- A continuous linear map is zero iff its norm vanishes. -/
theorem op_norm_zero_iff : ‖f‖ = 0 ↔ f = 0 :=
  ⟨fun h => by
    ext m
    simpa [h] using f.le_op_norm m, by
    rintro rfl
    exact op_norm_zero⟩
#align continuous_multilinear_map.op_norm_zero_iff ContinuousMultilinearMap.op_norm_zero_iff

section

variable {𝕜' : Type*} [NormedField 𝕜'] [NormedSpace 𝕜' G] [SMulCommClass 𝕜 𝕜' G]

theorem op_norm_smul_le (c : 𝕜') : ‖c • f‖ ≤ ‖c‖ * ‖f‖ :=
  (c • f).op_norm_le_bound (mul_nonneg (norm_nonneg _) (op_norm_nonneg _))
    (by
      intro m
      erw [norm_smul, mul_assoc]
      exact mul_le_mul_of_nonneg_left (le_op_norm _ _) (norm_nonneg _))
#align continuous_multilinear_map.op_norm_smul_le ContinuousMultilinearMap.op_norm_smul_le

theorem op_norm_neg : ‖-f‖ = ‖f‖ := by
  rw [norm_def]
  apply congr_arg
  ext
  simp
#align continuous_multilinear_map.op_norm_neg ContinuousMultilinearMap.op_norm_neg

/-- Continuous multilinear maps themselves form a normed space with respect to
    the operator norm. -/
instance normedAddCommGroup : NormedAddCommGroup (ContinuousMultilinearMap 𝕜 E G) :=
  AddGroupNorm.toNormedAddCommGroup
    { toFun := norm
      map_zero' := op_norm_zero
      neg' := op_norm_neg
      add_le' := op_norm_add_le
      eq_zero_of_map_eq_zero' := fun f => f.op_norm_zero_iff.1 }
#align continuous_multilinear_map.normed_add_comm_group ContinuousMultilinearMap.normedAddCommGroup

/-- An alias of `ContinuousMultilinearMap.normedAddCommGroup` with non-dependent types to help
typeclass search. -/
instance normedAddCommGroup' :
    NormedAddCommGroup (ContinuousMultilinearMap 𝕜 (fun _ : ι => G) G') :=
  ContinuousMultilinearMap.normedAddCommGroup
#align continuous_multilinear_map.normed_add_comm_group' ContinuousMultilinearMap.normedAddCommGroup'

instance normedSpace : NormedSpace 𝕜' (ContinuousMultilinearMap 𝕜 E G) :=
  ⟨fun c f => f.op_norm_smul_le c⟩
#align continuous_multilinear_map.normed_space ContinuousMultilinearMap.normedSpace

/-- An alias of `ContinuousMultilinearMap.normedSpace` with non-dependent types to help typeclass
search. -/
instance normedSpace' : NormedSpace 𝕜' (ContinuousMultilinearMap 𝕜 (fun _ : ι => G') G) :=
  ContinuousMultilinearMap.normedSpace
#align continuous_multilinear_map.normed_space' ContinuousMultilinearMap.normedSpace'

theorem le_op_norm_mul_prod_of_le {b : ι → ℝ} (hm : ∀ i, ‖m i‖ ≤ b i) : ‖f m‖ ≤ ‖f‖ * ∏ i, b i :=
  (f.le_op_norm m).trans <|
    mul_le_mul_of_nonneg_left (prod_le_prod (fun _ _ => norm_nonneg _) fun i _ => hm i)
      (norm_nonneg f)
#align continuous_multilinear_map.le_op_norm_mul_prod_of_le ContinuousMultilinearMap.le_op_norm_mul_prod_of_le

theorem le_op_norm_mul_pow_card_of_le {b : ℝ} (hm : ∀ i, ‖m i‖ ≤ b) :
    ‖f m‖ ≤ ‖f‖ * b ^ Fintype.card ι := by
  simpa only [prod_const] using f.le_op_norm_mul_prod_of_le m hm
#align continuous_multilinear_map.le_op_norm_mul_pow_card_of_le ContinuousMultilinearMap.le_op_norm_mul_pow_card_of_le

theorem le_op_norm_mul_pow_of_le {Ei : Fin n → Type*} [∀ i, NormedAddCommGroup (Ei i)]
    [∀ i, NormedSpace 𝕜 (Ei i)] (f : ContinuousMultilinearMap 𝕜 Ei G) (m : ∀ i, Ei i) {b : ℝ}
    (hm : ‖m‖ ≤ b) : ‖f m‖ ≤ ‖f‖ * b ^ n := by
  simpa only [Fintype.card_fin] using
    f.le_op_norm_mul_pow_card_of_le m fun i => (norm_le_pi_norm m i).trans hm
#align continuous_multilinear_map.le_op_norm_mul_pow_of_le ContinuousMultilinearMap.le_op_norm_mul_pow_of_le

/-- The fundamental property of the operator norm of a continuous multilinear map:
`‖f m‖` is bounded by `‖f‖` times the product of the `‖m i‖`, `nnnorm` version. -/
theorem le_op_nnnorm : ‖f m‖₊ ≤ ‖f‖₊ * ∏ i, ‖m i‖₊ :=
  NNReal.coe_le_coe.1 <| by
    push_cast
    exact f.le_op_norm m
#align continuous_multilinear_map.le_op_nnnorm ContinuousMultilinearMap.le_op_nnnorm

theorem le_of_op_nnnorm_le {C : ℝ≥0} (h : ‖f‖₊ ≤ C) : ‖f m‖₊ ≤ C * ∏ i, ‖m i‖₊ :=
  (f.le_op_nnnorm m).trans <| mul_le_mul' h le_rfl
#align continuous_multilinear_map.le_of_op_nnnorm_le ContinuousMultilinearMap.le_of_op_nnnorm_le

theorem op_norm_prod (f : ContinuousMultilinearMap 𝕜 E G) (g : ContinuousMultilinearMap 𝕜 E G') :
    ‖f.prod g‖ = max ‖f‖ ‖g‖ :=
  le_antisymm
      (op_norm_le_bound _ (norm_nonneg (f, g)) fun m => by
        have H : 0 ≤ ∏ i, ‖m i‖ := prod_nonneg fun _ _ => norm_nonneg _
        simpa only [prod_apply, Prod.norm_def, max_mul_of_nonneg, H] using
          max_le_max (f.le_op_norm m) (g.le_op_norm m)) <|
    max_le
      (f.op_norm_le_bound (norm_nonneg _) fun m =>
        (le_max_left _ _).trans ((f.prod g).le_op_norm _))
      (g.op_norm_le_bound (norm_nonneg _) fun m =>
        (le_max_right _ _).trans ((f.prod g).le_op_norm _))
#align continuous_multilinear_map.op_norm_prod ContinuousMultilinearMap.op_norm_prod

theorem norm_pi {ι' : Type v'} [Fintype ι'] {E' : ι' → Type wE'} [∀ i', NormedAddCommGroup (E' i')]
    [∀ i', NormedSpace 𝕜 (E' i')] (f : ∀ i', ContinuousMultilinearMap 𝕜 E (E' i')) :
    ‖pi f‖ = ‖f‖ := by
  apply le_antisymm
  · refine' op_norm_le_bound _ (norm_nonneg f) fun m => _
    dsimp
    rw [pi_norm_le_iff_of_nonneg]
    exacts [fun i => (f i).le_of_op_norm_le m (norm_le_pi_norm f i),
      mul_nonneg (norm_nonneg f) (prod_nonneg fun _ _ => norm_nonneg _)]
  · refine' (pi_norm_le_iff_of_nonneg (norm_nonneg _)).2 fun i => _
    refine' op_norm_le_bound _ (norm_nonneg _) fun m => _
    refine' le_trans _ ((pi f).le_op_norm m)
    convert norm_le_pi_norm (fun j => f j m) i
#align continuous_multilinear_map.norm_pi ContinuousMultilinearMap.norm_pi

section

variable (𝕜 G)

theorem norm_ofSubsingleton_le [Subsingleton ι] (i' : ι) : ‖ofSubsingleton 𝕜 G i'‖ ≤ 1 :=
  op_norm_le_bound _ zero_le_one fun m => by
    rw [Fintype.prod_subsingleton _ i', one_mul, ofSubsingleton_apply]
#align continuous_multilinear_map.norm_of_subsingleton_le ContinuousMultilinearMap.norm_ofSubsingleton_le

@[simp]
theorem norm_ofSubsingleton [Subsingleton ι] [Nontrivial G] (i' : ι) :
    ‖ofSubsingleton 𝕜 G i'‖ = 1 := by
  apply le_antisymm (norm_ofSubsingleton_le 𝕜 G i')
  obtain ⟨g, hg⟩ := exists_ne (0 : G)
  rw [← norm_ne_zero_iff] at hg
  have := (ofSubsingleton 𝕜 G i').ratio_le_op_norm fun _ => g
  rwa [Fintype.prod_subsingleton _ i', ofSubsingleton_apply, div_self hg] at this
#align continuous_multilinear_map.norm_of_subsingleton ContinuousMultilinearMap.norm_ofSubsingleton

theorem nnnorm_ofSubsingleton_le [Subsingleton ι] (i' : ι) : ‖ofSubsingleton 𝕜 G i'‖₊ ≤ 1 :=
  norm_ofSubsingleton_le _ _ _
#align continuous_multilinear_map.nnnorm_of_subsingleton_le ContinuousMultilinearMap.nnnorm_ofSubsingleton_le

@[simp]
theorem nnnorm_ofSubsingleton [Subsingleton ι] [Nontrivial G] (i' : ι) :
    ‖ofSubsingleton 𝕜 G i'‖₊ = 1 :=
  NNReal.eq <| norm_ofSubsingleton _ _ _
#align continuous_multilinear_map.nnnorm_of_subsingleton ContinuousMultilinearMap.nnnorm_ofSubsingleton

variable {G} (E)

@[simp]
theorem norm_constOfIsEmpty [IsEmpty ι] (x : G) : ‖constOfIsEmpty 𝕜 E x‖ = ‖x‖ := by
  apply le_antisymm
  · refine' op_norm_le_bound _ (norm_nonneg _) fun x => _
    rw [Fintype.prod_empty, mul_one, constOfIsEmpty_apply]
  · simpa using (constOfIsEmpty 𝕜 E x).le_op_norm 0
#align continuous_multilinear_map.norm_const_of_is_empty ContinuousMultilinearMap.norm_constOfIsEmpty

@[simp]
theorem nnnorm_constOfIsEmpty [IsEmpty ι] (x : G) : ‖constOfIsEmpty 𝕜 E x‖₊ = ‖x‖₊ :=
  NNReal.eq <| norm_constOfIsEmpty _ _ _
#align continuous_multilinear_map.nnnorm_const_of_is_empty ContinuousMultilinearMap.nnnorm_constOfIsEmpty

end

section

variable (𝕜 E E' G G')

/-- `ContinuousMultilinearMap.prod` as a `LinearIsometryEquiv`. -/
def prodL :
    ContinuousMultilinearMap 𝕜 E G × ContinuousMultilinearMap 𝕜 E G' ≃ₗᵢ[𝕜]
      ContinuousMultilinearMap 𝕜 E (G × G') where
  toFun f := f.1.prod f.2
  invFun f :=
    ((ContinuousLinearMap.fst 𝕜 G G').compContinuousMultilinearMap f,
      (ContinuousLinearMap.snd 𝕜 G G').compContinuousMultilinearMap f)
  map_add' f g := rfl
  map_smul' c f := rfl
  left_inv f := by ext <;> rfl
  right_inv f := by ext <;> rfl
  norm_map' f := op_norm_prod f.1 f.2
set_option linter.uppercaseLean3 false in
#align continuous_multilinear_map.prodL ContinuousMultilinearMap.prodL

/-- `ContinuousMultilinearMap.pi` as a `LinearIsometryEquiv`. -/
def piₗᵢ {ι' : Type v'} [Fintype ι'] {E' : ι' → Type wE'} [∀ i', NormedAddCommGroup (E' i')]
    [∀ i', NormedSpace 𝕜 (E' i')] :
    @LinearIsometryEquiv 𝕜 𝕜 _ _ (RingHom.id 𝕜) _ _ _ (∀ i', ContinuousMultilinearMap 𝕜 E (E' i'))
      (ContinuousMultilinearMap 𝕜 E (∀ i, E' i)) _ _ (@Pi.module ι' _ 𝕜 _ _ fun _ => inferInstance)
      _ where
  toLinearEquiv :=
    -- note: `piLinearEquiv` does not unify correctly here,
    -- presumably due to issues with dependent typeclass arguments.
    { piEquiv with
      map_add' := fun _ _ => rfl
      map_smul' := fun _ _ => rfl }
  norm_map' := norm_pi
#align continuous_multilinear_map.piₗᵢ ContinuousMultilinearMap.piₗᵢ

end

end

section RestrictScalars

variable {𝕜' : Type*} [NontriviallyNormedField 𝕜'] [NormedAlgebra 𝕜' 𝕜]

variable [NormedSpace 𝕜' G] [IsScalarTower 𝕜' 𝕜 G]

variable [∀ i, NormedSpace 𝕜' (E i)] [∀ i, IsScalarTower 𝕜' 𝕜 (E i)]

@[simp]
theorem norm_restrictScalars : ‖f.restrictScalars 𝕜'‖ = ‖f‖ := rfl
#align continuous_multilinear_map.norm_restrict_scalars ContinuousMultilinearMap.norm_restrictScalars

variable (𝕜')

/-- `ContinuousMultilinearMap.restrictScalars` as a `LinearIsometry`. -/
def restrictScalarsₗᵢ : ContinuousMultilinearMap 𝕜 E G →ₗᵢ[𝕜'] ContinuousMultilinearMap 𝕜' E G where
  toFun := restrictScalars 𝕜'
  map_add' _ _ := rfl
  map_smul' _ _ := rfl
  norm_map' _ := rfl
#align continuous_multilinear_map.restrict_scalarsₗᵢ ContinuousMultilinearMap.restrictScalarsₗᵢ

/-- `ContinuousMultilinearMap.restrictScalars` as a `ContinuousLinearMap`. -/
def restrictScalarsLinear : ContinuousMultilinearMap 𝕜 E G →L[𝕜'] ContinuousMultilinearMap 𝕜' E G :=
  (restrictScalarsₗᵢ 𝕜').toContinuousLinearMap
#align continuous_multilinear_map.restrict_scalars_linear ContinuousMultilinearMap.restrictScalarsLinear

variable {𝕜'}

theorem continuous_restrictScalars :
    Continuous
      (restrictScalars 𝕜' : ContinuousMultilinearMap 𝕜 E G → ContinuousMultilinearMap 𝕜' E G) :=
  (restrictScalarsLinear 𝕜').continuous
#align continuous_multilinear_map.continuous_restrict_scalars ContinuousMultilinearMap.continuous_restrictScalars

end RestrictScalars

/-- The difference `f m₁ - f m₂` is controlled in terms of `‖f‖` and `‖m₁ - m₂‖`, precise version.
For a less precise but more usable version, see `norm_image_sub_le`. The bound reads
`‖f m - f m'‖ ≤
  ‖f‖ * ‖m 1 - m' 1‖ * max ‖m 2‖ ‖m' 2‖ * max ‖m 3‖ ‖m' 3‖ * ... * max ‖m n‖ ‖m' n‖ + ...`,
where the other terms in the sum are the same products where `1` is replaced by any `i`.-/
theorem norm_image_sub_le' [DecidableEq ι] (m₁ m₂ : ∀ i, E i) :
    ‖f m₁ - f m₂‖ ≤ ‖f‖ * ∑ i, ∏ j, if j = i then ‖m₁ i - m₂ i‖ else max ‖m₁ j‖ ‖m₂ j‖ :=
  f.toMultilinearMap.norm_image_sub_le_of_bound' (norm_nonneg _) f.le_op_norm _ _
#align continuous_multilinear_map.norm_image_sub_le' ContinuousMultilinearMap.norm_image_sub_le'

/-- The difference `f m₁ - f m₂` is controlled in terms of `‖f‖` and `‖m₁ - m₂‖`, less precise
version. For a more precise but less usable version, see `norm_image_sub_le'`.
The bound is `‖f m - f m'‖ ≤ ‖f‖ * card ι * ‖m - m'‖ * (max ‖m‖ ‖m'‖) ^ (card ι - 1)`.-/
theorem norm_image_sub_le (m₁ m₂ : ∀ i, E i) :
    ‖f m₁ - f m₂‖ ≤ ‖f‖ * Fintype.card ι * max ‖m₁‖ ‖m₂‖ ^ (Fintype.card ι - 1) * ‖m₁ - m₂‖ :=
  f.toMultilinearMap.norm_image_sub_le_of_bound (norm_nonneg _) f.le_op_norm _ _
#align continuous_multilinear_map.norm_image_sub_le ContinuousMultilinearMap.norm_image_sub_le

/-- Applying a multilinear map to a vector is continuous in both coordinates. -/
theorem continuous_eval : Continuous fun p :
    ContinuousMultilinearMap 𝕜 E G × ∀ i, E i => p.1 p.2 := by
  apply continuous_iff_continuousAt.2 fun p => ?_
  apply
    continuousAt_of_locally_lipschitz zero_lt_one
      ((‖p‖ + 1) * Fintype.card ι * (‖p‖ + 1) ^ (Fintype.card ι - 1) + ∏ i, ‖p.2 i‖) fun q hq => ?_
  have : 0 ≤ max ‖q.2‖ ‖p.2‖ := by simp
  have : 0 ≤ ‖p‖ + 1 := zero_le_one.trans ((le_add_iff_nonneg_left 1).2 <| norm_nonneg p)
  have A : ‖q‖ ≤ ‖p‖ + 1 := norm_le_of_mem_closedBall hq.le
  have : max ‖q.2‖ ‖p.2‖ ≤ ‖p‖ + 1 :=
    (max_le_max (norm_snd_le q) (norm_snd_le p)).trans (by simp [A, zero_le_one])
  have : ∀ i : ι, i ∈ univ → 0 ≤ ‖p.2 i‖ := fun i _ => norm_nonneg _
  calc
    dist (q.1 q.2) (p.1 p.2) ≤ dist (q.1 q.2) (q.1 p.2) + dist (q.1 p.2) (p.1 p.2) :=
      dist_triangle _ _ _
    _ = ‖q.1 q.2 - q.1 p.2‖ + ‖q.1 p.2 - p.1 p.2‖ := by rw [dist_eq_norm, dist_eq_norm]
    _ ≤ ‖q.1‖ * Fintype.card ι * max ‖q.2‖ ‖p.2‖ ^ (Fintype.card ι - 1) * ‖q.2 - p.2‖ +
        ‖q.1 - p.1‖ * ∏ i, ‖p.2 i‖ :=
      (add_le_add (norm_image_sub_le _ _ _) ((q.1 - p.1).le_op_norm p.2))
    _ ≤ (‖p‖ + 1) * Fintype.card ι * (‖p‖ + 1) ^ (Fintype.card ι - 1) * ‖q - p‖ +
        ‖q - p‖ * ∏ i, ‖p.2 i‖ := by
      apply_rules [add_le_add, mul_le_mul, le_refl, le_trans (norm_fst_le q) A, Nat.cast_nonneg,
        mul_nonneg, pow_le_pow_of_le_left, pow_nonneg, norm_snd_le (q - p), norm_nonneg,
        norm_fst_le (q - p), prod_nonneg]
    _ = ((‖p‖ + 1) * Fintype.card ι * (‖p‖ + 1) ^ (Fintype.card ι - 1) + ∏ i, ‖p.2 i‖)
          * dist q p := by
      rw [dist_eq_norm]
      ring
#align continuous_multilinear_map.continuous_eval ContinuousMultilinearMap.continuous_eval

theorem continuous_eval_left (m : ∀ i, E i) :
    Continuous fun p : ContinuousMultilinearMap 𝕜 E G => p m :=
  continuous_eval.comp (continuous_id.prod_mk continuous_const)
#align continuous_multilinear_map.continuous_eval_left ContinuousMultilinearMap.continuous_eval_left

theorem hasSum_eval {α : Type*} {p : α → ContinuousMultilinearMap 𝕜 E G}
    {q : ContinuousMultilinearMap 𝕜 E G} (h : HasSum p q) (m : ∀ i, E i) :
    HasSum (fun a => p a m) (q m) := by
  dsimp [HasSum] at h ⊢
  convert ((continuous_eval_left m).tendsto _).comp h using 1
  ext s
  simp
#align continuous_multilinear_map.has_sum_eval ContinuousMultilinearMap.hasSum_eval

theorem tsum_eval {α : Type*} {p : α → ContinuousMultilinearMap 𝕜 E G} (hp : Summable p)
    (m : ∀ i, E i) : (∑' a, p a) m = ∑' a, p a m :=
  (hasSum_eval hp.hasSum m).tsum_eq.symm
#align continuous_multilinear_map.tsum_eval ContinuousMultilinearMap.tsum_eval

open Topology Filter

/-- If the target space is complete, the space of continuous multilinear maps with its norm is also
complete. The proof is essentially the same as for the space of continuous linear maps (modulo the
addition of `Finset.prod` where needed. The duplication could be avoided by deducing the linear
case from the multilinear case via a currying isomorphism. However, this would mess up imports,
and it is more satisfactory to have the simplest case as a standalone proof. -/
instance completeSpace [CompleteSpace G] : CompleteSpace (ContinuousMultilinearMap 𝕜 E G) := by
  have nonneg : ∀ v : ∀ i, E i, 0 ≤ ∏ i, ‖v i‖ := fun v =>
    Finset.prod_nonneg fun i _ => norm_nonneg _
  -- We show that every Cauchy sequence converges.
  refine' Metric.complete_of_cauchySeq_tendsto fun f hf => _
  -- We now expand out the definition of a Cauchy sequence,
  rcases cauchySeq_iff_le_tendsto_0.1 hf with ⟨b, b0, b_bound, b_lim⟩
  -- and establish that the evaluation at any point `v : Π i, E i` is Cauchy.
  have cau : ∀ v, CauchySeq fun n => f n v := by
    intro v
    apply cauchySeq_iff_le_tendsto_0.2 ⟨fun n => b n * ∏ i, ‖v i‖, _, _, _⟩
    · intro
      exact mul_nonneg (b0 _) (nonneg v)
    · intro n m N hn hm
      rw [dist_eq_norm]
      apply le_trans ((f n - f m).le_op_norm v) _
      exact mul_le_mul_of_nonneg_right (b_bound n m N hn hm) (nonneg v)
    · simpa using b_lim.mul tendsto_const_nhds
  -- We assemble the limits points of those Cauchy sequences
  -- (which exist as `G` is complete)
  -- into a function which we call `F`.
  choose F hF using fun v => cauchySeq_tendsto_of_complete (cau v)
  -- Next, we show that this `F` is multilinear,
  let Fmult : MultilinearMap 𝕜 E G :=
    { toFun := F
      map_add' := fun v i x y => by
        skip
        have A := hF (Function.update v i (x + y))
        have B := (hF (Function.update v i x)).add (hF (Function.update v i y))
        simp at A B
        exact tendsto_nhds_unique A B
      map_smul' := fun v i c x => by
        skip
        have A := hF (Function.update v i (c • x))
        have B := Filter.Tendsto.smul (@tendsto_const_nhds _ ℕ _ c _) (hF (Function.update v i x))
        simp at A B
        exact tendsto_nhds_unique A B }
  -- and that `F` has norm at most `(b 0 + ‖f 0‖)`.
  have Fnorm : ∀ v, ‖F v‖ ≤ (b 0 + ‖f 0‖) * ∏ i, ‖v i‖ := by
    intro v
    have A : ∀ n, ‖f n v‖ ≤ (b 0 + ‖f 0‖) * ∏ i, ‖v i‖ := by
      intro n
      apply le_trans ((f n).le_op_norm _) _
      apply mul_le_mul_of_nonneg_right _ (nonneg v)
      calc
        ‖f n‖ = ‖f n - f 0 + f 0‖ := by
          congr 1
          abel
        _ ≤ ‖f n - f 0‖ + ‖f 0‖ := (norm_add_le _ _)
        _ ≤ b 0 + ‖f 0‖ := by
          apply add_le_add_right
          simpa [dist_eq_norm] using b_bound n 0 0 (zero_le _) (zero_le _)
    exact le_of_tendsto (hF v).norm (eventually_of_forall A)
  -- Thus `F` is continuous, and we propose that as the limit point of our original Cauchy sequence.
  let Fcont := Fmult.mkContinuous _ Fnorm
  use Fcont
  -- Our last task is to establish convergence to `F` in norm.
  have : ∀ n, ‖f n - Fcont‖ ≤ b n := by
    intro n
    apply op_norm_le_bound _ (b0 n) fun v => ?_
    have A : ∀ᶠ m in atTop, ‖(f n - f m) v‖ ≤ b n * ∏ i, ‖v i‖ := by
      refine' eventually_atTop.2 ⟨n, fun m hm => _⟩
      apply le_trans ((f n - f m).le_op_norm _) _
      exact mul_le_mul_of_nonneg_right (b_bound n m n le_rfl hm) (nonneg v)
    have B : Tendsto (fun m => ‖(f n - f m) v‖) atTop (𝓝 ‖(f n - Fcont) v‖) :=
      Tendsto.norm (tendsto_const_nhds.sub (hF v))
    exact le_of_tendsto B A
  erw [tendsto_iff_norm_tendsto_zero]
  exact squeeze_zero (fun n => norm_nonneg _) this b_lim
end ContinuousMultilinearMap

/-- If a continuous multilinear map is constructed from a multilinear map via the constructor
`mkContinuous`, then its norm is bounded by the bound given to the constructor if it is
nonnegative. -/
theorem MultilinearMap.mkContinuous_norm_le (f : MultilinearMap 𝕜 E G) {C : ℝ} (hC : 0 ≤ C)
    (H : ∀ m, ‖f m‖ ≤ C * ∏ i, ‖m i‖) : ‖f.mkContinuous C H‖ ≤ C :=
  ContinuousMultilinearMap.op_norm_le_bound _ hC fun m => H m
#align multilinear_map.mk_continuous_norm_le MultilinearMap.mkContinuous_norm_le

/-- If a continuous multilinear map is constructed from a multilinear map via the constructor
`mkContinuous`, then its norm is bounded by the bound given to the constructor if it is
nonnegative. -/
theorem MultilinearMap.mkContinuous_norm_le' (f : MultilinearMap 𝕜 E G) {C : ℝ}
    (H : ∀ m, ‖f m‖ ≤ C * ∏ i, ‖m i‖) : ‖f.mkContinuous C H‖ ≤ max C 0 :=
  ContinuousMultilinearMap.op_norm_le_bound _ (le_max_right _ _) fun m =>
    (H m).trans <|
      mul_le_mul_of_nonneg_right (le_max_left _ _) (prod_nonneg fun _ _ => norm_nonneg _)
#align multilinear_map.mk_continuous_norm_le' MultilinearMap.mkContinuous_norm_le'

namespace ContinuousMultilinearMap

/-- Given a continuous multilinear map `f` on `n` variables (parameterized by `Fin n`) and a subset
`s` of `k` of these variables, one gets a new continuous multilinear map on `Fin k` by varying
these variables, and fixing the other ones equal to a given value `z`. It is denoted by
`f.restr s hk z`, where `hk` is a proof that the cardinality of `s` is `k`. The implicit
identification between `Fin k` and `s` that we use is the canonical (increasing) bijection. -/
def restr {k n : ℕ} (f : (G[×n]→L[𝕜] G' : _)) (s : Finset (Fin n)) (hk : s.card = k) (z : G) :
    G[×k]→L[𝕜] G' :=
  (f.toMultilinearMap.restr s hk z).mkContinuous (‖f‖ * ‖z‖ ^ (n - k)) fun _ =>
    MultilinearMap.restr_norm_le _ _ _ _ f.le_op_norm _
#align continuous_multilinear_map.restr ContinuousMultilinearMap.restr

theorem norm_restr {k n : ℕ} (f : G[×n]→L[𝕜] G') (s : Finset (Fin n)) (hk : s.card = k) (z : G) :
    ‖f.restr s hk z‖ ≤ ‖f‖ * ‖z‖ ^ (n - k) := by
  apply MultilinearMap.mkContinuous_norm_le
  exact mul_nonneg (norm_nonneg _) (pow_nonneg (norm_nonneg _) _)
#align continuous_multilinear_map.norm_restr ContinuousMultilinearMap.norm_restr

section

variable {A : Type*} [NormedCommRing A] [NormedAlgebra 𝕜 A]

@[simp]
theorem norm_mkPiAlgebra_le [Nonempty ι] : ‖ContinuousMultilinearMap.mkPiAlgebra 𝕜 ι A‖ ≤ 1 := by
  have := fun f => @op_norm_le_bound 𝕜 ι (fun _ => A) A _ _ _ _ _ _ f _ zero_le_one
  refine' this _ _
  intro m
  simp only [ContinuousMultilinearMap.mkPiAlgebra_apply, one_mul]
  exact norm_prod_le' _ univ_nonempty _
#align continuous_multilinear_map.norm_mk_pi_algebra_le ContinuousMultilinearMap.norm_mkPiAlgebra_le

theorem norm_mkPiAlgebra_of_empty [IsEmpty ι] :
    ‖ContinuousMultilinearMap.mkPiAlgebra 𝕜 ι A‖ = ‖(1 : A)‖ := by
  apply le_antisymm
  · have := fun f => @op_norm_le_bound 𝕜 ι (fun _ => A) A _ _ _ _ _ _ f _ (norm_nonneg (1 : A))
    refine' this _ _
    simp
  -- Porting note: have to annotate types to get mvars to unify
  · convert ratio_le_op_norm (ContinuousMultilinearMap.mkPiAlgebra 𝕜 ι A) fun _ => (1 : A)
    simp [eq_empty_of_isEmpty (univ : Finset ι)]
#align continuous_multilinear_map.norm_mk_pi_algebra_of_empty ContinuousMultilinearMap.norm_mkPiAlgebra_of_empty

@[simp]
theorem norm_mkPiAlgebra [NormOneClass A] : ‖ContinuousMultilinearMap.mkPiAlgebra 𝕜 ι A‖ = 1 := by
  cases isEmpty_or_nonempty ι
  · simp [norm_mkPiAlgebra_of_empty]
  · refine' le_antisymm norm_mkPiAlgebra_le _
    convert ratio_le_op_norm (ContinuousMultilinearMap.mkPiAlgebra 𝕜 ι A) fun _ => 1
    simp
#align continuous_multilinear_map.norm_mk_pi_algebra ContinuousMultilinearMap.norm_mkPiAlgebra

end

section

variable {A : Type*} [NormedRing A] [NormedAlgebra 𝕜 A]

theorem norm_mkPiAlgebraFin_succ_le : ‖ContinuousMultilinearMap.mkPiAlgebraFin 𝕜 n.succ A‖ ≤ 1 := by
  have := fun f => @op_norm_le_bound 𝕜 (Fin n.succ) (fun _ => A) A _ _ _ _ _ _ f _ zero_le_one
  refine' this _ _
  intro m
  simp only [ContinuousMultilinearMap.mkPiAlgebraFin_apply, one_mul, List.ofFn_eq_map,
    Fin.prod_univ_def, Multiset.coe_map, Multiset.coe_prod]
  refine' (List.norm_prod_le' _).trans_eq _
  · rw [Ne.def, List.map_eq_nil, List.finRange_eq_nil]
    exact Nat.succ_ne_zero _
  rw [List.map_map]
  rfl
#align continuous_multilinear_map.norm_mk_pi_algebra_fin_succ_le ContinuousMultilinearMap.norm_mkPiAlgebraFin_succ_le

theorem norm_mkPiAlgebraFin_le_of_pos (hn : 0 < n) :
    ‖ContinuousMultilinearMap.mkPiAlgebraFin 𝕜 n A‖ ≤ 1 := by
  obtain ⟨n, rfl⟩ := Nat.exists_eq_succ_of_ne_zero hn.ne'
  exact norm_mkPiAlgebraFin_succ_le
#align continuous_multilinear_map.norm_mk_pi_algebra_fin_le_of_pos ContinuousMultilinearMap.norm_mkPiAlgebraFin_le_of_pos

theorem norm_mkPiAlgebraFin_zero : ‖ContinuousMultilinearMap.mkPiAlgebraFin 𝕜 0 A‖ = ‖(1 : A)‖ := by
  refine' le_antisymm _ _
  · have := fun f =>
      @op_norm_le_bound 𝕜 (Fin 0) (fun _ => A) A _ _ _ _ _ _ f _ (norm_nonneg (1 : A))
    refine' this _ _
    simp
  · convert ratio_le_op_norm (ContinuousMultilinearMap.mkPiAlgebraFin 𝕜 0 A) fun _ => (1 : A)
    simp
#align continuous_multilinear_map.norm_mk_pi_algebra_fin_zero ContinuousMultilinearMap.norm_mkPiAlgebraFin_zero

@[simp]
theorem norm_mkPiAlgebraFin [NormOneClass A] :
    ‖ContinuousMultilinearMap.mkPiAlgebraFin 𝕜 n A‖ = 1 := by
  cases n
  · rw [norm_mkPiAlgebraFin_zero]
    simp
  · refine' le_antisymm norm_mkPiAlgebraFin_succ_le _
    convert ratio_le_op_norm (ContinuousMultilinearMap.mkPiAlgebraFin 𝕜 (Nat.succ _) A)
      fun _ => 1
    simp
#align continuous_multilinear_map.norm_mk_pi_algebra_fin ContinuousMultilinearMap.norm_mkPiAlgebraFin

end

variable (𝕜 ι)

/-- The canonical continuous multilinear map on `𝕜^ι`, associating to `m` the product of all the
`m i` (multiplied by a fixed reference element `z` in the target module) -/
protected def mkPiField (z : G) : ContinuousMultilinearMap 𝕜 (fun _ : ι => 𝕜) G :=
  MultilinearMap.mkContinuous (MultilinearMap.mkPiRing 𝕜 ι z) ‖z‖ fun m => by
    simp only [MultilinearMap.mkPiRing_apply, norm_smul, norm_prod, mul_comm]
    rfl
#align continuous_multilinear_map.mk_pi_field ContinuousMultilinearMap.mkPiField

variable {𝕜 ι}

@[simp]
theorem mkPiField_apply (z : G) (m : ι → 𝕜) :
    (ContinuousMultilinearMap.mkPiField 𝕜 ι z : (ι → 𝕜) → G) m = (∏ i, m i) • z :=
  rfl
#align continuous_multilinear_map.mk_pi_field_apply ContinuousMultilinearMap.mkPiField_apply

theorem mkPiField_apply_one_eq_self (f : ContinuousMultilinearMap 𝕜 (fun _ : ι => 𝕜) G) :
    ContinuousMultilinearMap.mkPiField 𝕜 ι (f fun _ => 1) = f :=
  toMultilinearMap_injective f.toMultilinearMap.mkPiRing_apply_one_eq_self
#align continuous_multilinear_map.mk_pi_field_apply_one_eq_self ContinuousMultilinearMap.mkPiField_apply_one_eq_self

@[simp]
theorem norm_mkPiField (z : G) : ‖ContinuousMultilinearMap.mkPiField 𝕜 ι z‖ = ‖z‖ :=
  (MultilinearMap.mkContinuous_norm_le _ (norm_nonneg z) _).antisymm <| by
    simpa using (ContinuousMultilinearMap.mkPiField 𝕜 ι z).le_op_norm fun _ => 1
#align continuous_multilinear_map.norm_mk_pi_field ContinuousMultilinearMap.norm_mkPiField

theorem mkPiField_eq_iff {z₁ z₂ : G} :
    ContinuousMultilinearMap.mkPiField 𝕜 ι z₁ = ContinuousMultilinearMap.mkPiField 𝕜 ι z₂ ↔
      z₁ = z₂ := by
  rw [← toMultilinearMap_injective.eq_iff]
  exact MultilinearMap.mkPiRing_eq_iff
#align continuous_multilinear_map.mk_pi_field_eq_iff ContinuousMultilinearMap.mkPiField_eq_iff

theorem mkPiField_zero : ContinuousMultilinearMap.mkPiField 𝕜 ι (0 : G) = 0 := by
  ext; rw [mkPiField_apply, smul_zero, ContinuousMultilinearMap.zero_apply]
#align continuous_multilinear_map.mk_pi_field_zero ContinuousMultilinearMap.mkPiField_zero

theorem mkPiField_eq_zero_iff (z : G) : ContinuousMultilinearMap.mkPiField 𝕜 ι z = 0 ↔ z = 0 := by
  rw [← mkPiField_zero, mkPiField_eq_iff]
#align continuous_multilinear_map.mk_pi_field_eq_zero_iff ContinuousMultilinearMap.mkPiField_eq_zero_iff

variable (𝕜 ι G)

/-- Continuous multilinear maps on `𝕜^n` with values in `G` are in bijection with `G`, as such a
continuous multilinear map is completely determined by its value on the constant vector made of
ones. We register this bijection as a linear isometry in
`ContinuousMultilinearMap.piFieldEquiv`. -/
protected def piFieldEquiv : G ≃ₗᵢ[𝕜] ContinuousMultilinearMap 𝕜 (fun _ : ι => 𝕜) G where
  toFun z := ContinuousMultilinearMap.mkPiField 𝕜 ι z
  invFun f := f fun i => 1
  map_add' z z' := by
    ext m
    simp [smul_add]
  map_smul' c z := by
    ext m
    simp [smul_smul, mul_comm]
  left_inv z := by simp
  right_inv f := f.mkPiField_apply_one_eq_self
  norm_map' := norm_mkPiField
#align continuous_multilinear_map.pi_field_equiv ContinuousMultilinearMap.piFieldEquiv

end ContinuousMultilinearMap

namespace ContinuousLinearMap

theorem norm_compContinuousMultilinearMap_le (g : G →L[𝕜] G') (f : ContinuousMultilinearMap 𝕜 E G) :
    ‖g.compContinuousMultilinearMap f‖ ≤ ‖g‖ * ‖f‖ :=
  ContinuousMultilinearMap.op_norm_le_bound _ (mul_nonneg (norm_nonneg _) (norm_nonneg _)) fun m =>
    calc
      ‖g (f m)‖ ≤ ‖g‖ * (‖f‖ * ∏ i, ‖m i‖) := g.le_op_norm_of_le <| f.le_op_norm _
      _ = _ := (mul_assoc _ _ _).symm
#align continuous_linear_map.norm_comp_continuous_multilinear_map_le ContinuousLinearMap.norm_compContinuousMultilinearMap_le

variable (𝕜 E G G')

set_option linter.uppercaseLean3 false

/-- `ContinuousLinearMap.compContinuousMultilinearMap` as a bundled continuous bilinear map. -/
def compContinuousMultilinearMapL :
    (G →L[𝕜] G') →L[𝕜] ContinuousMultilinearMap 𝕜 E G →L[𝕜] ContinuousMultilinearMap 𝕜 E G' :=
  LinearMap.mkContinuous₂
    (LinearMap.mk₂ 𝕜 compContinuousMultilinearMap (fun f₁ f₂ g => rfl) (fun c f g => rfl)
      (fun f g₁ g₂ => by
        ext1
        apply f.map_add)
      fun c f g => by
      ext1
      simp)
    1 fun f g => by
    rw [one_mul]
    exact f.norm_compContinuousMultilinearMap_le g
#align continuous_linear_map.comp_continuous_multilinear_mapL ContinuousLinearMap.compContinuousMultilinearMapL

variable {𝕜 G G'}

/-- `ContinuousLinearMap.compContinuousMultilinearMap` as a bundled
continuous linear equiv. -/
nonrec
def _root_.GRWTSK.Topology.GeneralTopology.BoundOfShell.Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.ContinuousLinearEquiv.compContinuousMultilinearMapL (g : G ≃L[𝕜] G') :
    ContinuousMultilinearMap 𝕜 E G ≃L[𝕜] ContinuousMultilinearMap 𝕜 E G' :=
  { compContinuousMultilinearMapL 𝕜 E G G'
      g.toContinuousLinearMap with
    invFun := compContinuousMultilinearMapL 𝕜 E G' G g.symm.toContinuousLinearMap
    left_inv := by
      intro f
      ext1 m
      simp [compContinuousMultilinearMapL]
    right_inv := by
      intro f
      ext1 m
      simp [compContinuousMultilinearMapL]
    continuous_toFun := (compContinuousMultilinearMapL 𝕜 E G G' g.toContinuousLinearMap).continuous
    continuous_invFun :=
      (compContinuousMultilinearMapL 𝕜 E G' G g.symm.toContinuousLinearMap).continuous }
#align continuous_linear_equiv.comp_continuous_multilinear_mapL ContinuousLinearEquiv.compContinuousMultilinearMapL

@[simp]
theorem _root_.GRWTSK.Topology.GeneralTopology.BoundOfShell.Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.ContinuousLinearEquiv.compContinuousMultilinearMapL_symm (g : G ≃L[𝕜] G') :
    (g.compContinuousMultilinearMapL E).symm = g.symm.compContinuousMultilinearMapL E :=
  rfl
#align continuous_linear_equiv.comp_continuous_multilinear_mapL_symm ContinuousLinearEquiv.compContinuousMultilinearMapL_symm

variable {E}

@[simp]
theorem _root_.GRWTSK.Topology.GeneralTopology.BoundOfShell.Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.ContinuousLinearEquiv.compContinuousMultilinearMapL_apply (g : G ≃L[𝕜] G')
    (f : ContinuousMultilinearMap 𝕜 E G) :
    g.compContinuousMultilinearMapL E f = (g : G →L[𝕜] G').compContinuousMultilinearMap f :=
  rfl
#align continuous_linear_equiv.comp_continuous_multilinear_mapL_apply ContinuousLinearEquiv.compContinuousMultilinearMapL_apply

set_option maxHeartbeats 250000 in
/-- Flip arguments in `f : G →L[𝕜] ContinuousMultilinearMap 𝕜 E G'` to get
`ContinuousMultilinearMap 𝕜 E (G →L[𝕜] G')` -/
@[simps! apply_apply]
def flipMultilinear (f : G →L[𝕜] ContinuousMultilinearMap 𝕜 E G') :
    ContinuousMultilinearMap 𝕜 E (G →L[𝕜] G') :=
  MultilinearMap.mkContinuous
    { toFun := fun m =>
        LinearMap.mkContinuous
          { toFun := fun x => f x m
            map_add' := fun x y => by simp only [map_add, ContinuousMultilinearMap.add_apply]
            map_smul' := fun c x => by
              simp only [ContinuousMultilinearMap.smul_apply, map_smul, RingHom.id_apply] }
          (‖f‖ * ∏ i, ‖m i‖) fun x => by
          rw [mul_right_comm]
          exact (f x).le_of_op_norm_le _ (f.le_op_norm x)
      map_add' := fun m i x y => by
        ext1
        simp only [add_apply, ContinuousMultilinearMap.map_add, LinearMap.coe_mk,
          LinearMap.mkContinuous_apply, AddHom.coe_mk]
      map_smul' := fun m i c x => by
        ext1
        simp only [coe_smul', ContinuousMultilinearMap.map_smul, LinearMap.coe_mk,
          LinearMap.mkContinuous_apply, Pi.smul_apply, AddHom.coe_mk] }
    ‖f‖ fun m => by
      dsimp only [MultilinearMap.coe_mk]
      refine LinearMap.mkContinuous_norm_le _
        (mul_nonneg (norm_nonneg f) (prod_nonneg fun i _ => norm_nonneg (m i))) _
#align continuous_linear_map.flip_multilinear ContinuousLinearMap.flipMultilinear
#align continuous_linear_map.flip_multilinear_apply_apply ContinuousLinearMap.flipMultilinear_apply_apply

end ContinuousLinearMap

theorem LinearIsometry.norm_compContinuousMultilinearMap (g : G →ₗᵢ[𝕜] G')
    (f : ContinuousMultilinearMap 𝕜 E G) :
    ‖g.toContinuousLinearMap.compContinuousMultilinearMap f‖ = ‖f‖ := by
  simp only [ContinuousLinearMap.compContinuousMultilinearMap_coe,
    LinearIsometry.coe_toContinuousLinearMap, LinearIsometry.norm_map,
    ContinuousMultilinearMap.norm_def, Function.comp_apply]
#align linear_isometry.norm_comp_continuous_multilinear_map LinearIsometry.norm_compContinuousMultilinearMap

open ContinuousMultilinearMap

namespace MultilinearMap

/-- Given a map `f : G →ₗ[𝕜] MultilinearMap 𝕜 E G'` and an estimate
`H : ∀ x m, ‖f x m‖ ≤ C * ‖x‖ * ∏ i, ‖m i‖`, construct a continuous linear
map from `G` to `ContinuousMultilinearMap 𝕜 E G'`.

In order to lift, e.g., a map `f : (MultilinearMap 𝕜 E G) →ₗ[𝕜] MultilinearMap 𝕜 E' G'`
to a map `(ContinuousMultilinearMap 𝕜 E G) →L[𝕜] ContinuousMultilinearMap 𝕜 E' G'`,
one can apply this construction to `f.comp ContinuousMultilinearMap.toMultilinearMapLinear`
which is a linear map from `ContinuousMultilinearMap 𝕜 E G` to `MultilinearMap 𝕜 E' G'`. -/
def mkContinuousLinear (f : G →ₗ[𝕜] MultilinearMap 𝕜 E G') (C : ℝ)
    (H : ∀ x m, ‖f x m‖ ≤ C * ‖x‖ * ∏ i, ‖m i‖) : G →L[𝕜] ContinuousMultilinearMap 𝕜 E G' :=
  LinearMap.mkContinuous
    { toFun := fun x => (f x).mkContinuous (C * ‖x‖) <| H x
      map_add' := fun x y => by
        ext1
        simp only [_root_.map_add]
        rfl
      map_smul' := fun c x => by
        ext1
        simp only [SMulHomClass.map_smul]
        rfl }
    (max C 0) fun x => by
      rw [LinearMap.coe_mk, AddHom.coe_mk] -- Porting note: added
      exact ((f x).mkContinuous_norm_le' _).trans_eq <| by
        rw [max_mul_of_nonneg _ _ (norm_nonneg x), zero_mul]
#align multilinear_map.mk_continuous_linear MultilinearMap.mkContinuousLinear

theorem mkContinuousLinear_norm_le' (f : G →ₗ[𝕜] MultilinearMap 𝕜 E G') (C : ℝ)
    (H : ∀ x m, ‖f x m‖ ≤ C * ‖x‖ * ∏ i, ‖m i‖) : ‖mkContinuousLinear f C H‖ ≤ max C 0 := by
  dsimp only [mkContinuousLinear]
  exact LinearMap.mkContinuous_norm_le _ (le_max_right _ _) _
#align multilinear_map.mk_continuous_linear_norm_le' MultilinearMap.mkContinuousLinear_norm_le'

theorem mkContinuousLinear_norm_le (f : G →ₗ[𝕜] MultilinearMap 𝕜 E G') {C : ℝ} (hC : 0 ≤ C)
    (H : ∀ x m, ‖f x m‖ ≤ C * ‖x‖ * ∏ i, ‖m i‖) : ‖mkContinuousLinear f C H‖ ≤ C :=
  (mkContinuousLinear_norm_le' f C H).trans_eq (max_eq_left hC)
#align multilinear_map.mk_continuous_linear_norm_le MultilinearMap.mkContinuousLinear_norm_le

/-- Given a map `f : MultilinearMap 𝕜 E (MultilinearMap 𝕜 E' G)` and an estimate
`H : ∀ m m', ‖f m m'‖ ≤ C * ∏ i, ‖m i‖ * ∏ i, ‖m' i‖`, upgrade all `MultilinearMap`s in the type to
`ContinuousMultilinearMap`s. -/
def mkContinuousMultilinear (f : MultilinearMap 𝕜 E (MultilinearMap 𝕜 E' G)) (C : ℝ)
    (H : ∀ m₁ m₂, ‖f m₁ m₂‖ ≤ (C * ∏ i, ‖m₁ i‖) * ∏ i, ‖m₂ i‖) :
    ContinuousMultilinearMap 𝕜 E (ContinuousMultilinearMap 𝕜 E' G) :=
  mkContinuous
    { toFun := fun m => mkContinuous (f m) (C * ∏ i, ‖m i‖) <| H m
      map_add' := fun m i x y => by
        ext1
        simp
      map_smul' := fun m i c x => by
        ext1
        simp }
    (max C 0) fun m => by
      simp only [coe_mk]
      refine ((f m).mkContinuous_norm_le' _).trans_eq ?_
      rw [max_mul_of_nonneg, zero_mul]
      exact prod_nonneg fun _ _ => norm_nonneg _
#align multilinear_map.mk_continuous_multilinear MultilinearMap.mkContinuousMultilinear

@[simp]
theorem mkContinuousMultilinear_apply (f : MultilinearMap 𝕜 E (MultilinearMap 𝕜 E' G)) {C : ℝ}
    (H : ∀ m₁ m₂, ‖f m₁ m₂‖ ≤ (C * ∏ i, ‖m₁ i‖) * ∏ i, ‖m₂ i‖) (m : ∀ i, E i) :
    ⇑(mkContinuousMultilinear f C H m) = f m :=
  rfl
#align multilinear_map.mk_continuous_multilinear_apply MultilinearMap.mkContinuousMultilinear_apply

theorem mkContinuousMultilinear_norm_le' (f : MultilinearMap 𝕜 E (MultilinearMap 𝕜 E' G)) (C : ℝ)
    (H : ∀ m₁ m₂, ‖f m₁ m₂‖ ≤ (C * ∏ i, ‖m₁ i‖) * ∏ i, ‖m₂ i‖) :
    ‖mkContinuousMultilinear f C H‖ ≤ max C 0 := by
  dsimp only [mkContinuousMultilinear]
  exact mkContinuous_norm_le _ (le_max_right _ _) _
#align multilinear_map.mk_continuous_multilinear_norm_le' MultilinearMap.mkContinuousMultilinear_norm_le'

theorem mkContinuousMultilinear_norm_le (f : MultilinearMap 𝕜 E (MultilinearMap 𝕜 E' G)) {C : ℝ}
    (hC : 0 ≤ C) (H : ∀ m₁ m₂, ‖f m₁ m₂‖ ≤ (C * ∏ i, ‖m₁ i‖) * ∏ i, ‖m₂ i‖) :
    ‖mkContinuousMultilinear f C H‖ ≤ C :=
  (mkContinuousMultilinear_norm_le' f C H).trans_eq (max_eq_left hC)
#align multilinear_map.mk_continuous_multilinear_norm_le MultilinearMap.mkContinuousMultilinear_norm_le

end MultilinearMap

namespace ContinuousMultilinearMap

set_option linter.uppercaseLean3 false

theorem norm_compContinuousLinearMap_le (g : ContinuousMultilinearMap 𝕜 E₁ G)
    (f : ∀ i, E i →L[𝕜] E₁ i) : ‖g.compContinuousLinearMap f‖ ≤ ‖g‖ * ∏ i, ‖f i‖ :=
  op_norm_le_bound _ (mul_nonneg (norm_nonneg _) <| prod_nonneg fun i _ => norm_nonneg _) fun m =>
    calc
      ‖g fun i => f i (m i)‖ ≤ ‖g‖ * ∏ i, ‖f i (m i)‖ := g.le_op_norm _
      _ ≤ ‖g‖ * ∏ i, ‖f i‖ * ‖m i‖ :=
        (mul_le_mul_of_nonneg_left
          (prod_le_prod (fun _ _ => norm_nonneg _) fun i _ => (f i).le_op_norm (m i))
          (norm_nonneg g))
      _ = (‖g‖ * ∏ i, ‖f i‖) * ∏ i, ‖m i‖ := by rw [prod_mul_distrib, mul_assoc]
#align continuous_multilinear_map.norm_comp_continuous_linear_le ContinuousMultilinearMap.norm_compContinuousLinearMap_le

theorem norm_compContinuous_linearIsometry_le (g : ContinuousMultilinearMap 𝕜 E₁ G)
    (f : ∀ i, E i →ₗᵢ[𝕜] E₁ i) :
    ‖g.compContinuousLinearMap fun i => (f i).toContinuousLinearMap‖ ≤ ‖g‖ := by
  refine op_norm_le_bound _ (norm_nonneg _) fun m => ?_
  apply (g.le_op_norm _).trans _
  simp only [ContinuousLinearMap.coe_coe, LinearIsometry.coe_toContinuousLinearMap,
    LinearIsometry.norm_map]; rfl
#align continuous_multilinear_map.norm_comp_continuous_linear_isometry_le ContinuousMultilinearMap.norm_compContinuous_linearIsometry_le

theorem norm_compContinuous_linearIsometryEquiv (g : ContinuousMultilinearMap 𝕜 E₁ G)
    (f : ∀ i, E i ≃ₗᵢ[𝕜] E₁ i) :
    ‖g.compContinuousLinearMap fun i => (f i : E i →L[𝕜] E₁ i)‖ = ‖g‖ := by
  apply le_antisymm (g.norm_compContinuous_linearIsometry_le fun i => (f i).toLinearIsometry)
  have : g = (g.compContinuousLinearMap fun i => (f i : E i →L[𝕜] E₁ i)).compContinuousLinearMap
      fun i => ((f i).symm : E₁ i →L[𝕜] E i) := by
    ext1 m
    simp only [compContinuousLinearMap_apply, LinearIsometryEquiv.coe_coe'',
      LinearIsometryEquiv.apply_symm_apply]
  conv_lhs => rw [this]
  apply (g.compContinuousLinearMap fun i =>
    (f i : E i →L[𝕜] E₁ i)).norm_compContinuous_linearIsometry_le
      fun i => (f i).symm.toLinearIsometry
#align continuous_multilinear_map.norm_comp_continuous_linear_isometry_equiv ContinuousMultilinearMap.norm_compContinuous_linearIsometryEquiv

/-- `ContinuousMultilinearMap.compContinuousLinearMap` as a bundled continuous linear map.
This implementation fixes `f : Π i, E i →L[𝕜] E₁ i`.

TODO: Actually, the map is multilinear in `f` but an attempt to formalize this failed because of
issues with class instances. -/
def compContinuousLinearMapL (f : ∀ i, E i →L[𝕜] E₁ i) :
    ContinuousMultilinearMap 𝕜 E₁ G →L[𝕜] ContinuousMultilinearMap 𝕜 E G :=
  LinearMap.mkContinuous
    { toFun := fun g => g.compContinuousLinearMap f
      map_add' := fun _ _ => rfl
      map_smul' := fun _ _ => rfl } (∏ i, ‖f i‖) fun _ =>
    (norm_compContinuousLinearMap_le _ _).trans_eq (mul_comm _ _)
#align continuous_multilinear_map.comp_continuous_linear_mapL ContinuousMultilinearMap.compContinuousLinearMapL

@[simp]
theorem compContinuousLinearMapL_apply (g : ContinuousMultilinearMap 𝕜 E₁ G)
    (f : ∀ i, E i →L[𝕜] E₁ i) : compContinuousLinearMapL f g = g.compContinuousLinearMap f :=
  rfl
#align continuous_multilinear_map.comp_continuous_linear_mapL_apply ContinuousMultilinearMap.compContinuousLinearMapL_apply

theorem norm_compContinuousLinearMapL_le (f : ∀ i, E i →L[𝕜] E₁ i) :
    ‖@compContinuousLinearMapL 𝕜 ι E E₁ G _ _ _ _ _ _ _ _ f‖ ≤ ∏ i, ‖f i‖ :=
  LinearMap.mkContinuous_norm_le _ (prod_nonneg fun _ _ => norm_nonneg _) _
#align continuous_multilinear_map.norm_comp_continuous_linear_mapL_le ContinuousMultilinearMap.norm_compContinuousLinearMapL_le

variable (G)

/-- `ContinuousMultilinearMap.compContinuousLinearMap` as a bundled continuous linear equiv,
given `f : Π i, E i ≃L[𝕜] E₁ i`. -/
def compContinuousLinearMapEquivL (f : ∀ i, E i ≃L[𝕜] E₁ i) :
    ContinuousMultilinearMap 𝕜 E₁ G ≃L[𝕜] ContinuousMultilinearMap 𝕜 E G :=
  { compContinuousLinearMapL fun i => (f i : E i →L[𝕜] E₁ i) with
    invFun := compContinuousLinearMapL fun i => ((f i).symm : E₁ i →L[𝕜] E i)
    continuous_toFun := (compContinuousLinearMapL fun i => (f i : E i →L[𝕜] E₁ i)).continuous
    continuous_invFun :=
      (compContinuousLinearMapL fun i => ((f i).symm : E₁ i →L[𝕜] E i)).continuous
    left_inv := by
      intro g
      ext1 m
      simp only [LinearMap.toFun_eq_coe, ContinuousLinearMap.coe_coe,
        compContinuousLinearMapL_apply, compContinuousLinearMap_apply,
        ContinuousLinearEquiv.coe_coe, ContinuousLinearEquiv.apply_symm_apply]
    right_inv := by
      intro g
      ext1 m
      simp only [compContinuousLinearMapL_apply, LinearMap.toFun_eq_coe,
        ContinuousLinearMap.coe_coe, compContinuousLinearMap_apply,
        ContinuousLinearEquiv.coe_coe, ContinuousLinearEquiv.symm_apply_apply] }
#align continuous_multilinear_map.comp_continuous_linear_map_equivL ContinuousMultilinearMap.compContinuousLinearMapEquivL

@[simp]
theorem compContinuousLinearMapEquivL_symm (f : ∀ i, E i ≃L[𝕜] E₁ i) :
    (compContinuousLinearMapEquivL G f).symm =
      compContinuousLinearMapEquivL G fun i : ι => (f i).symm :=
  rfl
#align continuous_multilinear_map.comp_continuous_linear_map_equivL_symm ContinuousMultilinearMap.compContinuousLinearMapEquivL_symm

variable {G}

@[simp]
theorem compContinuousLinearMapEquivL_apply (g : ContinuousMultilinearMap 𝕜 E₁ G)
    (f : ∀ i, E i ≃L[𝕜] E₁ i) :
    compContinuousLinearMapEquivL G f g =
      g.compContinuousLinearMap fun i => (f i : E i →L[𝕜] E₁ i) :=
  rfl
#align continuous_multilinear_map.comp_continuous_linear_map_equivL_apply ContinuousMultilinearMap.compContinuousLinearMapEquivL_apply

end ContinuousMultilinearMap

section Smul

variable {R : Type*} [Semiring R] [Module R G] [SMulCommClass 𝕜 R G] [ContinuousConstSMul R G]

instance continuousConstSMul : ContinuousConstSMul R (ContinuousMultilinearMap 𝕜 E G) :=
  ⟨fun c =>
    (ContinuousLinearMap.compContinuousMultilinearMapL 𝕜 _ G G (c • ContinuousLinearMap.id 𝕜 G)).2⟩

end Smul

section Currying

/-!
### Currying

We associate to a continuous multilinear map in `n+1` variables (i.e., based on `Fin n.succ`) two
curried functions, named `f.curryLeft` (which is a continuous linear map on `E 0` taking values
in continuous multilinear maps in `n` variables) and `f.curryRight` (which is a continuous
multilinear map in `n` variables taking values in continuous linear maps on `E (last n)`).
The inverse operations are called `uncurryLeft` and `uncurryRight`.

We also register continuous linear equiv versions of these correspondences, in
`continuousMultilinearCurryLeftEquiv` and `continuousMultilinearCurryRightEquiv`.
-/


open Fin Function

theorem ContinuousLinearMap.norm_map_tail_le
    (f : Ei 0 →L[𝕜] ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei i.succ) G) (m : ∀ i, Ei i) :
    ‖f (m 0) (tail m)‖ ≤ ‖f‖ * ∏ i, ‖m i‖ :=
  calc
    ‖f (m 0) (tail m)‖ ≤ ‖f (m 0)‖ * ∏ i, ‖(tail m) i‖ := (f (m 0)).le_op_norm _
    _ ≤ ‖f‖ * ‖m 0‖ * ∏ i, ‖(tail m) i‖ :=
      (mul_le_mul_of_nonneg_right (f.le_op_norm _) (prod_nonneg fun _ _ => norm_nonneg _))
    _ = ‖f‖ * (‖m 0‖ * ∏ i, ‖(tail m) i‖) := by ring
    _ = ‖f‖ * ∏ i, ‖m i‖ := by
      rw [prod_univ_succ]
      rfl
#align continuous_linear_map.norm_map_tail_le ContinuousLinearMap.norm_map_tail_le

theorem ContinuousMultilinearMap.norm_map_init_le
    (f : ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei <| castSucc i) (Ei (last n) →L[𝕜] G))
    (m : ∀ i, Ei i) : ‖f (init m) (m (last n))‖ ≤ ‖f‖ * ∏ i, ‖m i‖ :=
  calc
    ‖f (init m) (m (last n))‖ ≤ ‖f (init m)‖ * ‖m (last n)‖ := (f (init m)).le_op_norm _
    _ ≤ (‖f‖ * ∏ i, ‖(init m) i‖) * ‖m (last n)‖ :=
      (mul_le_mul_of_nonneg_right (f.le_op_norm _) (norm_nonneg _))
    _ = ‖f‖ * ((∏ i, ‖(init m) i‖) * ‖m (last n)‖) := (mul_assoc _ _ _)
    _ = ‖f‖ * ∏ i, ‖m i‖ := by
      rw [prod_univ_castSucc]
      rfl
#align continuous_multilinear_map.norm_map_init_le ContinuousMultilinearMap.norm_map_init_le

theorem ContinuousMultilinearMap.norm_map_cons_le (f : ContinuousMultilinearMap 𝕜 Ei G) (x : Ei 0)
    (m : ∀ i : Fin n, Ei i.succ) : ‖f (cons x m)‖ ≤ ‖f‖ * ‖x‖ * ∏ i, ‖m i‖ :=
  calc
    ‖f (cons x m)‖ ≤ ‖f‖ * ∏ i, ‖cons x m i‖ := f.le_op_norm _
    _ = ‖f‖ * ‖x‖ * ∏ i, ‖m i‖ := by
      rw [prod_univ_succ]
      simp [mul_assoc]
#align continuous_multilinear_map.norm_map_cons_le ContinuousMultilinearMap.norm_map_cons_le

theorem ContinuousMultilinearMap.norm_map_snoc_le (f : ContinuousMultilinearMap 𝕜 Ei G)
    (m : ∀ i : Fin n, Ei <| castSucc i) (x : Ei (last n)) :
    ‖f (snoc m x)‖ ≤ (‖f‖ * ∏ i, ‖m i‖) * ‖x‖ :=
  calc
    ‖f (snoc m x)‖ ≤ ‖f‖ * ∏ i, ‖snoc m x i‖ := f.le_op_norm _
    _ = (‖f‖ * ∏ i, ‖m i‖) * ‖x‖ := by
      rw [prod_univ_castSucc]
      simp [mul_assoc]
#align continuous_multilinear_map.norm_map_snoc_le ContinuousMultilinearMap.norm_map_snoc_le

/-! #### Left currying -/


/-- Given a continuous linear map `f` from `E 0` to continuous multilinear maps on `n` variables,
construct the corresponding continuous multilinear map on `n+1` variables obtained by concatenating
the variables, given by `m ↦ f (m 0) (tail m)`-/
def ContinuousLinearMap.uncurryLeft
    (f : Ei 0 →L[𝕜] ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei i.succ) G) :
    ContinuousMultilinearMap 𝕜 Ei G :=
  (@LinearMap.uncurryLeft 𝕜 n Ei G _ _ _ _ _
      (ContinuousMultilinearMap.toMultilinearMapLinear.comp f.toLinearMap)).mkContinuous
    ‖f‖ fun m => by exact ContinuousLinearMap.norm_map_tail_le f m
#align continuous_linear_map.uncurry_left ContinuousLinearMap.uncurryLeft

@[simp]
theorem ContinuousLinearMap.uncurryLeft_apply
    (f : Ei 0 →L[𝕜] ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei i.succ) G) (m : ∀ i, Ei i) :
    f.uncurryLeft m = f (m 0) (tail m) :=
  rfl
#align continuous_linear_map.uncurry_left_apply ContinuousLinearMap.uncurryLeft_apply

/-- Given a continuous multilinear map `f` in `n+1` variables, split the first variable to obtain
a continuous linear map into continuous multilinear maps in `n` variables, given by
`x ↦ (m ↦ f (cons x m))`. -/
def ContinuousMultilinearMap.curryLeft (f : ContinuousMultilinearMap 𝕜 Ei G) :
    Ei 0 →L[𝕜] ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei i.succ) G :=
  LinearMap.mkContinuous
    { -- define a linear map into `n` continuous multilinear maps
      -- from an `n+1` continuous multilinear map
      toFun := fun x =>
        (f.toMultilinearMap.curryLeft x).mkContinuous (‖f‖ * ‖x‖) (f.norm_map_cons_le x)
      map_add' := fun x y => by
        ext m
        exact f.cons_add m x y
      map_smul' := fun c x => by
        ext m
        exact
          f.cons_smul m c x }-- then register its continuity thanks to its boundedness properties.
    ‖f‖ fun x => by
      rw [LinearMap.coe_mk, AddHom.coe_mk]
      exact MultilinearMap.mkContinuous_norm_le _ (mul_nonneg (norm_nonneg _) (norm_nonneg _)) _
#align continuous_multilinear_map.curry_left ContinuousMultilinearMap.curryLeft

@[simp]
theorem ContinuousMultilinearMap.curryLeft_apply (f : ContinuousMultilinearMap 𝕜 Ei G) (x : Ei 0)
    (m : ∀ i : Fin n, Ei i.succ) : f.curryLeft x m = f (cons x m) :=
  rfl
#align continuous_multilinear_map.curry_left_apply ContinuousMultilinearMap.curryLeft_apply

@[simp]
theorem ContinuousLinearMap.curry_uncurryLeft
    (f : Ei 0 →L[𝕜] ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei i.succ) G) :
    f.uncurryLeft.curryLeft = f := by
  ext m x
  simp only [tail_cons, ContinuousLinearMap.uncurryLeft_apply,
    ContinuousMultilinearMap.curryLeft_apply]
  rw [cons_zero]
#align continuous_linear_map.curry_uncurry_left ContinuousLinearMap.curry_uncurryLeft

@[simp]
theorem ContinuousMultilinearMap.uncurry_curryLeft (f : ContinuousMultilinearMap 𝕜 Ei G) :
    f.curryLeft.uncurryLeft = f :=
  ContinuousMultilinearMap.toMultilinearMap_injective <| f.toMultilinearMap.uncurry_curryLeft
#align continuous_multilinear_map.uncurry_curry_left ContinuousMultilinearMap.uncurry_curryLeft

variable (𝕜 Ei G)

/-- The space of continuous multilinear maps on `Π(i : Fin (n+1)), E i` is canonically isomorphic to
the space of continuous linear maps from `E 0` to the space of continuous multilinear maps on
`Π(i : Fin n), E i.succ`, by separating the first variable. We register this isomorphism in
`continuousMultilinearCurryLeftEquiv 𝕜 E E₂`. The algebraic version (without topology) is given
in `multilinearCurryLeftEquiv 𝕜 E E₂`.

The direct and inverse maps are given by `f.uncurryLeft` and `f.curryLeft`. Use these
unless you need the full framework of linear isometric equivs. -/
def continuousMultilinearCurryLeftEquiv :
    (Ei 0 →L[𝕜] ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei i.succ) G) ≃ₗᵢ[𝕜]
      ContinuousMultilinearMap 𝕜 Ei G :=
  LinearIsometryEquiv.ofBounds
    { toFun := ContinuousLinearMap.uncurryLeft
      map_add' := fun f₁ f₂ => by
        ext m
        rfl
      map_smul' := fun c f => by
        ext m
        rfl
      invFun := ContinuousMultilinearMap.curryLeft
      left_inv := ContinuousLinearMap.curry_uncurryLeft
      right_inv := ContinuousMultilinearMap.uncurry_curryLeft } (fun f => by
        simp only [LinearEquiv.coe_mk]
        exact MultilinearMap.mkContinuous_norm_le _ (norm_nonneg f) _) fun f => by
          simp only [LinearEquiv.coe_symm_mk]
          exact LinearMap.mkContinuous_norm_le _ (norm_nonneg f) _
#align continuous_multilinear_curry_left_equiv continuousMultilinearCurryLeftEquiv

variable {𝕜 Ei G}

set_option synthInstance.maxHeartbeats 25000 in
@[simp]
theorem continuousMultilinearCurryLeftEquiv_apply
    (f : Ei 0 →L[𝕜] ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei i.succ) G) (v : ∀ i, Ei i) :
    continuousMultilinearCurryLeftEquiv 𝕜 Ei G f v = f (v 0) (tail v) :=
  rfl
#align continuous_multilinear_curry_left_equiv_apply continuousMultilinearCurryLeftEquiv_apply

set_option synthInstance.maxHeartbeats 25000 in
@[simp]
theorem continuousMultilinearCurryLeftEquiv_symm_apply (f : ContinuousMultilinearMap 𝕜 Ei G)
    (x : Ei 0) (v : ∀ i : Fin n, Ei i.succ) :
    (continuousMultilinearCurryLeftEquiv 𝕜 Ei G).symm f x v = f (cons x v) :=
  rfl
#align continuous_multilinear_curry_left_equiv_symm_apply continuousMultilinearCurryLeftEquiv_symm_apply

@[simp]
theorem ContinuousMultilinearMap.curryLeft_norm (f : ContinuousMultilinearMap 𝕜 Ei G) :
    ‖f.curryLeft‖ = ‖f‖ :=
  (continuousMultilinearCurryLeftEquiv 𝕜 Ei G).symm.norm_map f
#align continuous_multilinear_map.curry_left_norm ContinuousMultilinearMap.curryLeft_norm

@[simp]
theorem ContinuousLinearMap.uncurryLeft_norm
    (f : Ei 0 →L[𝕜] ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei i.succ) G) :
    ‖f.uncurryLeft‖ = ‖f‖ :=
  (continuousMultilinearCurryLeftEquiv 𝕜 Ei G).norm_map f
#align continuous_linear_map.uncurry_left_norm ContinuousLinearMap.uncurryLeft_norm

/-! #### Right currying -/


/-- Given a continuous linear map `f` from continuous multilinear maps on `n` variables to
continuous linear maps on `E 0`, construct the corresponding continuous multilinear map on `n+1`
variables obtained by concatenating the variables, given by `m ↦ f (init m) (m (last n))`. -/
def ContinuousMultilinearMap.uncurryRight
    (f : ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei <| castSucc i) (Ei (last n) →L[𝕜] G)) :
    ContinuousMultilinearMap 𝕜 Ei G :=
  let f' : MultilinearMap 𝕜 (fun i : Fin n => Ei <| castSucc i) (Ei (last n) →ₗ[𝕜] G) :=
    { toFun := fun m => (f m).toLinearMap
      map_add' := fun m i x y => by simp
      map_smul' := fun m i c x => by simp }
  (@MultilinearMap.uncurryRight 𝕜 n Ei G _ _ _ _ _ f').mkContinuous ‖f‖ fun m =>
    f.norm_map_init_le m
#align continuous_multilinear_map.uncurry_right ContinuousMultilinearMap.uncurryRight

@[simp]
theorem ContinuousMultilinearMap.uncurryRight_apply
    (f : ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei <| castSucc i) (Ei (last n) →L[𝕜] G))
    (m : ∀ i, Ei i) : f.uncurryRight m = f (init m) (m (last n)) :=
  rfl
#align continuous_multilinear_map.uncurry_right_apply ContinuousMultilinearMap.uncurryRight_apply

/-- Given a continuous multilinear map `f` in `n+1` variables, split the last variable to obtain
a continuous multilinear map in `n` variables into continuous linear maps, given by
`m ↦ (x ↦ f (snoc m x))`. -/
def ContinuousMultilinearMap.curryRight (f : ContinuousMultilinearMap 𝕜 Ei G) :
    ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei <| castSucc i) (Ei (last n) →L[𝕜] G) :=
  let f' : MultilinearMap 𝕜 (fun i : Fin n => Ei <| castSucc i) (Ei (last n) →L[𝕜] G) :=
    { toFun := fun m =>
        (f.toMultilinearMap.curryRight m).mkContinuous (‖f‖ * ∏ i, ‖m i‖) fun x =>
          f.norm_map_snoc_le m x
      map_add' := fun m i x y => by
        simp
        rfl
      map_smul' := fun m i c x => by
        simp
        rfl }
  f'.mkContinuous ‖f‖ fun m => by
    simp only [MultilinearMap.coe_mk]
    exact LinearMap.mkContinuous_norm_le _
      (mul_nonneg (norm_nonneg _) (prod_nonneg fun _ _ => norm_nonneg _)) _
#align continuous_multilinear_map.curry_right ContinuousMultilinearMap.curryRight

@[simp]
theorem ContinuousMultilinearMap.curryRight_apply (f : ContinuousMultilinearMap 𝕜 Ei G)
    (m : ∀ i : Fin n, Ei <| castSucc i) (x : Ei (last n)) : f.curryRight m x = f (snoc m x) :=
  rfl
#align continuous_multilinear_map.curry_right_apply ContinuousMultilinearMap.curryRight_apply

@[simp]
theorem ContinuousMultilinearMap.curry_uncurryRight
    (f : ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei <| castSucc i) (Ei (last n) →L[𝕜] G)) :
    f.uncurryRight.curryRight = f := by
  ext m x
  simp only [snoc_last, ContinuousMultilinearMap.curryRight_apply,
    ContinuousMultilinearMap.uncurryRight_apply]
  rw [init_snoc]
#align continuous_multilinear_map.curry_uncurry_right ContinuousMultilinearMap.curry_uncurryRight

@[simp]
theorem ContinuousMultilinearMap.uncurry_curryRight (f : ContinuousMultilinearMap 𝕜 Ei G) :
    f.curryRight.uncurryRight = f := by
  ext m
  simp
#align continuous_multilinear_map.uncurry_curry_right ContinuousMultilinearMap.uncurry_curryRight

variable (𝕜 Ei G)

/--
The space of continuous multilinear maps on `Π(i : Fin (n+1)), Ei i` is canonically isomorphic to
the space of continuous multilinear maps on `Π(i : Fin n), Ei <| castSucc i` with values in the
space of continuous linear maps on `Ei (last n)`, by separating the last variable. We register this
isomorphism as a continuous linear equiv in `continuousMultilinearCurryRightEquiv 𝕜 Ei G`.
The algebraic version (without topology) is given in `multilinearCurryRightEquiv 𝕜 Ei G`.

The direct and inverse maps are given by `f.uncurryRight` and `f.curryRight`. Use these
unless you need the full framework of linear isometric equivs.
-/
def continuousMultilinearCurryRightEquiv :
    ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei <| castSucc i) (Ei (last n) →L[𝕜] G) ≃ₗᵢ[𝕜]
      ContinuousMultilinearMap 𝕜 Ei G :=
  LinearIsometryEquiv.ofBounds
    { toFun := ContinuousMultilinearMap.uncurryRight
      map_add' := fun f₁ f₂ => by
        ext m
        rfl
      map_smul' := fun c f => by
        ext m
        rfl
      invFun := ContinuousMultilinearMap.curryRight
      left_inv := ContinuousMultilinearMap.curry_uncurryRight
      right_inv := ContinuousMultilinearMap.uncurry_curryRight } (fun f => by
        simp only [uncurryRight, LinearEquiv.coe_mk]
        exact MultilinearMap.mkContinuous_norm_le _ (norm_nonneg f) _) fun f => by
          simp only [curryRight, LinearEquiv.coe_symm_mk]
          exact MultilinearMap.mkContinuous_norm_le _ (norm_nonneg f) _
#align continuous_multilinear_curry_right_equiv continuousMultilinearCurryRightEquiv

variable (n G')

/-- The space of continuous multilinear maps on `Π(i : Fin (n+1)), G` is canonically isomorphic to
the space of continuous multilinear maps on `Π(i : Fin n), G` with values in the space
of continuous linear maps on `G`, by separating the last variable. We register this
isomorphism as a continuous linear equiv in `continuousMultilinearCurryRightEquiv' 𝕜 n G G'`.
For a version allowing dependent types, see `continuousMultilinearCurryRightEquiv`. When there
are no dependent types, use the primed version as it helps Lean a lot for unification.

The direct and inverse maps are given by `f.uncurryRight` and `f.curryRight`. Use these
unless you need the full framework of linear isometric equivs. -/
def continuousMultilinearCurryRightEquiv' : (G[×n]→L[𝕜] G →L[𝕜] G') ≃ₗᵢ[𝕜] G[×n.succ]→L[𝕜] G' :=
  continuousMultilinearCurryRightEquiv 𝕜 (fun _ => G) G'
#align continuous_multilinear_curry_right_equiv' continuousMultilinearCurryRightEquiv'

variable {n 𝕜 G Ei G'}

@[simp]
theorem continuousMultilinearCurryRightEquiv_apply
    (f : ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei <| castSucc i) (Ei (last n) →L[𝕜] G))
    (v : ∀ i, Ei i) : (continuousMultilinearCurryRightEquiv 𝕜 Ei G) f v = f (init v) (v (last n)) :=
  rfl
#align continuous_multilinear_curry_right_equiv_apply continuousMultilinearCurryRightEquiv_apply

@[simp]
theorem continuousMultilinearCurryRightEquiv_symm_apply (f : ContinuousMultilinearMap 𝕜 Ei G)
    (v : ∀ i : Fin n, Ei <| castSucc i) (x : Ei (last n)) :
    (continuousMultilinearCurryRightEquiv 𝕜 Ei G).symm f v x = f (snoc v x) :=
  rfl
#align continuous_multilinear_curry_right_equiv_symm_apply continuousMultilinearCurryRightEquiv_symm_apply

@[simp]
theorem continuousMultilinearCurryRightEquiv_apply' (f : G[×n]→L[𝕜] G →L[𝕜] G')
    (v : Fin (n + 1) → G) :
    continuousMultilinearCurryRightEquiv' 𝕜 n G G' f v = f (init v) (v (last n)) :=
  rfl
#align continuous_multilinear_curry_right_equiv_apply' continuousMultilinearCurryRightEquiv_apply'

@[simp]
theorem continuousMultilinearCurryRightEquiv_symm_apply' (f : G[×n.succ]→L[𝕜] G')
    (v : Fin n → G) (x : G) :
    (continuousMultilinearCurryRightEquiv' 𝕜 n G G').symm f v x = f (snoc v x) :=
  rfl
#align continuous_multilinear_curry_right_equiv_symm_apply' continuousMultilinearCurryRightEquiv_symm_apply'

@[simp]
theorem ContinuousMultilinearMap.curryRight_norm (f : ContinuousMultilinearMap 𝕜 Ei G) :
    ‖f.curryRight‖ = ‖f‖ :=
  (continuousMultilinearCurryRightEquiv 𝕜 Ei G).symm.norm_map f
#align continuous_multilinear_map.curry_right_norm ContinuousMultilinearMap.curryRight_norm

@[simp]
theorem ContinuousMultilinearMap.uncurryRight_norm
    (f : ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei <| castSucc i) (Ei (last n) →L[𝕜] G)) :
    ‖f.uncurryRight‖ = ‖f‖ :=
  (continuousMultilinearCurryRightEquiv 𝕜 Ei G).norm_map f
#align continuous_multilinear_map.uncurry_right_norm ContinuousMultilinearMap.uncurryRight_norm

/-!
#### Currying with `0` variables

The space of multilinear maps with `0` variables is trivial: such a multilinear map is just an
arbitrary constant (note that multilinear maps in `0` variables need not map `0` to `0`!).
Therefore, the space of continuous multilinear maps on `(Fin 0) → G` with values in `E₂` is
isomorphic (and even isometric) to `E₂`. As this is the zeroth step in the construction of iterated
derivatives, we register this isomorphism. -/


section

/-- Associating to a continuous multilinear map in `0` variables the unique value it takes. -/
def ContinuousMultilinearMap.uncurry0 (f : ContinuousMultilinearMap 𝕜 (fun _ : Fin 0 => G) G') :
    G' :=
  f 0
#align continuous_multilinear_map.uncurry0 ContinuousMultilinearMap.uncurry0

variable (𝕜 G)

/-- Associating to an element `x` of a vector space `E₂` the continuous multilinear map in `0`
variables taking the (unique) value `x` -/
def ContinuousMultilinearMap.curry0 (x : G') : G[×0]→L[𝕜] G' :=
  ContinuousMultilinearMap.constOfIsEmpty 𝕜 _ x
#align continuous_multilinear_map.curry0 ContinuousMultilinearMap.curry0

variable {G}

@[simp]
theorem ContinuousMultilinearMap.curry0_apply (x : G') (m : Fin 0 → G) :
    ContinuousMultilinearMap.curry0 𝕜 G x m = x :=
  rfl
#align continuous_multilinear_map.curry0_apply ContinuousMultilinearMap.curry0_apply

variable {𝕜}

@[simp]
theorem ContinuousMultilinearMap.uncurry0_apply (f : G[×0]→L[𝕜] G') : f.uncurry0 = f 0 :=
  rfl
#align continuous_multilinear_map.uncurry0_apply ContinuousMultilinearMap.uncurry0_apply

@[simp]
theorem ContinuousMultilinearMap.apply_zero_curry0 (f : G[×0]→L[𝕜] G') {x : Fin 0 → G} :
    ContinuousMultilinearMap.curry0 𝕜 G (f x) = f := by
  ext m
  simp [(Subsingleton.elim _ _ : x = m)]
#align continuous_multilinear_map.apply_zero_curry0 ContinuousMultilinearMap.apply_zero_curry0

theorem ContinuousMultilinearMap.uncurry0_curry0 (f : G[×0]→L[𝕜] G') :
    ContinuousMultilinearMap.curry0 𝕜 G f.uncurry0 = f := by simp
#align continuous_multilinear_map.uncurry0_curry0 ContinuousMultilinearMap.uncurry0_curry0

variable (𝕜 G)

theorem ContinuousMultilinearMap.curry0_uncurry0 (x : G') :
    (ContinuousMultilinearMap.curry0 𝕜 G x).uncurry0 = x :=
  rfl
#align continuous_multilinear_map.curry0_uncurry0 ContinuousMultilinearMap.curry0_uncurry0

@[simp]
theorem ContinuousMultilinearMap.curry0_norm (x : G') :
    ‖ContinuousMultilinearMap.curry0 𝕜 G x‖ = ‖x‖ :=
  norm_constOfIsEmpty _ _ _
#align continuous_multilinear_map.curry0_norm ContinuousMultilinearMap.curry0_norm

variable {𝕜 G}

@[simp]
theorem ContinuousMultilinearMap.fin0_apply_norm (f : G[×0]→L[𝕜] G') {x : Fin 0 → G} :
    ‖f x‖ = ‖f‖ := by
  obtain rfl : x = 0 := Subsingleton.elim _ _
  refine' le_antisymm (by simpa using f.le_op_norm 0) _
  have : ‖ContinuousMultilinearMap.curry0 𝕜 G f.uncurry0‖ ≤ ‖f.uncurry0‖ :=
    ContinuousMultilinearMap.op_norm_le_bound _ (norm_nonneg _) fun m => by
      simp [-ContinuousMultilinearMap.apply_zero_curry0]
  simpa [-Matrix.zero_empty] using this
#align continuous_multilinear_map.fin0_apply_norm ContinuousMultilinearMap.fin0_apply_norm

theorem ContinuousMultilinearMap.uncurry0_norm (f : G[×0]→L[𝕜] G') : ‖f.uncurry0‖ = ‖f‖ := by simp
#align continuous_multilinear_map.uncurry0_norm ContinuousMultilinearMap.uncurry0_norm

variable (𝕜 G G')

/-- The continuous linear isomorphism between elements of a normed space, and continuous multilinear
maps in `0` variables with values in this normed space.

The direct and inverse maps are `uncurry0` and `curry0`. Use these unless you need the full
framework of linear isometric equivs. -/
def continuousMultilinearCurryFin0 : (G[×0]→L[𝕜] G') ≃ₗᵢ[𝕜] G' where
  toFun f := ContinuousMultilinearMap.uncurry0 f
  invFun f := ContinuousMultilinearMap.curry0 𝕜 G f
  map_add' _ _ := rfl
  map_smul' _ _ := rfl
  left_inv := ContinuousMultilinearMap.uncurry0_curry0
  right_inv := ContinuousMultilinearMap.curry0_uncurry0 𝕜 G
  norm_map' := ContinuousMultilinearMap.uncurry0_norm
#align continuous_multilinear_curry_fin0 continuousMultilinearCurryFin0

variable {𝕜 G G'}

@[simp]
theorem continuousMultilinearCurryFin0_apply (f : G[×0]→L[𝕜] G') :
    continuousMultilinearCurryFin0 𝕜 G G' f = f 0 :=
  rfl
#align continuous_multilinear_curry_fin0_apply continuousMultilinearCurryFin0_apply

@[simp]
theorem continuousMultilinearCurryFin0_symm_apply (x : G') (v : Fin 0 → G) :
    (continuousMultilinearCurryFin0 𝕜 G G').symm x v = x :=
  rfl
#align continuous_multilinear_curry_fin0_symm_apply continuousMultilinearCurryFin0_symm_apply

end

/-! #### With 1 variable -/


variable (𝕜 G G')

/-- Continuous multilinear maps from `G^1` to `G'` are isomorphic with continuous linear maps from
`G` to `G'`. -/
def continuousMultilinearCurryFin1 : (G[×1]→L[𝕜] G') ≃ₗᵢ[𝕜] G →L[𝕜] G' :=
  (continuousMultilinearCurryRightEquiv 𝕜 (fun _ : Fin 1 => G) G').symm.trans
    (continuousMultilinearCurryFin0 𝕜 G (G →L[𝕜] G'))
#align continuous_multilinear_curry_fin1 continuousMultilinearCurryFin1

variable {𝕜 G G'}

@[simp]
theorem continuousMultilinearCurryFin1_apply (f : G[×1]→L[𝕜] G') (x : G) :
    continuousMultilinearCurryFin1 𝕜 G G' f x = f (Fin.snoc 0 x) :=
  rfl
#align continuous_multilinear_curry_fin1_apply continuousMultilinearCurryFin1_apply

@[simp]
theorem continuousMultilinearCurryFin1_symm_apply (f : G →L[𝕜] G') (v : Fin 1 → G) :
    (continuousMultilinearCurryFin1 𝕜 G G').symm f v = f (v 0) :=
  rfl
#align continuous_multilinear_curry_fin1_symm_apply continuousMultilinearCurryFin1_symm_apply

namespace ContinuousMultilinearMap

variable (𝕜 G G')

@[simp]
theorem norm_domDomCongr (σ : ι ≃ ι') (f : ContinuousMultilinearMap 𝕜 (fun _ : ι => G) G') :
    ‖domDomCongr σ f‖ = ‖f‖ := by
  simp only [norm_def, LinearEquiv.coe_mk, ← σ.prod_comp,
    (σ.arrowCongr (Equiv.refl G)).surjective.forall, domDomCongr_apply, Equiv.arrowCongr_apply,
    Equiv.coe_refl, comp.left_id, comp_apply, Equiv.symm_apply_apply, id]
#align continuous_multilinear_map.norm_dom_dom_congr ContinuousMultilinearMap.norm_domDomCongr

/-- An equivalence of the index set defines a linear isometric equivalence between the spaces
of multilinear maps. -/
def domDomCongrₗᵢ (σ : ι ≃ ι') :
    ContinuousMultilinearMap 𝕜 (fun _ : ι => G) G' ≃ₗᵢ[𝕜]
      ContinuousMultilinearMap 𝕜 (fun _ : ι' => G) G' :=
  { domDomCongrEquiv σ with
    map_add' := fun _ _ => rfl
    map_smul' := fun _ _ => rfl
    norm_map' := norm_domDomCongr 𝕜 G G' σ }
#align continuous_multilinear_map.dom_dom_congrₗᵢ ContinuousMultilinearMap.domDomCongrₗᵢ

variable {𝕜 G G'}

section

/-- A continuous multilinear map with variables indexed by `ι ⊕ ι'` defines a continuous
multilinear map with variables indexed by `ι` taking values in the space of continuous multilinear
maps with variables indexed by `ι'`. -/
def currySum (f : ContinuousMultilinearMap 𝕜 (fun _ : Sum ι ι' => G) G') :
    ContinuousMultilinearMap 𝕜 (fun _ : ι => G) (ContinuousMultilinearMap 𝕜 (fun _ : ι' => G) G') :=
  MultilinearMap.mkContinuousMultilinear (MultilinearMap.currySum f.toMultilinearMap) ‖f‖
    fun m m' => by simpa [Fintype.prod_sum_type, mul_assoc] using f.le_op_norm (Sum.elim m m')
#align continuous_multilinear_map.curry_sum ContinuousMultilinearMap.currySum

@[simp]
theorem currySum_apply (f : ContinuousMultilinearMap 𝕜 (fun _ : Sum ι ι' => G) G') (m : ι → G)
    (m' : ι' → G) : f.currySum m m' = f (Sum.elim m m') :=
  rfl
#align continuous_multilinear_map.curry_sum_apply ContinuousMultilinearMap.currySum_apply

/-- A continuous multilinear map with variables indexed by `ι` taking values in the space of
continuous multilinear maps with variables indexed by `ι'` defines a continuous multilinear map with
variables indexed by `ι ⊕ ι'`. -/
def uncurrySum (f : ContinuousMultilinearMap 𝕜 (fun _ : ι => G)
    (ContinuousMultilinearMap 𝕜 (fun _ : ι' => G) G')) :
    ContinuousMultilinearMap 𝕜 (fun _ : Sum ι ι' => G) G' :=
  MultilinearMap.mkContinuous
    (toMultilinearMapLinear.compMultilinearMap f.toMultilinearMap).uncurrySum ‖f‖ fun m => by
    simpa [Fintype.prod_sum_type, mul_assoc] using
      (f (m ∘ Sum.inl)).le_of_op_norm_le (m ∘ Sum.inr) (f.le_op_norm _)
#align continuous_multilinear_map.uncurry_sum ContinuousMultilinearMap.uncurrySum

@[simp]
theorem uncurrySum_apply (f : ContinuousMultilinearMap 𝕜 (fun _ : ι => G)
    (ContinuousMultilinearMap 𝕜 (fun _ : ι' => G) G'))
    (m : Sum ι ι' → G) : f.uncurrySum m = f (m ∘ Sum.inl) (m ∘ Sum.inr) :=
  rfl
#align continuous_multilinear_map.uncurry_sum_apply ContinuousMultilinearMap.uncurrySum_apply

variable (𝕜 ι ι' G G')

/-- Linear isometric equivalence between the space of continuous multilinear maps with variables
indexed by `ι ⊕ ι'` and the space of continuous multilinear maps with variables indexed by `ι`
taking values in the space of continuous multilinear maps with variables indexed by `ι'`.

The forward and inverse functions are `ContinuousMultilinearMap.currySum`
and `ContinuousMultilinearMap.uncurrySum`. Use this definition only if you need
some properties of `LinearIsometryEquiv`. -/
def currySumEquiv : ContinuousMultilinearMap 𝕜 (fun _ : Sum ι ι' => G) G' ≃ₗᵢ[𝕜]
    ContinuousMultilinearMap 𝕜 (fun _ : ι => G) (ContinuousMultilinearMap 𝕜 (fun _ : ι' => G) G') :=
  LinearIsometryEquiv.ofBounds
    { toFun := currySum
      invFun := uncurrySum
      map_add' := fun f g => by
        ext
        rfl
      map_smul' := fun c f => by
        ext
        rfl
      left_inv := fun f => by
        ext m
        exact congr_arg f (Sum.elim_comp_inl_inr m)
      right_inv := fun f => by
        ext m₁ m₂
        rfl }
    (fun f => MultilinearMap.mkContinuousMultilinear_norm_le _ (norm_nonneg f) _) fun f => by
      simp only [LinearEquiv.coe_symm_mk]
      exact MultilinearMap.mkContinuous_norm_le _ (norm_nonneg f) _
#align continuous_multilinear_map.curry_sum_equiv ContinuousMultilinearMap.currySumEquiv

end

section

variable (𝕜 G G') {k l : ℕ} {s : Finset (Fin n)}

/-- If `s : Finset (Fin n)` is a finite set of cardinality `k` and its complement has cardinality
`l`, then the space of continuous multilinear maps `G [×n]→L[𝕜] G'` of `n` variables is isomorphic
to the space of continuous multilinear maps `G [×k]→L[𝕜] G [×l]→L[𝕜] G'` of `k` variables taking
values in the space of continuous multilinear maps of `l` variables. -/
def curryFinFinset {k l n : ℕ} {s : Finset (Fin n)} (hk : s.card = k) (hl : sᶜ.card = l) :
    (G[×n]→L[𝕜] G') ≃ₗᵢ[𝕜] G[×k]→L[𝕜] G[×l]→L[𝕜] G' :=
  (domDomCongrₗᵢ 𝕜 G G' (finSumEquivOfFinset hk hl).symm).trans
    (currySumEquiv 𝕜 (Fin k) (Fin l) G G')
#align continuous_multilinear_map.curry_fin_finset ContinuousMultilinearMap.curryFinFinset

variable {𝕜 G G'}

set_option synthInstance.maxHeartbeats 25000 in
@[simp]
theorem curryFinFinset_apply (hk : s.card = k) (hl : sᶜ.card = l) (f : G[×n]→L[𝕜] G')
    (mk : Fin k → G) (ml : Fin l → G) : curryFinFinset 𝕜 G G' hk hl f mk ml =
      f fun i => Sum.elim mk ml ((finSumEquivOfFinset hk hl).symm i) :=
  rfl
#align continuous_multilinear_map.curry_fin_finset_apply ContinuousMultilinearMap.curryFinFinset_apply

set_option synthInstance.maxHeartbeats 25000 in
@[simp]
theorem curryFinFinset_symm_apply (hk : s.card = k) (hl : sᶜ.card = l)
    (f : G[×k]→L[𝕜] G[×l]→L[𝕜] G') (m : Fin n → G) : (curryFinFinset 𝕜 G G' hk hl).symm f m =
      f (fun i => m <| finSumEquivOfFinset hk hl (Sum.inl i)) fun i =>
        m <| finSumEquivOfFinset hk hl (Sum.inr i) :=
  rfl
#align continuous_multilinear_map.curry_fin_finset_symm_apply ContinuousMultilinearMap.curryFinFinset_symm_apply

set_option synthInstance.maxHeartbeats 25000 in
-- @[simp] -- Porting note: simp removed: simp can reduce LHS
theorem curryFinFinset_symm_apply_piecewise_const (hk : s.card = k) (hl : sᶜ.card = l)
    (f : G[×k]→L[𝕜] G[×l]→L[𝕜] G') (x y : G) :
    (curryFinFinset 𝕜 G G' hk hl).symm f (s.piecewise (fun _ => x) fun _ => y) =
      f (fun _ => x) fun _ => y :=
  MultilinearMap.curryFinFinset_symm_apply_piecewise_const hk hl _ x y
#align continuous_multilinear_map.curry_fin_finset_symm_apply_piecewise_const ContinuousMultilinearMap.curryFinFinset_symm_apply_piecewise_const

set_option synthInstance.maxHeartbeats 25000 in
@[simp]
theorem curryFinFinset_symm_apply_const (hk : s.card = k) (hl : sᶜ.card = l)
    (f : G[×k]→L[𝕜] G[×l]→L[𝕜] G') (x : G) :
    ((curryFinFinset 𝕜 G G' hk hl).symm f fun _ => x) = f (fun _ => x) fun _ => x :=
  rfl
#align continuous_multilinear_map.curry_fin_finset_symm_apply_const ContinuousMultilinearMap.curryFinFinset_symm_apply_const

set_option synthInstance.maxHeartbeats 25000 in
-- @[simp] -- Porting note: simp removed: simp can reduce LHS
theorem curryFinFinset_apply_const (hk : s.card = k) (hl : sᶜ.card = l) (f : G[×n]→L[𝕜] G')
    (x y : G) : (curryFinFinset 𝕜 G G' hk hl f (fun _ => x) fun _ => y) =
      f (s.piecewise (fun _ => x) fun _ => y) := by
  refine' (curryFinFinset_symm_apply_piecewise_const hk hl _ _ _).symm.trans _
  -- `rw` fails
  rw [LinearIsometryEquiv.symm_apply_apply]
#align continuous_multilinear_map.curry_fin_finset_apply_const ContinuousMultilinearMap.curryFinFinset_apply_const

end

end ContinuousMultilinearMap

end Currying
````
