# Complete source: GRWTSK.Topology.GeneralTopology.Homeomorph.Variant1130ef12c3654c6160c8f341858a9d083c3476d3179efea51a50b06b3fe174fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `392a84b7b1472b0c4e0881acfbbc841279f38c07` · SHA-256 `4bd26a6c846a90b323718c61e7ea2e8458ecf6e629d16d71b46c24b1bf188f3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.OpenPartialHomeomorphUnivUnitBall.Variantb8896a3dabcbd66f1efeb07583098832e8a7ea39f1f1854dd77be6d96c9d566b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b8896a3dabcbd66f1efeb07583098832e8a7ea39f1f1854dd77be6d96c9d566b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.OpenPartialHomeomorphUnivUnitBall.Variantb8896a3dabcbd66f1efeb07583098832e8a7ea39f1f1854dd77be6d96c9d566b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"b8896a3dabcbd66f1efeb07583098832e8a7ea39f1f1854dd77be6d96c9d566b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Normed/Module/Ball/Homeomorph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","lake_or_runtime_control","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Oliver Nash
-/
module

public import Mathlib.Topology.OpenPartialHomeomorph.Composition
public import Mathlib.Analysis.Normed.Group.AddTorsor
public import Mathlib.Analysis.Normed.Module.Ball.Pointwise
public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.Tactic.Module

/-!
# (Local) homeomorphism between a normed space and a ball

In this file we show that a real (semi)normed vector space is homeomorphic to the unit ball.

We formalize it in two ways:

- as a `Homeomorph`, see `Homeomorph.unitBall`;
- as an `OpenPartialHomeomorph` with `source = Set.univ` and `target = Metric.ball (0 : E) 1`.

While the former approach is more natural, the latter approach provides us
with a globally defined inverse function which makes it easier to say
that this homeomorphism is in fact a diffeomorphism.

We also show that the unit ball `Metric.ball (0 : E) 1` is homeomorphic
to a ball of positive radius in an affine space over `E`, see `OpenPartialHomeomorph.unitBallBall`.

## Tags

homeomorphism, ball
-/


namespace GRWTSK.Topology.GeneralTopology.OpenPartialHomeomorphUnivUnitBall.Variantb8896a3dabcbd66f1efeb07583098832e8a7ea39f1f1854dd77be6d96c9d566b

@[expose] public section

open Set Metric
variable {E : Type*} [SeminormedAddCommGroup E] [NormedSpace ℝ E]

noncomputable section

/-- Local homeomorphism between a real (semi)normed space and the unit ball.
See also `Homeomorph.unitBall`. -/
@[simps -isSimp]
def OpenPartialHomeomorph.univUnitBall : OpenPartialHomeomorph E E where
  toFun x := (√(1 + ‖x‖ ^ 2))⁻¹ • x
  invFun y := (√(1 - ‖(y : E)‖ ^ 2))⁻¹ • (y : E)
  source := univ
  target := ball 0 1
  map_source' x _ := by
    have : 0 < 1 + ‖x‖ ^ 2 := by positivity
    rw [mem_ball_zero_iff, norm_smul, Real.norm_eq_abs, abs_inv, ← _root_.div_eq_inv_mul,
      div_lt_one (abs_pos.mpr <| Real.sqrt_ne_zero'.mpr this), ← abs_norm x, ← sq_lt_sq,
      abs_norm, Real.sq_sqrt this.le]
    exact lt_one_add _
  map_target' _ _ := trivial
  left_inv' x _ := by
    match_scalars
    simp [norm_smul]
    field_simp
    simp [sq_abs, Real.sq_sqrt (zero_lt_one_add_norm_sq x).le]
  right_inv' y hy := by
    have : 0 < 1 - ‖y‖ ^ 2 := by nlinarith [norm_nonneg y, mem_ball_zero_iff.1 hy]
    match_scalars
    simp [norm_smul]
    field_simp
    simp [field, sq_abs, Real.sq_sqrt this.le]
  open_source := isOpen_univ
  open_target := isOpen_ball
  continuousOn_toFun := by
    suffices Continuous fun (x : E) => (√(1 + ‖x‖ ^ 2))⁻¹ by fun_prop
    exact Continuous.inv₀ (by fun_prop) fun x => Real.sqrt_ne_zero'.mpr (by positivity)
  continuousOn_invFun := by
    have : ∀ y ∈ ball (0 : E) 1, √(1 - ‖(y : E)‖ ^ 2) ≠ 0 := fun y hy ↦ by
      rw [Real.sqrt_ne_zero']
      nlinarith [norm_nonneg y, mem_ball_zero_iff.1 hy]
    exact ContinuousOn.smul (ContinuousOn.inv₀
      (continuousOn_const.sub (continuous_norm.continuousOn.pow _)).sqrt this) continuousOn_id

@[simp]
theorem OpenPartialHomeomorph.univUnitBall_apply_zero : univUnitBall (0 : E) = 0 := by
  simp [OpenPartialHomeomorph.univUnitBall_apply]

@[simp]
theorem OpenPartialHomeomorph.univUnitBall_symm_apply_zero : univUnitBall.symm (0 : E) = 0 := by
  simp [OpenPartialHomeomorph.univUnitBall_symm_apply]

/-- A (semi) normed real vector space is homeomorphic to the unit ball in the same space.
This homeomorphism sends `x : E` to `(1 + ‖x‖²)^(- ½) • x`.

In many cases the actual implementation is not important, so we don't mark the projection lemmas
`Homeomorph.unitBall_apply_coe` and `Homeomorph.unitBall_symm_apply` as `@[simp]`.

See also `Homeomorph.contDiff_unitBall` and `OpenPartialHomeomorph.contDiffOn_unitBall_symm`
for smoothness properties that hold when `E` is an inner-product space. -/
@[simps! -isSimp]
def Homeomorph.unitBall : E ≃ₜ ball (0 : E) 1 :=
  (Homeomorph.Set.univ _).symm.trans OpenPartialHomeomorph.univUnitBall.toHomeomorphSourceTarget

@[simp]
theorem Homeomorph.coe_unitBall_apply_zero :
    (Homeomorph.unitBall (0 : E) : E) = 0 :=
  OpenPartialHomeomorph.univUnitBall_apply_zero

variable {P : Type*} [PseudoMetricSpace P] [NormedAddTorsor E P]

namespace OpenPartialHomeomorph

/-- Affine homeomorphism `(r • · +ᵥ c)` between a normed space and an add torsor over this space,
interpreted as an `OpenPartialHomeomorph` between `Metric.ball 0 1` and `Metric.ball c r`. -/
@[simps!]
def unitBallBall (c : P) (r : ℝ) (hr : 0 < r) : OpenPartialHomeomorph E P :=
  ((Homeomorph.smulOfNeZero r hr.ne').trans
      (IsometryEquiv.vaddConst c).toHomeomorph).toOpenPartialHomeomorphOfImageEq
      (ball 0 1) isOpen_ball (ball c r) <| by
    change (IsometryEquiv.vaddConst c) ∘ (r • ·) '' ball (0 : E) 1 = ball c r
    rw [image_comp, image_smul, smul_unitBall hr.ne', IsometryEquiv.image_ball]
    simp [abs_of_pos hr]

/-- If `r > 0`, then `OpenPartialHomeomorph.univBall c r` is a smooth open partial homeomorphism
with `source = Set.univ` and `target = Metric.ball c r`.
Otherwise, it is the translation by `c`.
Thus in all cases, it sends `0` to `c`, see `OpenPartialHomeomorph.univBall_apply_zero`. -/
def univBall (c : P) (r : ℝ) : OpenPartialHomeomorph E P :=
  if h : 0 < r then univUnitBall.trans' (unitBallBall c r h) rfl
  else (IsometryEquiv.vaddConst c).toHomeomorph.toOpenPartialHomeomorph

@[simp]
theorem univBall_source (c : P) (r : ℝ) : (univBall c r).source = univ := by
  unfold univBall; split_ifs <;> rfl

theorem univBall_target (c : P) {r : ℝ} (hr : 0 < r) : (univBall c r).target = ball c r := by
  rw [univBall, dite_eq_left hr]; rfl

theorem ball_subset_univBall_target (c : P) (r : ℝ) : ball c r ⊆ (univBall c r).target := by
  by_cases hr : 0 < r
  · rw [univBall_target c hr]
  · rw [univBall, dite_eq_right hr]
    exact subset_univ _

set_option backward.isDefEq.respectTransparency false in
@[simp]
theorem univBall_apply_zero (c : P) (r : ℝ) : univBall c r 0 = c := by
  unfold univBall; split_ifs <;> simp

@[simp]
theorem univBall_symm_apply_center (c : P) (r : ℝ) : (univBall c r).symm c = 0 := by
  have : 0 ∈ (univBall c r).source := by simp
  simpa only [univBall_apply_zero] using (univBall c r).left_inv this

@[continuity]
theorem continuous_univBall (c : P) (r : ℝ) : Continuous (univBall c r) := by
  simpa [continuousOn_univ] using (univBall c r).continuousOn

theorem continuousOn_univBall_symm (c : P) (r : ℝ) : ContinuousOn (univBall c r).symm (ball c r) :=
  (univBall c r).symm.continuousOn.mono <| ball_subset_univBall_target c r

end OpenPartialHomeomorph
```
