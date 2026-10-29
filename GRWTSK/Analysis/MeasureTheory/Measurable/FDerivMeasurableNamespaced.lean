-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableApply.Variante4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableApply.Variante4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"e4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/Calculus/FDeriv/Measurable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel, Yury Kudryashov
-/
import Mathlib.Analysis.Calculus.Deriv.Basic
import Mathlib.MeasureTheory.Constructions.BorelSpace.ContinuousLinearMap
import Mathlib.MeasureTheory.Function.StronglyMeasurable.Basic


namespace GRWTSK.Analysis.MeasureTheory.MeasurableApply.Variante4bb017640ed2e2286bc9d47fb2c476a4575212f15cdc2c79b508c9241a9bece

#align_import analysis.calculus.fderiv_measurable from "leanprover-community/mathlib"@"3bce8d800a6f2b8f63fe1e588fd76a9ff4adcebe"

/-!
# Derivative is measurable

In this file we prove that the derivative of any function with complete codomain is a measurable
function. Namely, we prove:

* `measurableSet_of_differentiableAt`: the set `{x | DifferentiableAt 𝕜 f x}` is measurable;
* `measurable_fderiv`: the function `fderiv 𝕜 f` is measurable;
* `measurable_fderiv_apply_const`: for a fixed vector `y`, the function `fun x ↦ fderiv 𝕜 f x y`
  is measurable;
* `measurable_deriv`: the function `deriv f` is measurable (for `f : 𝕜 → F`).

We also show the same results for the right derivative on the real line
(see `measurable_derivWithin_Ici` and `measurable_derivWithin_Ioi`), following the same
proof strategy.

## Implementation

We give a proof that avoids second-countability issues, by expressing the differentiability set
as a function of open sets in the following way. Define `A (L, r, ε)` to be the set of points
where, on a ball of radius roughly `r` around `x`, the function is uniformly approximated by the
linear map `L`, up to `ε r`. It is an open set.
Let also `B (L, r, s, ε) = A (L, r, ε) ∩ A (L, s, ε)`: we require that at two possibly different
scales `r` and `s`, the function is well approximated by the linear map `L`. It is also open.

We claim that the differentiability set of `f` is exactly
`D = ⋂ ε > 0, ⋃ δ > 0, ⋂ r, s < δ, ⋃ L, B (L, r, s, ε)`.
In other words, for any `ε > 0`, we require that there is a size `δ` such that, for any two scales
below this size, the function is well approximated by a linear map, common to the two scales.

The set `⋃ L, B (L, r, s, ε)` is open, as a union of open sets. Converting the intersections and
unions to countable ones (using real numbers of the form `2 ^ (-n)`), it follows that the
differentiability set is measurable.

To prove the claim, there are two inclusions. One is trivial: if the function is differentiable
at `x`, then `x` belongs to `D` (just take `L` to be the derivative, and use that the
differentiability exactly says that the map is well approximated by `L`). This is proved in
`mem_A_of_differentiable` and `differentiable_set_subset_D`.

For the other direction, the difficulty is that `L` in the union may depend on `ε, r, s`. The key
point is that, in fact, it doesn't depend too much on them. First, if `x` belongs both to
`A (L, r, ε)` and `A (L', r, ε)`, then `L` and `L'` have to be close on a shell, and thus
`‖L - L'‖` is bounded by `ε` (see `norm_sub_le_of_mem_A`). Assume now `x ∈ D`. If one has two maps
`L` and `L'` such that `x` belongs to `A (L, r, ε)` and to `A (L', r', ε')`, one deduces that `L` is
close to `L'` by arguing as follows. Consider another scale `s` smaller than `r` and `r'`. Take a
linear map `L₁` that approximates `f` around `x` both at scales `r` and `s` w.r.t. `ε` (it exists as
`x` belongs to `D`). Take also `L₂` that approximates `f` around `x` both at scales `r'` and `s`
w.r.t. `ε'`. Then `L₁` is close to `L` (as they are close on a shell of radius `r`), and `L₂` is
close to `L₁` (as they are close on a shell of radius `s`), and `L'` is close to `L₂` (as they are
close on a shell of radius `r'`). It follows that `L` is close to `L'`, as we claimed.

It follows that the different approximating linear maps that show up form a Cauchy sequence when
`ε` tends to `0`. When the target space is complete, this sequence converges, to a limit `f'`.
With the same kind of arguments, one checks that `f` is differentiable with derivative `f'`.

To show that the derivative itself is measurable, add in the definition of `B` and `D` a set
`K` of continuous linear maps to which `L` should belong. Then, when `K` is complete, the set `D K`
is exactly the set of points where `f` is differentiable with a derivative in `K`.

## Tags

derivative, measurable function, Borel σ-algebra
-/

set_option linter.uppercaseLean3 false -- A B D

noncomputable section

open Set Metric Asymptotics Filter ContinuousLinearMap MeasureTheory
open TopologicalSpace (SecondCountableTopology)
open scoped Topology

namespace ContinuousLinearMap

variable {𝕜 E F : Type*} [NontriviallyNormedField 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  [NormedAddCommGroup F] [NormedSpace 𝕜 F]

theorem measurable_apply₂ [MeasurableSpace E] [OpensMeasurableSpace E]
    [SecondCountableTopologyEither (E →L[𝕜] F) E]
    [MeasurableSpace F] [BorelSpace F] : Measurable fun p : (E →L[𝕜] F) × E => p.1 p.2 :=
  isBoundedBilinearMapApply.continuous.measurable
#align continuous_linear_map.measurable_apply₂ ContinuousLinearMap.measurable_apply₂

end ContinuousLinearMap

section fderiv

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]

variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]

variable {f : E → F} (K : Set (E →L[𝕜] F))

namespace FDerivMeasurableAux

/-- The set `A f L r ε` is the set of points `x` around which the function `f` is well approximated
at scale `r` by the linear map `L`, up to an error `ε`. We tweak the definition to make sure that
this is an open set.-/
def A (f : E → F) (L : E →L[𝕜] F) (r ε : ℝ) : Set E :=
  { x |
    ∃ r' ∈ Ioc (r / 2) r,
      ∀ (y) (_ : y ∈ ball x r') (z) (_ : z ∈ ball x r'), ‖f z - f y - L (z - y)‖ ≤ ε * r }
#align fderiv_measurable_aux.A FDerivMeasurableAux.A

/-- The set `B f K r s ε` is the set of points `x` around which there exists a continuous linear map
`L` belonging to `K` (a given set of continuous linear maps) that approximates well the
function `f` (up to an error `ε`), simultaneously at scales `r` and `s`. -/
def B (f : E → F) (K : Set (E →L[𝕜] F)) (r s ε : ℝ) : Set E :=
  ⋃ L ∈ K, A f L r ε ∩ A f L s ε
#align fderiv_measurable_aux.B FDerivMeasurableAux.B

/-- The set `D f K` is a complicated set constructed using countable intersections and unions. Its
main use is that, when `K` is complete, it is exactly the set of points where `f` is differentiable,
with a derivative in `K`. -/
def D (f : E → F) (K : Set (E →L[𝕜] F)) : Set E :=
  ⋂ e : ℕ, ⋃ n : ℕ, ⋂ (p ≥ n) (q ≥ n), B f K ((1 / 2) ^ p) ((1 / 2) ^ q) ((1 / 2) ^ e)
#align fderiv_measurable_aux.D FDerivMeasurableAux.D

theorem isOpen_a (L : E →L[𝕜] F) (r ε : ℝ) : IsOpen (A f L r ε) := by
  rw [Metric.isOpen_iff]
  rintro x ⟨r', r'_mem, hr'⟩
  obtain ⟨s, s_gt, s_lt⟩ : ∃ s : ℝ, r / 2 < s ∧ s < r' := exists_between r'_mem.1
  have : s ∈ Ioc (r / 2) r := ⟨s_gt, le_of_lt (s_lt.trans_le r'_mem.2)⟩
  refine' ⟨r' - s, by linarith, fun x' hx' => ⟨s, this, _⟩⟩
  have B : ball x' s ⊆ ball x r' := ball_subset (le_of_lt hx')
  intro y hy z hz
  exact hr' y (B hy) z (B hz)
#align fderiv_measurable_aux.is_open_A FDerivMeasurableAux.isOpen_a

theorem isOpen_b {K : Set (E →L[𝕜] F)} {r s ε : ℝ} : IsOpen (B f K r s ε) := by
  -- Porting note: was
  -- simp [B, isOpen_iUnion, IsOpen.inter, isOpen_a]
  simp only [B]
  exact isOpen_iUnion fun _ => isOpen_iUnion fun _ => (isOpen_a _ _ _).inter (isOpen_a _ _ _)
#align fderiv_measurable_aux.is_open_B FDerivMeasurableAux.isOpen_b

theorem a_mono (L : E →L[𝕜] F) (r : ℝ) {ε δ : ℝ} (h : ε ≤ δ) : A f L r ε ⊆ A f L r δ := by
  rintro x ⟨r', r'r, hr'⟩
  refine' ⟨r', r'r, fun y hy z hz => (hr' y hy z hz).trans (mul_le_mul_of_nonneg_right h _)⟩
  linarith [mem_ball.1 hy, r'r.2, @dist_nonneg _ _ y x]
#align fderiv_measurable_aux.A_mono FDerivMeasurableAux.a_mono

theorem le_of_mem_a {r ε : ℝ} {L : E →L[𝕜] F} {x : E} (hx : x ∈ A f L r ε) {y z : E}
    (hy : y ∈ closedBall x (r / 2)) (hz : z ∈ closedBall x (r / 2)) :
    ‖f z - f y - L (z - y)‖ ≤ ε * r := by
  rcases hx with ⟨r', r'mem, hr'⟩
  exact hr' _ ((mem_closedBall.1 hy).trans_lt r'mem.1) _ ((mem_closedBall.1 hz).trans_lt r'mem.1)
#align fderiv_measurable_aux.le_of_mem_A FDerivMeasurableAux.le_of_mem_a

theorem mem_a_of_differentiable {ε : ℝ} (hε : 0 < ε) {x : E} (hx : DifferentiableAt 𝕜 f x) :
    ∃ R > 0, ∀ r ∈ Ioo (0 : ℝ) R, x ∈ A f (fderiv 𝕜 f x) r ε := by
  have := hx.hasFDerivAt
  simp only [HasFDerivAt, HasFDerivAtFilter, isLittleO_iff] at this
  rcases eventually_nhds_iff_ball.1 (this (half_pos hε)) with ⟨R, R_pos, hR⟩
  refine' ⟨R, R_pos, fun r hr => _⟩
  have : r ∈ Ioc (r / 2) r := ⟨half_lt_self hr.1, le_rfl⟩
  refine' ⟨r, this, fun y hy z hz => _⟩
  calc
    ‖f z - f y - (fderiv 𝕜 f x) (z - y)‖ =
        ‖f z - f x - (fderiv 𝕜 f x) (z - x) - (f y - f x - (fderiv 𝕜 f x) (y - x))‖ :=
      by congr 1; simp only [ContinuousLinearMap.map_sub]; abel
    _ ≤ ‖f z - f x - (fderiv 𝕜 f x) (z - x)‖ + ‖f y - f x - (fderiv 𝕜 f x) (y - x)‖ :=
      (norm_sub_le _ _)
    _ ≤ ε / 2 * ‖z - x‖ + ε / 2 * ‖y - x‖ :=
      (add_le_add (hR _ (lt_trans (mem_ball.1 hz) hr.2)) (hR _ (lt_trans (mem_ball.1 hy) hr.2)))
    _ ≤ ε / 2 * r + ε / 2 * r := by rw [mem_ball_iff_norm] at hz hy; gcongr
    _ = ε * r := by ring
#align fderiv_measurable_aux.mem_A_of_differentiable FDerivMeasurableAux.mem_a_of_differentiable

theorem norm_sub_le_of_mem_a {c : 𝕜} (hc : 1 < ‖c‖) {r ε : ℝ} (hε : 0 < ε) (hr : 0 < r) {x : E}
    {L₁ L₂ : E →L[𝕜] F} (h₁ : x ∈ A f L₁ r ε) (h₂ : x ∈ A f L₂ r ε) : ‖L₁ - L₂‖ ≤ 4 * ‖c‖ * ε := by
  have : 0 ≤ 4 * ‖c‖ * ε :=
    mul_nonneg (mul_nonneg (by norm_num : (0 : ℝ) ≤ 4) (norm_nonneg _)) hε.le
  refine' op_norm_le_of_shell (half_pos hr) this hc _
  intro y ley ylt
  rw [div_div, div_le_iff' (mul_pos (by norm_num : (0 : ℝ) < 2) (zero_lt_one.trans hc))] at ley
  calc
    ‖(L₁ - L₂) y‖ = ‖f (x + y) - f x - L₂ (x + y - x) - (f (x + y) - f x - L₁ (x + y - x))‖ := by
      simp
    _ ≤ ‖f (x + y) - f x - L₂ (x + y - x)‖ + ‖f (x + y) - f x - L₁ (x + y - x)‖ := (norm_sub_le _ _)
    _ ≤ ε * r + ε * r := by
      apply add_le_add
      · apply le_of_mem_a h₂
        · simp only [le_of_lt (half_pos hr), mem_closedBall, dist_self]
        · simp only [dist_eq_norm, add_sub_cancel', mem_closedBall, ylt.le]
      · apply le_of_mem_a h₁
        · simp only [le_of_lt (half_pos hr), mem_closedBall, dist_self]
        · simp only [dist_eq_norm, add_sub_cancel', mem_closedBall, ylt.le]
    _ = 2 * ε * r := by ring
    _ ≤ 2 * ε * (2 * ‖c‖ * ‖y‖) := (mul_le_mul_of_nonneg_left ley (mul_nonneg (by norm_num) hε.le))
    _ = 4 * ‖c‖ * ε * ‖y‖ := by ring
#align fderiv_measurable_aux.norm_sub_le_of_mem_A FDerivMeasurableAux.norm_sub_le_of_mem_a

/-- Easy inclusion: a differentiability point with derivative in `K` belongs to `D f K`. -/
theorem differentiable_set_subset_d :
    { x | DifferentiableAt 𝕜 f x ∧ fderiv 𝕜 f x ∈ K } ⊆ D f K := by
  intro x hx
  rw [D, mem_iInter]
  intro e
  have : (0 : ℝ) < (1 / 2) ^ e := pow_pos (by norm_num) _
  rcases mem_a_of_differentiable this hx.1 with ⟨R, R_pos, hR⟩
  obtain ⟨n, hn⟩ : ∃ n : ℕ, (1 / 2) ^ n < R :=
    exists_pow_lt_of_lt_one R_pos (by norm_num : (1 : ℝ) / 2 < 1)
  simp only [mem_iUnion, mem_iInter, B, mem_inter_iff]
  refine' ⟨n, fun p hp q hq => ⟨fderiv 𝕜 f x, hx.2, ⟨_, _⟩⟩⟩ <;>
    · refine' hR _ ⟨pow_pos (by norm_num) _, lt_of_le_of_lt _ hn⟩
      exact pow_le_pow_of_le_one (by norm_num) (by norm_num) (by assumption)
#align fderiv_measurable_aux.differentiable_set_subset_D FDerivMeasurableAux.differentiable_set_subset_d

/-- Harder inclusion: at a point in `D f K`, the function `f` has a derivative, in `K`. -/
theorem d_subset_differentiable_set {K : Set (E →L[𝕜] F)} (hK : IsComplete K) :
    D f K ⊆ { x | DifferentiableAt 𝕜 f x ∧ fderiv 𝕜 f x ∈ K } := by
  have P : ∀ {n : ℕ}, (0 : ℝ) < (1 / 2) ^ n := fun {n} => pow_pos (by norm_num) n
  rcases NormedField.exists_one_lt_norm 𝕜 with ⟨c, hc⟩
  have cpos : 0 < ‖c‖ := lt_trans zero_lt_one hc
  intro x hx
  have :
    ∀ e : ℕ, ∃ n : ℕ, ∀ p q, n ≤ p → n ≤ q →
      ∃ L ∈ K, x ∈ A f L ((1 / 2) ^ p) ((1 / 2) ^ e) ∩ A f L ((1 / 2) ^ q) ((1 / 2) ^ e) := by
    intro e
    have := mem_iInter.1 hx e
    rcases mem_iUnion.1 this with ⟨n, hn⟩
    refine' ⟨n, fun p q hp hq => _⟩
    simp only [mem_iInter, ge_iff_le] at hn
    rcases mem_iUnion.1 (hn p hp q hq) with ⟨L, hL⟩
    exact ⟨L, exists_prop.mp <| mem_iUnion.1 hL⟩
  /- Recast the assumptions: for each `e`, there exist `n e` and linear maps `L e p q` in `K`
    such that, for `p, q ≥ n e`, then `f` is well approximated by `L e p q` at scale `2 ^ (-p)` and
    `2 ^ (-q)`, with an error `2 ^ (-e)`. -/
  choose! n L hn using this
  /- All the operators `L e p q` that show up are close to each other. To prove this, we argue
      that `L e p q` is close to `L e p r` (where `r` is large enough), as both approximate `f` at
      scale `2 ^(- p)`. And `L e p r` is close to `L e' p' r` as both approximate `f` at scale
      `2 ^ (- r)`. And `L e' p' r` is close to `L e' p' q'` as both approximate `f` at scale
      `2 ^ (- p')`. -/
  have M :
    ∀ e p q e' p' q',
      n e ≤ p →
        n e ≤ q →
          n e' ≤ p' → n e' ≤ q' → e ≤ e' → ‖L e p q - L e' p' q'‖ ≤ 12 * ‖c‖ * (1 / 2) ^ e := by
    intro e p q e' p' q' hp hq hp' hq' he'
    let r := max (n e) (n e')
    have I : ((1 : ℝ) / 2) ^ e' ≤ (1 / 2) ^ e :=
      pow_le_pow_of_le_one (by norm_num) (by norm_num) he'
    have J1 : ‖L e p q - L e p r‖ ≤ 4 * ‖c‖ * (1 / 2) ^ e := by
      have I1 : x ∈ A f (L e p q) ((1 / 2) ^ p) ((1 / 2) ^ e) := (hn e p q hp hq).2.1
      have I2 : x ∈ A f (L e p r) ((1 / 2) ^ p) ((1 / 2) ^ e) := (hn e p r hp (le_max_left _ _)).2.1
      exact norm_sub_le_of_mem_a hc P P I1 I2
    have J2 : ‖L e p r - L e' p' r‖ ≤ 4 * ‖c‖ * (1 / 2) ^ e := by
      have I1 : x ∈ A f (L e p r) ((1 / 2) ^ r) ((1 / 2) ^ e) := (hn e p r hp (le_max_left _ _)).2.2
      have I2 : x ∈ A f (L e' p' r) ((1 / 2) ^ r) ((1 / 2) ^ e') :=
        (hn e' p' r hp' (le_max_right _ _)).2.2
      exact norm_sub_le_of_mem_a hc P P I1 (a_mono _ _ I I2)
    have J3 : ‖L e' p' r - L e' p' q'‖ ≤ 4 * ‖c‖ * (1 / 2) ^ e := by
      have I1 : x ∈ A f (L e' p' r) ((1 / 2) ^ p') ((1 / 2) ^ e') :=
        (hn e' p' r hp' (le_max_right _ _)).2.1
      have I2 : x ∈ A f (L e' p' q') ((1 / 2) ^ p') ((1 / 2) ^ e') := (hn e' p' q' hp' hq').2.1
      exact norm_sub_le_of_mem_a hc P P (a_mono _ _ I I1) (a_mono _ _ I I2)
    calc
      ‖L e p q - L e' p' q'‖ =
          ‖L e p q - L e p r + (L e p r - L e' p' r) + (L e' p' r - L e' p' q')‖ :=
        by congr 1; abel
      _ ≤ ‖L e p q - L e p r‖ + ‖L e p r - L e' p' r‖ + ‖L e' p' r - L e' p' q'‖ :=
        (le_trans (norm_add_le _ _) (add_le_add_right (norm_add_le _ _) _))
      _ ≤ 4 * ‖c‖ * (1 / 2) ^ e + 4 * ‖c‖ * (1 / 2) ^ e + 4 * ‖c‖ * (1 / 2) ^ e :=
        add_le_add (add_le_add J1 J2) J3
        -- Porting note: proof was `by apply_rules [add_le_add]`
      _ = 12 * ‖c‖ * (1 / 2) ^ e := by ring
  /- For definiteness, use `L0 e = L e (n e) (n e)`, to have a single sequence. We claim that this
    is a Cauchy sequence. -/
  let L0 : ℕ → E →L[𝕜] F := fun e => L e (n e) (n e)
  have : CauchySeq L0 := by
    rw [Metric.cauchySeq_iff']
    intro ε εpos
    obtain ⟨e, he⟩ : ∃ e : ℕ, (1 / 2) ^ e < ε / (12 * ‖c‖) :=
      exists_pow_lt_of_lt_one (div_pos εpos (mul_pos (by norm_num) cpos)) (by norm_num)
    refine' ⟨e, fun e' he' => _⟩
    rw [dist_comm, dist_eq_norm]
    calc
      ‖L0 e - L0 e'‖ ≤ 12 * ‖c‖ * (1 / 2) ^ e := M _ _ _ _ _ _ le_rfl le_rfl le_rfl le_rfl he'
      _ < 12 * ‖c‖ * (ε / (12 * ‖c‖)) := by gcongr
      _ = ε := by field_simp [(by norm_num : (12 : ℝ) ≠ 0), ne_of_gt cpos]; ring
  -- As it is Cauchy, the sequence `L0` converges, to a limit `f'` in `K`.
  obtain ⟨f', f'K, hf'⟩ : ∃ f' ∈ K, Tendsto L0 atTop (𝓝 f') :=
    cauchySeq_tendsto_of_isComplete hK (fun e => (hn e (n e) (n e) le_rfl le_rfl).1) this
  have Lf' : ∀ e p, n e ≤ p → ‖L e (n e) p - f'‖ ≤ 12 * ‖c‖ * (1 / 2) ^ e := by
    intro e p hp
    apply le_of_tendsto (tendsto_const_nhds.sub hf').norm
    rw [eventually_atTop]
    exact ⟨e, fun e' he' => M _ _ _ _ _ _ le_rfl hp le_rfl le_rfl he'⟩
  -- Let us show that `f` has derivative `f'` at `x`.
  have : HasFDerivAt f f' x := by
    simp only [hasFDerivAt_iff_isLittleO_nhds_zero, isLittleO_iff]
    /- to get an approximation with a precision `ε`, we will replace `f` with `L e (n e) m` for
      some large enough `e` (yielding a small error by uniform approximation). As one can vary `m`,
      this makes it possible to cover all scales, and thus to obtain a good linear approximation in
      the whole ball of radius `(1/2)^(n e)`. -/
    intro ε εpos
    have pos : 0 < 4 + 12 * ‖c‖ := by positivity
    obtain ⟨e, he⟩ : ∃ e : ℕ, (1 / 2) ^ e < ε / (4 + 12 * ‖c‖) :=
      exists_pow_lt_of_lt_one (div_pos εpos pos) (by norm_num)
    rw [eventually_nhds_iff_ball]
    refine' ⟨(1 / 2) ^ (n e + 1), P, fun y hy => _⟩
    -- We need to show that `f (x + y) - f x - f' y` is small. For this, we will work at scale
    -- `k` where `k` is chosen with `‖y‖ ∼ 2 ^ (-k)`.
    by_cases y_pos : y = 0;
    · simp [y_pos]
    have yzero : 0 < ‖y‖ := norm_pos_iff.mpr y_pos
    have y_lt : ‖y‖ < (1 / 2) ^ (n e + 1) := by simpa using mem_ball_iff_norm.1 hy
    have yone : ‖y‖ ≤ 1 := le_trans y_lt.le (pow_le_one _ (by norm_num) (by norm_num))
    -- define the scale `k`.
    obtain ⟨k, hk, h'k⟩ : ∃ k : ℕ, (1 / 2) ^ (k + 1) < ‖y‖ ∧ ‖y‖ ≤ (1 / 2) ^ k :=
      exists_nat_pow_near_of_lt_one yzero yone (by norm_num : (0 : ℝ) < 1 / 2)
        (by norm_num : (1 : ℝ) / 2 < 1)
    -- the scale is large enough (as `y` is small enough)
    have k_gt : n e < k := by
      have : ((1 : ℝ) / 2) ^ (k + 1) < (1 / 2) ^ (n e + 1) := lt_trans hk y_lt
      rw [pow_lt_pow_iff_of_lt_one (by norm_num : (0 : ℝ) < 1 / 2) (by norm_num)] at this
      linarith
    set m := k - 1
    have m_ge : n e ≤ m := Nat.le_pred_of_lt k_gt
    have km : k = m + 1 := (Nat.succ_pred_eq_of_pos (lt_of_le_of_lt (zero_le _) k_gt)).symm
    rw [km] at hk h'k
    -- `f` is well approximated by `L e (n e) k` at the relevant scale
    -- (in fact, we use `m = k - 1` instead of `k` because of the precise definition of `A`).
    have J1 : ‖f (x + y) - f x - L e (n e) m (x + y - x)‖ ≤ (1 / 2) ^ e * (1 / 2) ^ m := by
      apply le_of_mem_a (hn e (n e) m le_rfl m_ge).2.2
      · simp only [mem_closedBall, dist_self]
        exact div_nonneg (le_of_lt P) zero_le_two
      · simpa only [dist_eq_norm, add_sub_cancel', mem_closedBall, pow_succ', mul_one_div] using
          h'k
    have J2 : ‖f (x + y) - f x - L e (n e) m y‖ ≤ 4 * (1 / 2) ^ e * ‖y‖ :=
      calc
        ‖f (x + y) - f x - L e (n e) m y‖ ≤ (1 / 2) ^ e * (1 / 2) ^ m := by
          simpa only [add_sub_cancel'] using J1
        _ = 4 * (1 / 2) ^ e * (1 / 2) ^ (m + 2) := by field_simp; ring
        _ ≤ 4 * (1 / 2) ^ e * ‖y‖ :=
          mul_le_mul_of_nonneg_left (le_of_lt hk) (mul_nonneg (by norm_num) (le_of_lt P))
    -- use the previous estimates to see that `f (x + y) - f x - f' y` is small.
    calc
      ‖f (x + y) - f x - f' y‖ = ‖f (x + y) - f x - L e (n e) m y + (L e (n e) m - f') y‖ :=
        congr_arg _ (by simp)
      _ ≤ 4 * (1 / 2) ^ e * ‖y‖ + 12 * ‖c‖ * (1 / 2) ^ e * ‖y‖ :=
        (norm_add_le_of_le J2
          ((le_op_norm _ _).trans (mul_le_mul_of_nonneg_right (Lf' _ _ m_ge) (norm_nonneg _))))
      _ = (4 + 12 * ‖c‖) * ‖y‖ * (1 / 2) ^ e := by ring
      _ ≤ (4 + 12 * ‖c‖) * ‖y‖ * (ε / (4 + 12 * ‖c‖)) := by gcongr
      _ = ε * ‖y‖ := by field_simp [ne_of_gt pos]; ring
  rw [← this.fderiv] at f'K
  exact ⟨this.differentiableAt, f'K⟩
#align fderiv_measurable_aux.D_subset_differentiable_set FDerivMeasurableAux.d_subset_differentiable_set

theorem differentiable_set_eq_d (hK : IsComplete K) :
    { x | DifferentiableAt 𝕜 f x ∧ fderiv 𝕜 f x ∈ K } = D f K :=
  Subset.antisymm (differentiable_set_subset_d _) (d_subset_differentiable_set hK)
#align fderiv_measurable_aux.differentiable_set_eq_D FDerivMeasurableAux.differentiable_set_eq_d

end FDerivMeasurableAux

open FDerivMeasurableAux

variable [MeasurableSpace E] [OpensMeasurableSpace E]

variable (𝕜 f)

/-- The set of differentiability points of a function, with derivative in a given complete set,
is Borel-measurable. -/
theorem measurableSet_of_differentiableAt_of_isComplete {K : Set (E →L[𝕜] F)} (hK : IsComplete K) :
    MeasurableSet { x | DifferentiableAt 𝕜 f x ∧ fderiv 𝕜 f x ∈ K } := by
  -- Porting note: was
  -- simp [differentiable_set_eq_d K hK, D, isOpen_b.measurableSet, MeasurableSet.iInter,
  --   MeasurableSet.iUnion]
  simp only [D, differentiable_set_eq_d K hK]
  refine MeasurableSet.iInter fun _ => ?_
  refine MeasurableSet.iUnion fun _ => ?_
  refine MeasurableSet.iInter fun _ => ?_
  refine MeasurableSet.iInter fun _ => ?_
  refine MeasurableSet.iInter fun _ => ?_
  refine MeasurableSet.iInter fun _ => ?_
  refine isOpen_b.measurableSet
#align measurable_set_of_differentiable_at_of_is_complete measurableSet_of_differentiableAt_of_isComplete

variable [CompleteSpace F]

/-- The set of differentiability points of a function taking values in a complete space is
Borel-measurable. -/
theorem measurableSet_of_differentiableAt : MeasurableSet { x | DifferentiableAt 𝕜 f x } := by
  have : IsComplete (univ : Set (E →L[𝕜] F)) := complete_univ
  convert measurableSet_of_differentiableAt_of_isComplete 𝕜 f this
  simp
#align measurable_set_of_differentiable_at measurableSet_of_differentiableAt

@[measurability]
theorem measurable_fderiv : Measurable (fderiv 𝕜 f) := by
  refine' measurable_of_isClosed fun s hs => _
  have :
    fderiv 𝕜 f ⁻¹' s =
      { x | DifferentiableAt 𝕜 f x ∧ fderiv 𝕜 f x ∈ s } ∪
        { x | ¬DifferentiableAt 𝕜 f x } ∩ { _x | (0 : E →L[𝕜] F) ∈ s } :=
    Set.ext fun x => mem_preimage.trans fderiv_mem_iff
  rw [this]
  exact
    (measurableSet_of_differentiableAt_of_isComplete _ _ hs.isComplete).union
      ((measurableSet_of_differentiableAt _ _).compl.inter (MeasurableSet.const _))
#align measurable_fderiv measurable_fderiv

@[measurability]
theorem measurable_fderiv_apply_const [MeasurableSpace F] [BorelSpace F] (y : E) :
    Measurable fun x => fderiv 𝕜 f x y :=
  (ContinuousLinearMap.measurable_apply y).comp (measurable_fderiv 𝕜 f)
#align measurable_fderiv_apply_const measurable_fderiv_apply_const

variable {𝕜}

@[measurability]
theorem measurable_deriv [MeasurableSpace 𝕜] [OpensMeasurableSpace 𝕜] [MeasurableSpace F]
    [BorelSpace F] (f : 𝕜 → F) : Measurable (deriv f) := by
  simpa only [fderiv_deriv] using measurable_fderiv_apply_const 𝕜 f 1
#align measurable_deriv measurable_deriv

theorem stronglyMeasurable_deriv [MeasurableSpace 𝕜] [OpensMeasurableSpace 𝕜]
    [SecondCountableTopology F] (f : 𝕜 → F) : StronglyMeasurable (deriv f) := by
  borelize F
  exact (measurable_deriv f).stronglyMeasurable
#align strongly_measurable_deriv stronglyMeasurable_deriv

theorem aemeasurable_deriv [MeasurableSpace 𝕜] [OpensMeasurableSpace 𝕜] [MeasurableSpace F]
    [BorelSpace F] (f : 𝕜 → F) (μ : Measure 𝕜) : AEMeasurable (deriv f) μ :=
  (measurable_deriv f).aemeasurable
#align ae_measurable_deriv aemeasurable_deriv

theorem aestronglyMeasurable_deriv [MeasurableSpace 𝕜] [OpensMeasurableSpace 𝕜]
    [SecondCountableTopology F] (f : 𝕜 → F) (μ : Measure 𝕜) : AEStronglyMeasurable (deriv f) μ :=
  (stronglyMeasurable_deriv f).aestronglyMeasurable
#align ae_strongly_measurable_deriv aestronglyMeasurable_deriv

end fderiv

section RightDeriv

variable {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F]

variable {f : ℝ → F} (K : Set F)

namespace RightDerivMeasurableAux

/-- The set `A f L r ε` is the set of points `x` around which the function `f` is well approximated
at scale `r` by the linear map `h ↦ h • L`, up to an error `ε`. We tweak the definition to
make sure that this is open on the right. -/
def A (f : ℝ → F) (L : F) (r ε : ℝ) : Set ℝ :=
  { x |
    ∃ r' ∈ Ioc (r / 2) r,
      ∀ (y) (_ : y ∈ Icc x (x + r')) (z) (_ : z ∈ Icc x (x + r')),
        ‖f z - f y - (z - y) • L‖ ≤ ε * r }
#align right_deriv_measurable_aux.A RightDerivMeasurableAux.A

/-- The set `B f K r s ε` is the set of points `x` around which there exists a vector
`L` belonging to `K` (a given set of vectors) such that `h • L` approximates well `f (x + h)`
(up to an error `ε`), simultaneously at scales `r` and `s`. -/
def B (f : ℝ → F) (K : Set F) (r s ε : ℝ) : Set ℝ :=
  ⋃ L ∈ K, A f L r ε ∩ A f L s ε
#align right_deriv_measurable_aux.B RightDerivMeasurableAux.B

/-- The set `D f K` is a complicated set constructed using countable intersections and unions. Its
main use is that, when `K` is complete, it is exactly the set of points where `f` is differentiable,
with a derivative in `K`. -/
def D (f : ℝ → F) (K : Set F) : Set ℝ :=
  ⋂ e : ℕ, ⋃ n : ℕ, ⋂ (p ≥ n) (q ≥ n), B f K ((1 / 2) ^ p) ((1 / 2) ^ q) ((1 / 2) ^ e)
#align right_deriv_measurable_aux.D RightDerivMeasurableAux.D

theorem a_mem_nhdsWithin_Ioi {L : F} {r ε x : ℝ} (hx : x ∈ A f L r ε) : A f L r ε ∈ 𝓝[>] x := by
  rcases hx with ⟨r', rr', hr'⟩
  rw [mem_nhdsWithin_Ioi_iff_exists_Ioo_subset]
  obtain ⟨s, s_gt, s_lt⟩ : ∃ s : ℝ, r / 2 < s ∧ s < r' := exists_between rr'.1
  have : s ∈ Ioc (r / 2) r := ⟨s_gt, le_of_lt (s_lt.trans_le rr'.2)⟩
  refine' ⟨x + r' - s, by simp only [mem_Ioi]; linarith, fun x' hx' => ⟨s, this, _⟩⟩
  have A : Icc x' (x' + s) ⊆ Icc x (x + r') := by
    apply Icc_subset_Icc hx'.1.le
    linarith [hx'.2]
  intro y hy z hz
  exact hr' y (A hy) z (A hz)
#align right_deriv_measurable_aux.A_mem_nhds_within_Ioi RightDerivMeasurableAux.a_mem_nhdsWithin_Ioi

theorem b_mem_nhdsWithin_Ioi {K : Set F} {r s ε x : ℝ} (hx : x ∈ B f K r s ε) :
    B f K r s ε ∈ 𝓝[>] x := by
  obtain ⟨L, LK, hL₁, hL₂⟩ : ∃ L : F, L ∈ K ∧ x ∈ A f L r ε ∧ x ∈ A f L s ε := by
    simpa only [B, mem_iUnion, mem_inter_iff, exists_prop] using hx
  filter_upwards [a_mem_nhdsWithin_Ioi hL₁, a_mem_nhdsWithin_Ioi hL₂]with y hy₁ hy₂
  simp only [B, mem_iUnion, mem_inter_iff, exists_prop]
  exact ⟨L, LK, hy₁, hy₂⟩
#align right_deriv_measurable_aux.B_mem_nhds_within_Ioi RightDerivMeasurableAux.b_mem_nhdsWithin_Ioi

theorem measurableSet_b {K : Set F} {r s ε : ℝ} : MeasurableSet (B f K r s ε) :=
  measurableSet_of_mem_nhdsWithin_Ioi fun _ hx => b_mem_nhdsWithin_Ioi hx
#align right_deriv_measurable_aux.measurable_set_B RightDerivMeasurableAux.measurableSet_b

theorem a_mono (L : F) (r : ℝ) {ε δ : ℝ} (h : ε ≤ δ) : A f L r ε ⊆ A f L r δ := by
  rintro x ⟨r', r'r, hr'⟩
  refine' ⟨r', r'r, fun y hy z hz => (hr' y hy z hz).trans (mul_le_mul_of_nonneg_right h _)⟩
  linarith [hy.1, hy.2, r'r.2]
#align right_deriv_measurable_aux.A_mono RightDerivMeasurableAux.a_mono

theorem le_of_mem_a {r ε : ℝ} {L : F} {x : ℝ} (hx : x ∈ A f L r ε) {y z : ℝ}
    (hy : y ∈ Icc x (x + r / 2)) (hz : z ∈ Icc x (x + r / 2)) :
  ‖f z - f y - (z - y) • L‖ ≤ ε * r := by
  rcases hx with ⟨r', r'mem, hr'⟩
  have A : x + r / 2 ≤ x + r' := by linarith [r'mem.1]
  exact hr' _ ((Icc_subset_Icc le_rfl A) hy) _ ((Icc_subset_Icc le_rfl A) hz)
#align right_deriv_measurable_aux.le_of_mem_A RightDerivMeasurableAux.le_of_mem_a

theorem mem_a_of_differentiable {ε : ℝ} (hε : 0 < ε) {x : ℝ}
    (hx : DifferentiableWithinAt ℝ f (Ici x) x) :
    ∃ R > 0, ∀ r ∈ Ioo (0 : ℝ) R, x ∈ A f (derivWithin f (Ici x) x) r ε := by
  have := hx.hasDerivWithinAt
  simp_rw [hasDerivWithinAt_iff_isLittleO, isLittleO_iff] at this
  rcases mem_nhdsWithin_Ici_iff_exists_Ico_subset.1 (this (half_pos hε)) with ⟨m, xm, hm⟩
  refine' ⟨m - x, by linarith [show x < m from xm], fun r hr => _⟩
  have : r ∈ Ioc (r / 2) r := ⟨half_lt_self hr.1, le_rfl⟩
  refine' ⟨r, this, fun y hy z hz => _⟩
  calc
    ‖f z - f y - (z - y) • derivWithin f (Ici x) x‖ =
        ‖f z - f x - (z - x) • derivWithin f (Ici x) x -
            (f y - f x - (y - x) • derivWithin f (Ici x) x)‖ :=
      by congr 1; simp only [sub_smul]; abel
    _ ≤
        ‖f z - f x - (z - x) • derivWithin f (Ici x) x‖ +
          ‖f y - f x - (y - x) • derivWithin f (Ici x) x‖ :=
      (norm_sub_le _ _)
    _ ≤ ε / 2 * ‖z - x‖ + ε / 2 * ‖y - x‖ :=
      (add_le_add (hm ⟨hz.1, hz.2.trans_lt (by linarith [hr.2])⟩)
        (hm ⟨hy.1, hy.2.trans_lt (by linarith [hr.2])⟩))
    _ ≤ ε / 2 * r + ε / 2 * r := by
      gcongr
      · rw [Real.norm_of_nonneg] <;> linarith [hz.1, hz.2]
      · rw [Real.norm_of_nonneg] <;> linarith [hy.1, hy.2]
    _ = ε * r := by ring
#align right_deriv_measurable_aux.mem_A_of_differentiable RightDerivMeasurableAux.mem_a_of_differentiable

theorem norm_sub_le_of_mem_a {r x : ℝ} (hr : 0 < r) (ε : ℝ) {L₁ L₂ : F} (h₁ : x ∈ A f L₁ r ε)
    (h₂ : x ∈ A f L₂ r ε) : ‖L₁ - L₂‖ ≤ 4 * ε := by
  suffices H : ‖(r / 2) • (L₁ - L₂)‖ ≤ r / 2 * (4 * ε)
  · rwa [norm_smul, Real.norm_of_nonneg (half_pos hr).le, mul_le_mul_left (half_pos hr)] at H
  calc
    ‖(r / 2) • (L₁ - L₂)‖ =
        ‖f (x + r / 2) - f x - (x + r / 2 - x) • L₂ -
            (f (x + r / 2) - f x - (x + r / 2 - x) • L₁)‖ :=
      by simp [smul_sub]
    _ ≤
        ‖f (x + r / 2) - f x - (x + r / 2 - x) • L₂‖ +
          ‖f (x + r / 2) - f x - (x + r / 2 - x) • L₁‖ :=
      (norm_sub_le _ _)
    _ ≤ ε * r + ε * r := by
      apply add_le_add
      · apply le_of_mem_a h₂ <;> simp [(half_pos hr).le]
      · apply le_of_mem_a h₁ <;> simp [(half_pos hr).le]
    _ = r / 2 * (4 * ε) := by ring
#align right_deriv_measurable_aux.norm_sub_le_of_mem_A RightDerivMeasurableAux.norm_sub_le_of_mem_a

/-- Easy inclusion: a differentiability point with derivative in `K` belongs to `D f K`. -/
theorem differentiable_set_subset_d :
    { x | DifferentiableWithinAt ℝ f (Ici x) x ∧ derivWithin f (Ici x) x ∈ K } ⊆ D f K := by
  intro x hx
  rw [D, mem_iInter]
  intro e
  have : (0 : ℝ) < (1 / 2) ^ e := pow_pos (by norm_num) _
  rcases mem_a_of_differentiable this hx.1 with ⟨R, R_pos, hR⟩
  obtain ⟨n, hn⟩ : ∃ n : ℕ, (1 / 2) ^ n < R :=
    exists_pow_lt_of_lt_one R_pos (by norm_num : (1 : ℝ) / 2 < 1)
  simp only [mem_iUnion, mem_iInter, B, mem_inter_iff]
  refine' ⟨n, fun p hp q hq => ⟨derivWithin f (Ici x) x, hx.2, ⟨_, _⟩⟩⟩ <;>
    · refine' hR _ ⟨pow_pos (by norm_num) _, lt_of_le_of_lt _ hn⟩
      exact pow_le_pow_of_le_one (by norm_num) (by norm_num) (by assumption)
#align right_deriv_measurable_aux.differentiable_set_subset_D RightDerivMeasurableAux.differentiable_set_subset_d

/-- Harder inclusion: at a point in `D f K`, the function `f` has a derivative, in `K`. -/
theorem d_subset_differentiable_set {K : Set F} (hK : IsComplete K) :
    D f K ⊆ { x | DifferentiableWithinAt ℝ f (Ici x) x ∧ derivWithin f (Ici x) x ∈ K } := by
  have P : ∀ {n : ℕ}, (0 : ℝ) < (1 / 2) ^ n := fun {n} => pow_pos (by norm_num) n
  intro x hx
  have :
    ∀ e : ℕ, ∃ n : ℕ, ∀ p q, n ≤ p → n ≤ q →
      ∃ L ∈ K, x ∈ A f L ((1 / 2) ^ p) ((1 / 2) ^ e) ∩ A f L ((1 / 2) ^ q) ((1 / 2) ^ e) := by
    intro e
    have := mem_iInter.1 hx e
    rcases mem_iUnion.1 this with ⟨n, hn⟩
    refine' ⟨n, fun p q hp hq => _⟩
    simp only [mem_iInter, ge_iff_le] at hn
    rcases mem_iUnion.1 (hn p hp q hq) with ⟨L, hL⟩
    exact ⟨L, exists_prop.mp <| mem_iUnion.1 hL⟩
  /- Recast the assumptions: for each `e`, there exist `n e` and linear maps `L e p q` in `K`
    such that, for `p, q ≥ n e`, then `f` is well approximated by `L e p q` at scale `2 ^ (-p)` and
    `2 ^ (-q)`, with an error `2 ^ (-e)`. -/
  choose! n L hn using this
  /- All the operators `L e p q` that show up are close to each other. To prove this, we argue
      that `L e p q` is close to `L e p r` (where `r` is large enough), as both approximate `f` at
      scale `2 ^(- p)`. And `L e p r` is close to `L e' p' r` as both approximate `f` at scale
      `2 ^ (- r)`. And `L e' p' r` is close to `L e' p' q'` as both approximate `f` at scale
      `2 ^ (- p')`. -/
  have M :
    ∀ e p q e' p' q',
      n e ≤ p →
        n e ≤ q → n e' ≤ p' → n e' ≤ q' → e ≤ e' → ‖L e p q - L e' p' q'‖ ≤ 12 * (1 / 2) ^ e := by
    intro e p q e' p' q' hp hq hp' hq' he'
    let r := max (n e) (n e')
    have I : ((1 : ℝ) / 2) ^ e' ≤ (1 / 2) ^ e :=
      pow_le_pow_of_le_one (by norm_num) (by norm_num) he'
    have J1 : ‖L e p q - L e p r‖ ≤ 4 * (1 / 2) ^ e := by
      have I1 : x ∈ A f (L e p q) ((1 / 2) ^ p) ((1 / 2) ^ e) := (hn e p q hp hq).2.1
      have I2 : x ∈ A f (L e p r) ((1 / 2) ^ p) ((1 / 2) ^ e) := (hn e p r hp (le_max_left _ _)).2.1
      exact norm_sub_le_of_mem_a P _ I1 I2
    have J2 : ‖L e p r - L e' p' r‖ ≤ 4 * (1 / 2) ^ e := by
      have I1 : x ∈ A f (L e p r) ((1 / 2) ^ r) ((1 / 2) ^ e) := (hn e p r hp (le_max_left _ _)).2.2
      have I2 : x ∈ A f (L e' p' r) ((1 / 2) ^ r) ((1 / 2) ^ e') :=
        (hn e' p' r hp' (le_max_right _ _)).2.2
      exact norm_sub_le_of_mem_a P _ I1 (a_mono _ _ I I2)
    have J3 : ‖L e' p' r - L e' p' q'‖ ≤ 4 * (1 / 2) ^ e := by
      have I1 : x ∈ A f (L e' p' r) ((1 / 2) ^ p') ((1 / 2) ^ e') :=
        (hn e' p' r hp' (le_max_right _ _)).2.1
      have I2 : x ∈ A f (L e' p' q') ((1 / 2) ^ p') ((1 / 2) ^ e') := (hn e' p' q' hp' hq').2.1
      exact norm_sub_le_of_mem_a P _ (a_mono _ _ I I1) (a_mono _ _ I I2)
    calc
      ‖L e p q - L e' p' q'‖ =
          ‖L e p q - L e p r + (L e p r - L e' p' r) + (L e' p' r - L e' p' q')‖ :=
        by congr 1; abel
      _ ≤ ‖L e p q - L e p r‖ + ‖L e p r - L e' p' r‖ + ‖L e' p' r - L e' p' q'‖ :=
        (le_trans (norm_add_le _ _) (add_le_add_right (norm_add_le _ _) _))
      _ ≤ 4 * (1 / 2) ^ e + 4 * (1 / 2) ^ e + 4 * (1 / 2) ^ e := by gcongr
        -- Porting note: proof was `by apply_rules [add_le_add]`
      _ = 12 * (1 / 2) ^ e := by ring

  /- For definiteness, use `L0 e = L e (n e) (n e)`, to have a single sequence. We claim that this
    is a Cauchy sequence. -/
  let L0 : ℕ → F := fun e => L e (n e) (n e)
  have : CauchySeq L0 := by
    rw [Metric.cauchySeq_iff']
    intro ε εpos
    obtain ⟨e, he⟩ : ∃ e : ℕ, (1 / 2) ^ e < ε / 12 :=
      exists_pow_lt_of_lt_one (div_pos εpos (by norm_num)) (by norm_num)
    refine' ⟨e, fun e' he' => _⟩
    rw [dist_comm, dist_eq_norm]
    calc
      ‖L0 e - L0 e'‖ ≤ 12 * (1 / 2) ^ e := M _ _ _ _ _ _ le_rfl le_rfl le_rfl le_rfl he'
      _ < 12 * (ε / 12) := (mul_lt_mul' le_rfl he (le_of_lt P) (by norm_num))
      _ = ε := by field_simp [(by norm_num : (12 : ℝ) ≠ 0)]; ring

  -- As it is Cauchy, the sequence `L0` converges, to a limit `f'` in `K`.
  obtain ⟨f', f'K, hf'⟩ : ∃ f' ∈ K, Tendsto L0 atTop (𝓝 f') :=
    cauchySeq_tendsto_of_isComplete hK (fun e => (hn e (n e) (n e) le_rfl le_rfl).1) this
  have Lf' : ∀ e p, n e ≤ p → ‖L e (n e) p - f'‖ ≤ 12 * (1 / 2) ^ e := by
    intro e p hp
    apply le_of_tendsto (tendsto_const_nhds.sub hf').norm
    rw [eventually_atTop]
    exact ⟨e, fun e' he' => M _ _ _ _ _ _ le_rfl hp le_rfl le_rfl he'⟩
  -- Let us show that `f` has right derivative `f'` at `x`.
  have : HasDerivWithinAt f f' (Ici x) x := by
    simp only [hasDerivWithinAt_iff_isLittleO, isLittleO_iff]
    /- to get an approximation with a precision `ε`, we will replace `f` with `L e (n e) m` for
      some large enough `e` (yielding a small error by uniform approximation). As one can vary `m`,
      this makes it possible to cover all scales, and thus to obtain a good linear approximation in
      the whole interval of length `(1/2)^(n e)`. -/
    intro ε εpos
    obtain ⟨e, he⟩ : ∃ e : ℕ, (1 / 2) ^ e < ε / 16 :=
      exists_pow_lt_of_lt_one (div_pos εpos (by norm_num)) (by norm_num)
    have xmem : x ∈ Ico x (x + (1 / 2) ^ (n e + 1)) := by
      simp only [one_div, left_mem_Ico, lt_add_iff_pos_right, inv_pos, pow_pos, zero_lt_two,
        zero_lt_one]
    filter_upwards [Icc_mem_nhdsWithin_Ici xmem]with y hy
    -- We need to show that `f y - f x - f' (y - x)` is small. For this, we will work at scale
    -- `k` where `k` is chosen with `‖y - x‖ ∼ 2 ^ (-k)`.
    rcases eq_or_lt_of_le hy.1 with (rfl | xy)
    · simp only [sub_self, zero_smul, norm_zero, mul_zero, le_rfl]
    have yzero : 0 < y - x := sub_pos.2 xy
    have y_le : y - x ≤ (1 / 2) ^ (n e + 1) := by linarith [hy.2]
    have yone : y - x ≤ 1 := le_trans y_le (pow_le_one _ (by norm_num) (by norm_num))
    -- define the scale `k`.
    obtain ⟨k, hk, h'k⟩ : ∃ k : ℕ, (1 / 2) ^ (k + 1) < y - x ∧ y - x ≤ (1 / 2) ^ k :=
      exists_nat_pow_near_of_lt_one yzero yone (by norm_num : (0 : ℝ) < 1 / 2)
        (by norm_num : (1 : ℝ) / 2 < 1)
    -- the scale is large enough (as `y - x` is small enough)
    have k_gt : n e < k := by
      have : ((1 : ℝ) / 2) ^ (k + 1) < (1 / 2) ^ (n e + 1) := lt_of_lt_of_le hk y_le
      rw [pow_lt_pow_iff_of_lt_one (by norm_num : (0 : ℝ) < 1 / 2) (by norm_num)] at this
      linarith
    set m := k - 1
    have m_ge : n e ≤ m := Nat.le_pred_of_lt k_gt
    have km : k = m + 1 := (Nat.succ_pred_eq_of_pos (lt_of_le_of_lt (zero_le _) k_gt)).symm
    rw [km] at hk h'k
    -- `f` is well approximated by `L e (n e) k` at the relevant scale
    -- (in fact, we use `m = k - 1` instead of `k` because of the precise definition of `A`).
    have J : ‖f y - f x - (y - x) • L e (n e) m‖ ≤ 4 * (1 / 2) ^ e * ‖y - x‖ :=
      calc
        ‖f y - f x - (y - x) • L e (n e) m‖ ≤ (1 / 2) ^ e * (1 / 2) ^ m := by
          apply le_of_mem_a (hn e (n e) m le_rfl m_ge).2.2
          · simp only [one_div, inv_pow, left_mem_Icc, le_add_iff_nonneg_right]
            exact div_nonneg (inv_nonneg.2 (pow_nonneg zero_le_two _)) zero_le_two
          · simp only [pow_add, tsub_le_iff_left] at h'k
            simpa only [hy.1, mem_Icc, true_and_iff, one_div, pow_one] using h'k
        _ = 4 * (1 / 2) ^ e * (1 / 2) ^ (m + 2) := by field_simp; ring
        _ ≤ 4 * (1 / 2) ^ e * (y - x) :=
          (mul_le_mul_of_nonneg_left (le_of_lt hk) (mul_nonneg (by norm_num) (le_of_lt P)))
        _ = 4 * (1 / 2) ^ e * ‖y - x‖ := by rw [Real.norm_of_nonneg yzero.le]

    calc
      ‖f y - f x - (y - x) • f'‖ =
          ‖f y - f x - (y - x) • L e (n e) m + (y - x) • (L e (n e) m - f')‖ :=
        by simp only [smul_sub, sub_add_sub_cancel]
      _ ≤ 4 * (1 / 2) ^ e * ‖y - x‖ + ‖y - x‖ * (12 * (1 / 2) ^ e) :=
        (norm_add_le_of_le J
          (by rw [norm_smul]; exact mul_le_mul_of_nonneg_left (Lf' _ _ m_ge) (norm_nonneg _)))
      _ = 16 * ‖y - x‖ * (1 / 2) ^ e := by ring
      _ ≤ 16 * ‖y - x‖ * (ε / 16) :=
        (mul_le_mul_of_nonneg_left he.le (mul_nonneg (by norm_num) (norm_nonneg _)))
      _ = ε * ‖y - x‖ := by ring

  rw [← this.derivWithin (uniqueDiffOn_Ici x x Set.left_mem_Ici)] at f'K
  exact ⟨this.differentiableWithinAt, f'K⟩
#align right_deriv_measurable_aux.D_subset_differentiable_set RightDerivMeasurableAux.d_subset_differentiable_set

theorem differentiable_set_eq_d (hK : IsComplete K) :
    { x | DifferentiableWithinAt ℝ f (Ici x) x ∧ derivWithin f (Ici x) x ∈ K } = D f K :=
  Subset.antisymm (differentiable_set_subset_d _) (d_subset_differentiable_set hK)
#align right_deriv_measurable_aux.differentiable_set_eq_D RightDerivMeasurableAux.differentiable_set_eq_d

end RightDerivMeasurableAux

open RightDerivMeasurableAux

variable (f)

/-- The set of right differentiability points of a function, with derivative in a given complete
set, is Borel-measurable. -/
theorem measurableSet_of_differentiableWithinAt_Ici_of_isComplete {K : Set F} (hK : IsComplete K) :
    MeasurableSet { x | DifferentiableWithinAt ℝ f (Ici x) x ∧ derivWithin f (Ici x) x ∈ K } := by
  -- simp [differentiable_set_eq_d K hK, D, measurableSet_b, MeasurableSet.iInter,
  --   MeasurableSet.iUnion]
  simp only [differentiable_set_eq_d K hK, D]
  refine MeasurableSet.iInter fun _ => ?_
  refine MeasurableSet.iUnion fun _ => ?_
  refine MeasurableSet.iInter fun _ => ?_
  refine MeasurableSet.iInter fun _ => ?_
  refine MeasurableSet.iInter fun _ => ?_
  refine MeasurableSet.iInter fun _ => ?_
  exact measurableSet_b
#align measurable_set_of_differentiable_within_at_Ici_of_is_complete measurableSet_of_differentiableWithinAt_Ici_of_isComplete

variable [CompleteSpace F]

/-- The set of right differentiability points of a function taking values in a complete space is
Borel-measurable. -/
theorem measurableSet_of_differentiableWithinAt_Ici :
    MeasurableSet { x | DifferentiableWithinAt ℝ f (Ici x) x } := by
  have : IsComplete (univ : Set F) := complete_univ
  convert measurableSet_of_differentiableWithinAt_Ici_of_isComplete f this
  simp
#align measurable_set_of_differentiable_within_at_Ici measurableSet_of_differentiableWithinAt_Ici

@[measurability]
theorem measurable_derivWithin_Ici [MeasurableSpace F] [BorelSpace F] :
    Measurable fun x => derivWithin f (Ici x) x := by
  refine' measurable_of_isClosed fun s hs => _
  have :
    (fun x => derivWithin f (Ici x) x) ⁻¹' s =
      { x | DifferentiableWithinAt ℝ f (Ici x) x ∧ derivWithin f (Ici x) x ∈ s } ∪
        { x | ¬DifferentiableWithinAt ℝ f (Ici x) x } ∩ { _x | (0 : F) ∈ s } :=
    Set.ext fun x => mem_preimage.trans derivWithin_mem_iff
  rw [this]
  exact
    (measurableSet_of_differentiableWithinAt_Ici_of_isComplete _ hs.isComplete).union
      ((measurableSet_of_differentiableWithinAt_Ici _).compl.inter (MeasurableSet.const _))
#align measurable_deriv_within_Ici measurable_derivWithin_Ici

theorem stronglyMeasurable_derivWithin_Ici [SecondCountableTopology F] :
    StronglyMeasurable fun x => derivWithin f (Ici x) x := by
  borelize F
  exact (measurable_derivWithin_Ici f).stronglyMeasurable
#align strongly_measurable_deriv_within_Ici stronglyMeasurable_derivWithin_Ici

theorem aemeasurable_derivWithin_Ici [MeasurableSpace F] [BorelSpace F] (μ : Measure ℝ) :
    AEMeasurable (fun x => derivWithin f (Ici x) x) μ :=
  (measurable_derivWithin_Ici f).aemeasurable
#align ae_measurable_deriv_within_Ici aemeasurable_derivWithin_Ici

theorem aestronglyMeasurable_derivWithin_Ici [SecondCountableTopology F] (μ : Measure ℝ) :
    AEStronglyMeasurable (fun x => derivWithin f (Ici x) x) μ :=
  (stronglyMeasurable_derivWithin_Ici f).aestronglyMeasurable
#align ae_strongly_measurable_deriv_within_Ici aestronglyMeasurable_derivWithin_Ici

/-- The set of right differentiability points of a function taking values in a complete space is
Borel-measurable. -/
theorem measurableSet_of_differentiableWithinAt_Ioi :
    MeasurableSet { x | DifferentiableWithinAt ℝ f (Ioi x) x } := by
  simpa [differentiableWithinAt_Ioi_iff_Ici] using measurableSet_of_differentiableWithinAt_Ici f
#align measurable_set_of_differentiable_within_at_Ioi measurableSet_of_differentiableWithinAt_Ioi

@[measurability]
theorem measurable_derivWithin_Ioi [MeasurableSpace F] [BorelSpace F] :
    Measurable fun x => derivWithin f (Ioi x) x := by
  simpa [derivWithin_Ioi_eq_Ici] using measurable_derivWithin_Ici f
#align measurable_deriv_within_Ioi measurable_derivWithin_Ioi

theorem stronglyMeasurable_derivWithin_Ioi [SecondCountableTopology F] :
    StronglyMeasurable fun x => derivWithin f (Ioi x) x := by
  borelize F
  exact (measurable_derivWithin_Ioi f).stronglyMeasurable
#align strongly_measurable_deriv_within_Ioi stronglyMeasurable_derivWithin_Ioi

theorem aemeasurable_derivWithin_Ioi [MeasurableSpace F] [BorelSpace F] (μ : Measure ℝ) :
    AEMeasurable (fun x => derivWithin f (Ioi x) x) μ :=
  (measurable_derivWithin_Ioi f).aemeasurable
#align ae_measurable_deriv_within_Ioi aemeasurable_derivWithin_Ioi

theorem aestronglyMeasurable_derivWithin_Ioi [SecondCountableTopology F] (μ : Measure ℝ) :
    AEStronglyMeasurable (fun x => derivWithin f (Ioi x) x) μ :=
  (stronglyMeasurable_derivWithin_Ioi f).aestronglyMeasurable
#align ae_strongly_measurable_deriv_within_Ioi aestronglyMeasurable_derivWithin_Ioi

end RightDeriv
