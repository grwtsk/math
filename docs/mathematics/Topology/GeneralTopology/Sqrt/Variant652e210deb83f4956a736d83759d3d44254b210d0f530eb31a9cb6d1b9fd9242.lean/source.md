# Complete source: GRWTSK.Topology.GeneralTopology.Sqrt.Variant652e210deb83f4956a736d83759d3d44254b210d0f530eb31a9cb6d1b9fd9242

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b2f0b61610e600eb2809bf5b8b126374ed20be1` · SHA-256 `256fae2d7dad052d9b71198b146d4d0b0f8b405ad93a3f90fed4ab0c1daec960`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Sqrt.Varianta1436ddee23af9b196d48568c716098e4b9fff59c107cde82313c9e1fba05a39","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a1436ddee23af9b196d48568c716098e4b9fff59c107cde82313c9e1fba05a39","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Sqrt.Varianta1436ddee23af9b196d48568c716098e4b9fff59c107cde82313c9e1fba05a39","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a1436ddee23af9b196d48568c716098e4b9fff59c107cde82313c9e1fba05a39","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Real/Sqrt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Floris van Doorn, Yury Kudryashov
-/
import Mathlib.Algebra.Star.Order
import Mathlib.Topology.Algebra.Order.MonotoneContinuity
import Mathlib.Topology.Instances.NNReal
import Mathlib.Tactic.Positivity


namespace GRWTSK.Topology.GeneralTopology.Sqrt.Varianta1436ddee23af9b196d48568c716098e4b9fff59c107cde82313c9e1fba05a39

#align_import data.real.sqrt from "leanprover-community/mathlib"@"31c24aa72e7b3e5ed97a8412470e904f82b81004"

/-!
# Square root of a real number

In this file we define

* `NNReal.sqrt` to be the square root of a nonnegative real number.
* `Real.sqrt` to be the square root of a real number, defined to be zero on negative numbers.

Then we prove some basic properties of these functions.

## Implementation notes

We define `NNReal.sqrt` as the noncomputable inverse to the function `x ↦ x * x`. We use general
theory of inverses of strictly monotone functions to prove that `NNReal.sqrt x` exists. As a side
effect, `NNReal.sqrt` is a bundled `OrderIso`, so for `NNReal` numbers we get continuity as well as
theorems like `NNReal.sqrt x ≤ y ↔ x ≤ y * y` for free.

Then we define `Real.sqrt x` to be `NNReal.sqrt (Real.toNNReal x)`. We also define a Cauchy sequence
`Real.sqrtAux (f : CauSeq ℚ abs)` which converges to `Real.sqrt (mk f)` but do not prove (yet) that
this sequence actually converges to `Real.sqrt (mk f)`.

## Tags

square root
-/

set_option autoImplicit true

open Set Filter
open scoped Filter NNReal Topology

namespace NNReal

variable {x y : ℝ≥0}

/-- Square root of a nonnegative real number. -/
-- porting note: was @[pp_nodot]
noncomputable def sqrt : ℝ≥0 ≃o ℝ≥0 :=
  OrderIso.symm <| powOrderIso 2 two_ne_zero
#align nnreal.sqrt NNReal.sqrt

theorem sqrt_le_sqrt_iff : sqrt x ≤ sqrt y ↔ x ≤ y :=
  sqrt.le_iff_le
#align nnreal.sqrt_le_sqrt_iff NNReal.sqrt_le_sqrt_iff

theorem sqrt_lt_sqrt_iff : sqrt x < sqrt y ↔ x < y :=
  sqrt.lt_iff_lt
#align nnreal.sqrt_lt_sqrt_iff NNReal.sqrt_lt_sqrt_iff

theorem sqrt_eq_iff_sq_eq : sqrt x = y ↔ y ^ 2 = x :=
  sqrt.toEquiv.apply_eq_iff_eq_symm_apply.trans eq_comm
#align nnreal.sqrt_eq_iff_sq_eq NNReal.sqrt_eq_iff_sq_eq

theorem sqrt_le_iff : sqrt x ≤ y ↔ x ≤ y ^ 2 :=
  sqrt.to_galoisConnection _ _
#align nnreal.sqrt_le_iff NNReal.sqrt_le_iff

theorem le_sqrt_iff : x ≤ sqrt y ↔ x ^ 2 ≤ y :=
  (sqrt.symm.to_galoisConnection _ _).symm
#align nnreal.le_sqrt_iff NNReal.le_sqrt_iff

@[simp]
theorem sqrt_eq_zero : sqrt x = 0 ↔ x = 0 :=
  sqrt_eq_iff_sq_eq.trans <| by rw [eq_comm, sq, zero_mul]
#align nnreal.sqrt_eq_zero NNReal.sqrt_eq_zero

@[simp]
theorem sqrt_zero : sqrt 0 = 0 :=
  sqrt_eq_zero.2 rfl
#align nnreal.sqrt_zero NNReal.sqrt_zero

@[simp]
theorem sqrt_one : sqrt 1 = 1 :=
  sqrt_eq_iff_sq_eq.2 <| one_pow _
#align nnreal.sqrt_one NNReal.sqrt_one

@[simp]
theorem sq_sqrt (x : ℝ≥0) : sqrt x ^ 2 = x :=
  sqrt.symm_apply_apply x
#align nnreal.sq_sqrt NNReal.sq_sqrt

@[simp]
theorem mul_self_sqrt (x : ℝ≥0) : sqrt x * sqrt x = x := by rw [← sq, sq_sqrt]
#align nnreal.mul_self_sqrt NNReal.mul_self_sqrt

@[simp]
theorem sqrt_sq (x : ℝ≥0) : sqrt (x ^ 2) = x :=
  sqrt.apply_symm_apply x
#align nnreal.sqrt_sq NNReal.sqrt_sq

@[simp]
theorem sqrt_mul_self (x : ℝ≥0) : sqrt (x * x) = x := by rw [← sq, sqrt_sq x]
#align nnreal.sqrt_mul_self NNReal.sqrt_mul_self

theorem sqrt_mul (x y : ℝ≥0) : sqrt (x * y) = sqrt x * sqrt y := by
  rw [sqrt_eq_iff_sq_eq, mul_pow, sq_sqrt, sq_sqrt]
#align nnreal.sqrt_mul NNReal.sqrt_mul

/-- `NNReal.sqrt` as a `MonoidWithZeroHom`. -/
noncomputable def sqrtHom : ℝ≥0 →*₀ ℝ≥0 :=
  ⟨⟨sqrt, sqrt_zero⟩, sqrt_one, sqrt_mul⟩
#align nnreal.sqrt_hom NNReal.sqrtHom

theorem sqrt_inv (x : ℝ≥0) : sqrt x⁻¹ = (sqrt x)⁻¹ :=
  map_inv₀ sqrtHom x
#align nnreal.sqrt_inv NNReal.sqrt_inv

theorem sqrt_div (x y : ℝ≥0) : sqrt (x / y) = sqrt x / sqrt y :=
  map_div₀ sqrtHom x y
#align nnreal.sqrt_div NNReal.sqrt_div

theorem continuous_sqrt : Continuous sqrt := sqrt.continuous
#align nnreal.continuous_sqrt NNReal.continuous_sqrt

@[simp] theorem sqrt_pos : 0 < sqrt x ↔ 0 < x := by simp [pos_iff_ne_zero]

alias ⟨_, sqrt_pos_of_pos⟩ := sqrt_pos

end NNReal

namespace Real

/-- An auxiliary sequence of rational numbers that converges to `Real.sqrt (mk f)`.
Currently this sequence is not used in `mathlib`.  -/
def sqrtAux (f : CauSeq ℚ abs) : ℕ → ℚ
  | 0 => mkRat (f 0).num.toNat.sqrt (f 0).den.sqrt
  | n + 1 =>
    let s := sqrtAux f n
    max 0 <| (s + f (n + 1) / s) / 2
#align real.sqrt_aux Real.sqrtAux

theorem sqrtAux_nonneg (f : CauSeq ℚ abs) : ∀ i : ℕ, 0 ≤ sqrtAux f i
  | 0 => by
    rw [sqrtAux, Rat.mkRat_eq, Rat.divInt_eq_div]; apply div_nonneg <;>
      exact Int.cast_nonneg.2 (Int.ofNat_nonneg _)
  | n + 1 => le_max_left _ _
#align real.sqrt_aux_nonneg Real.sqrtAux_nonneg

/- TODO(Mario): finish the proof
theorem sqrt_aux_converges (f : cau_seq ℚ abs) : ∃ h x, 0 ≤ x ∧ x * x = max 0 (mk f) ∧
  mk ⟨sqrt_aux f, h⟩ = x :=
begin
  rcases sqrt_exists (le_max_left 0 (mk f)) with ⟨x, x0, hx⟩,
  suffices : ∃ h, mk ⟨sqrt_aux f, h⟩ = x,
  { exact this.imp (λ h e, ⟨x, x0, hx, e⟩) },
  apply of_near,

  rsuffices ⟨δ, δ0, hδ⟩ : ∃ δ > 0, ∀ i, abs (↑(sqrt_aux f i) - x) < δ / 2 ^ i,
  { intros }
end -/

-- porting note: todo: was @[pp_nodot]
/-- The square root of a real number. This returns 0 for negative inputs. -/
noncomputable def sqrt (x : ℝ) : ℝ :=
  NNReal.sqrt (Real.toNNReal x)
#align real.sqrt Real.sqrt

/-quotient.lift_on x
  (λ f, mk ⟨sqrt_aux f, (sqrt_aux_converges f).fst⟩)
  (λ f g e, begin
    rcases sqrt_aux_converges f with ⟨hf, x, x0, xf, xs⟩,
    rcases sqrt_aux_converges g with ⟨hg, y, y0, yg, ys⟩,
    refine xs.trans (eq.trans _ ys.symm),
    rw [← @mul_self_inj_of_nonneg ℝ _ x y x0 y0, xf, yg],
    congr' 1, exact quotient.sound e
  end)-/
variable {x y : ℝ}

@[simp, norm_cast]
theorem coe_sqrt {x : ℝ≥0} : (NNReal.sqrt x : ℝ) = Real.sqrt x := by
  rw [Real.sqrt, Real.toNNReal_coe]
#align real.coe_sqrt Real.coe_sqrt

@[continuity]
theorem continuous_sqrt : Continuous sqrt :=
  NNReal.continuous_coe.comp <| NNReal.continuous_sqrt.comp continuous_real_toNNReal
#align real.continuous_sqrt Real.continuous_sqrt

theorem sqrt_eq_zero_of_nonpos (h : x ≤ 0) : sqrt x = 0 := by simp [sqrt, Real.toNNReal_eq_zero.2 h]
#align real.sqrt_eq_zero_of_nonpos Real.sqrt_eq_zero_of_nonpos

theorem sqrt_nonneg (x : ℝ) : 0 ≤ sqrt x :=
  NNReal.coe_nonneg _
#align real.sqrt_nonneg Real.sqrt_nonneg

@[simp]
theorem mul_self_sqrt (h : 0 ≤ x) : sqrt x * sqrt x = x := by
  rw [sqrt, ← NNReal.coe_mul, NNReal.mul_self_sqrt, Real.coe_toNNReal _ h]
#align real.mul_self_sqrt Real.mul_self_sqrt

@[simp]
theorem sqrt_mul_self (h : 0 ≤ x) : sqrt (x * x) = x :=
  (mul_self_inj_of_nonneg (sqrt_nonneg _) h).1 (mul_self_sqrt (mul_self_nonneg _))
#align real.sqrt_mul_self Real.sqrt_mul_self

theorem sqrt_eq_cases : sqrt x = y ↔ y * y = x ∧ 0 ≤ y ∨ x < 0 ∧ y = 0 := by
  constructor
  · rintro rfl
    cases' le_or_lt 0 x with hle hlt
    · exact Or.inl ⟨mul_self_sqrt hle, sqrt_nonneg x⟩
    · exact Or.inr ⟨hlt, sqrt_eq_zero_of_nonpos hlt.le⟩
  · rintro (⟨rfl, hy⟩ | ⟨hx, rfl⟩)
    exacts [sqrt_mul_self hy, sqrt_eq_zero_of_nonpos hx.le]
#align real.sqrt_eq_cases Real.sqrt_eq_cases

theorem sqrt_eq_iff_mul_self_eq (hx : 0 ≤ x) (hy : 0 ≤ y) : sqrt x = y ↔ y * y = x :=
  ⟨fun h => by rw [← h, mul_self_sqrt hx], fun h => by rw [← h, sqrt_mul_self hy]⟩
#align real.sqrt_eq_iff_mul_self_eq Real.sqrt_eq_iff_mul_self_eq

theorem sqrt_eq_iff_mul_self_eq_of_pos (h : 0 < y) : sqrt x = y ↔ y * y = x := by
  simp [sqrt_eq_cases, h.ne', h.le]
#align real.sqrt_eq_iff_mul_self_eq_of_pos Real.sqrt_eq_iff_mul_self_eq_of_pos

@[simp]
theorem sqrt_eq_one : sqrt x = 1 ↔ x = 1 :=
  calc
    sqrt x = 1 ↔ 1 * 1 = x := sqrt_eq_iff_mul_self_eq_of_pos zero_lt_one
    _ ↔ x = 1 := by rw [eq_comm, mul_one]
#align real.sqrt_eq_one Real.sqrt_eq_one

@[simp]
theorem sq_sqrt (h : 0 ≤ x) : sqrt x ^ 2 = x := by rw [sq, mul_self_sqrt h]
#align real.sq_sqrt Real.sq_sqrt

@[simp]
theorem sqrt_sq (h : 0 ≤ x) : sqrt (x ^ 2) = x := by rw [sq, sqrt_mul_self h]
#align real.sqrt_sq Real.sqrt_sq

theorem sqrt_eq_iff_sq_eq (hx : 0 ≤ x) (hy : 0 ≤ y) : sqrt x = y ↔ y ^ 2 = x := by
  rw [sq, sqrt_eq_iff_mul_self_eq hx hy]
#align real.sqrt_eq_iff_sq_eq Real.sqrt_eq_iff_sq_eq

theorem sqrt_mul_self_eq_abs (x : ℝ) : sqrt (x * x) = |x| := by
  rw [← abs_mul_abs_self x, sqrt_mul_self (abs_nonneg _)]
#align real.sqrt_mul_self_eq_abs Real.sqrt_mul_self_eq_abs

theorem sqrt_sq_eq_abs (x : ℝ) : sqrt (x ^ 2) = |x| := by rw [sq, sqrt_mul_self_eq_abs]
#align real.sqrt_sq_eq_abs Real.sqrt_sq_eq_abs

@[simp]
theorem sqrt_zero : sqrt 0 = 0 := by simp [sqrt]
#align real.sqrt_zero Real.sqrt_zero

@[simp]
theorem sqrt_one : sqrt 1 = 1 := by simp [sqrt]
#align real.sqrt_one Real.sqrt_one

@[simp]
theorem sqrt_le_sqrt_iff (hy : 0 ≤ y) : sqrt x ≤ sqrt y ↔ x ≤ y := by
  rw [sqrt, sqrt, NNReal.coe_le_coe, NNReal.sqrt_le_sqrt_iff, Real.toNNReal_le_toNNReal_iff hy]
#align real.sqrt_le_sqrt_iff Real.sqrt_le_sqrt_iff

@[simp]
theorem sqrt_lt_sqrt_iff (hx : 0 ≤ x) : sqrt x < sqrt y ↔ x < y :=
  lt_iff_lt_of_le_iff_le (sqrt_le_sqrt_iff hx)
#align real.sqrt_lt_sqrt_iff Real.sqrt_lt_sqrt_iff

theorem sqrt_lt_sqrt_iff_of_pos (hy : 0 < y) : sqrt x < sqrt y ↔ x < y := by
  rw [sqrt, sqrt, NNReal.coe_lt_coe, NNReal.sqrt_lt_sqrt_iff, toNNReal_lt_toNNReal_iff hy]
#align real.sqrt_lt_sqrt_iff_of_pos Real.sqrt_lt_sqrt_iff_of_pos

theorem sqrt_le_sqrt (h : x ≤ y) : sqrt x ≤ sqrt y := by
  rw [sqrt, sqrt, NNReal.coe_le_coe, NNReal.sqrt_le_sqrt_iff]
  exact toNNReal_le_toNNReal h
#align real.sqrt_le_sqrt Real.sqrt_le_sqrt

theorem sqrt_lt_sqrt (hx : 0 ≤ x) (h : x < y) : sqrt x < sqrt y :=
  (sqrt_lt_sqrt_iff hx).2 h
#align real.sqrt_lt_sqrt Real.sqrt_lt_sqrt

theorem sqrt_le_left (hy : 0 ≤ y) : sqrt x ≤ y ↔ x ≤ y ^ 2 := by
  rw [sqrt, ← Real.le_toNNReal_iff_coe_le hy, NNReal.sqrt_le_iff, sq, ← Real.toNNReal_mul hy,
    Real.toNNReal_le_toNNReal_iff (mul_self_nonneg y), sq]
#align real.sqrt_le_left Real.sqrt_le_left

theorem sqrt_le_iff : sqrt x ≤ y ↔ 0 ≤ y ∧ x ≤ y ^ 2 := by
  rw [← and_iff_right_of_imp fun h => (sqrt_nonneg x).trans h, and_congr_right_iff]
  exact sqrt_le_left
#align real.sqrt_le_iff Real.sqrt_le_iff

theorem sqrt_lt (hx : 0 ≤ x) (hy : 0 ≤ y) : sqrt x < y ↔ x < y ^ 2 := by
  rw [← sqrt_lt_sqrt_iff hx, sqrt_sq hy]
#align real.sqrt_lt Real.sqrt_lt

theorem sqrt_lt' (hy : 0 < y) : sqrt x < y ↔ x < y ^ 2 := by
  rw [← sqrt_lt_sqrt_iff_of_pos (pow_pos hy _), sqrt_sq hy.le]
#align real.sqrt_lt' Real.sqrt_lt'

/-- Note: if you want to conclude `x ≤ Real.sqrt y`, then use `Real.le_sqrt_of_sq_le`.  If you have
`x > 0`, consider using `Real.le_sqrt'` -/
theorem le_sqrt (hx : 0 ≤ x) (hy : 0 ≤ y) : x ≤ sqrt y ↔ x ^ 2 ≤ y :=
  le_iff_le_iff_lt_iff_lt.2 <| sqrt_lt hy hx
#align real.le_sqrt Real.le_sqrt

theorem le_sqrt' (hx : 0 < x) : x ≤ sqrt y ↔ x ^ 2 ≤ y :=
  le_iff_le_iff_lt_iff_lt.2 <| sqrt_lt' hx
#align real.le_sqrt' Real.le_sqrt'

theorem abs_le_sqrt (h : x ^ 2 ≤ y) : |x| ≤ sqrt y := by
  rw [← sqrt_sq_eq_abs]; exact sqrt_le_sqrt h
#align real.abs_le_sqrt Real.abs_le_sqrt

theorem sq_le (h : 0 ≤ y) : x ^ 2 ≤ y ↔ -sqrt y ≤ x ∧ x ≤ sqrt y := by
  constructor
  · simpa only [abs_le] using abs_le_sqrt
  · rw [← abs_le, ← sq_abs]
    exact (le_sqrt (abs_nonneg x) h).mp
#align real.sq_le Real.sq_le

theorem neg_sqrt_le_of_sq_le (h : x ^ 2 ≤ y) : -sqrt y ≤ x :=
  ((sq_le ((sq_nonneg x).trans h)).mp h).1
#align real.neg_sqrt_le_of_sq_le Real.neg_sqrt_le_of_sq_le

theorem le_sqrt_of_sq_le (h : x ^ 2 ≤ y) : x ≤ sqrt y :=
  ((sq_le ((sq_nonneg x).trans h)).mp h).2
#align real.le_sqrt_of_sq_le Real.le_sqrt_of_sq_le

@[simp]
theorem sqrt_inj (hx : 0 ≤ x) (hy : 0 ≤ y) : sqrt x = sqrt y ↔ x = y := by
  simp [le_antisymm_iff, hx, hy]
#align real.sqrt_inj Real.sqrt_inj

@[simp]
theorem sqrt_eq_zero (h : 0 ≤ x) : sqrt x = 0 ↔ x = 0 := by simpa using sqrt_inj h le_rfl
#align real.sqrt_eq_zero Real.sqrt_eq_zero

theorem sqrt_eq_zero' : sqrt x = 0 ↔ x ≤ 0 := by
  rw [sqrt, NNReal.coe_eq_zero, NNReal.sqrt_eq_zero, Real.toNNReal_eq_zero]
#align real.sqrt_eq_zero' Real.sqrt_eq_zero'

theorem sqrt_ne_zero (h : 0 ≤ x) : sqrt x ≠ 0 ↔ x ≠ 0 := by rw [not_iff_not, sqrt_eq_zero h]
#align real.sqrt_ne_zero Real.sqrt_ne_zero

theorem sqrt_ne_zero' : sqrt x ≠ 0 ↔ 0 < x := by rw [← not_le, not_iff_not, sqrt_eq_zero']
#align real.sqrt_ne_zero' Real.sqrt_ne_zero'

@[simp]
theorem sqrt_pos : 0 < sqrt x ↔ 0 < x :=
  lt_iff_lt_of_le_iff_le (Iff.trans (by simp [le_antisymm_iff, sqrt_nonneg]) sqrt_eq_zero')
#align real.sqrt_pos Real.sqrt_pos

alias ⟨_, sqrt_pos_of_pos⟩ := sqrt_pos
#align real.sqrt_pos_of_pos Real.sqrt_pos_of_pos

end Real

namespace Mathlib.Meta.Positivity

open Lean Meta Qq Function

/-- Extension for the `positivity` tactic: a square root of a strictly positive nonnegative real is
positive. -/
@[positivity NNReal.sqrt _]
def evalNNRealSqrt : PositivityExt where eval {_ _} _zα _pα e := do
  let (.app _ (a : Q(NNReal))) ← whnfR e | throwError "not NNReal.sqrt"
  let zα' ← synthInstanceQ (q(Zero NNReal) : Q(Type))
  let pα' ← synthInstanceQ (q(PartialOrder NNReal) : Q(Type))
  let ra ← core zα' pα' a
  assertInstancesCommute
  match ra with
  | .positive pa => pure (.positive (q(NNReal.sqrt_pos_of_pos $pa) : Expr))
  | _ => failure -- this case is dealt with by generic nonnegativity of nnreals

/-- Extension for the `positivity` tactic: a square root is nonnegative, and is strictly positive if
its input is. -/
@[positivity Real.sqrt _]
def evalSqrt : PositivityExt where eval {_ _} _zα _pα e := do
  let (.app _ (a : Q(Real))) ← whnfR e | throwError "not Real.sqrt"
  let zα' ← synthInstanceQ (q(Zero Real) : Q(Type))
  let pα' ← synthInstanceQ (q(PartialOrder Real) : Q(Type))
  let ra ← core zα' pα' a
  assertInstancesCommute
  match ra with
  | .positive pa => pure (.positive (q(Real.sqrt_pos_of_pos $pa) : Expr))
  | _ => pure (.nonnegative (q(Real.sqrt_nonneg $a) : Expr))

end Mathlib.Meta.Positivity

namespace Real

@[simp]
theorem sqrt_mul (hx : 0 ≤ x) (y : ℝ) : sqrt (x * y) = sqrt x * sqrt y := by
  simp_rw [sqrt, ← NNReal.coe_mul, NNReal.coe_eq, Real.toNNReal_mul hx, NNReal.sqrt_mul]
#align real.sqrt_mul Real.sqrt_mul

@[simp]
theorem sqrt_mul' (x) {y : ℝ} (hy : 0 ≤ y) : sqrt (x * y) = sqrt x * sqrt y := by
  rw [mul_comm, sqrt_mul hy, mul_comm]
#align real.sqrt_mul' Real.sqrt_mul'

@[simp]
theorem sqrt_inv (x : ℝ) : sqrt x⁻¹ = (sqrt x)⁻¹ := by
  rw [sqrt, Real.toNNReal_inv, NNReal.sqrt_inv, NNReal.coe_inv, sqrt]
#align real.sqrt_inv Real.sqrt_inv

@[simp]
theorem sqrt_div (hx : 0 ≤ x) (y : ℝ) : sqrt (x / y) = sqrt x / sqrt y := by
  rw [division_def, sqrt_mul hx, sqrt_inv, division_def]
#align real.sqrt_div Real.sqrt_div

@[simp]
theorem sqrt_div' (x) {y : ℝ} (hy : 0 ≤ y) : sqrt (x / y) = sqrt x / sqrt y := by
  rw [division_def, sqrt_mul' x (inv_nonneg.2 hy), sqrt_inv, division_def]
#align real.sqrt_div' Real.sqrt_div'

@[simp]
theorem div_sqrt : x / sqrt x = sqrt x := by
  cases' le_or_lt x 0 with h h
  · rw [sqrt_eq_zero'.mpr h, div_zero]
  · rw [div_eq_iff (sqrt_ne_zero'.mpr h), mul_self_sqrt h.le]
#align real.div_sqrt Real.div_sqrt

theorem sqrt_div_self' : sqrt x / x = 1 / sqrt x := by rw [← div_sqrt, one_div_div, div_sqrt]
#align real.sqrt_div_self' Real.sqrt_div_self'

theorem sqrt_div_self : sqrt x / x = (sqrt x)⁻¹ := by rw [sqrt_div_self', one_div]
#align real.sqrt_div_self Real.sqrt_div_self

theorem lt_sqrt (hx : 0 ≤ x) : x < sqrt y ↔ x ^ 2 < y := by
  rw [← sqrt_lt_sqrt_iff (sq_nonneg _), sqrt_sq hx]
#align real.lt_sqrt Real.lt_sqrt

theorem sq_lt : x ^ 2 < y ↔ -sqrt y < x ∧ x < sqrt y := by
  rw [← abs_lt, ← sq_abs, lt_sqrt (abs_nonneg _)]
#align real.sq_lt Real.sq_lt

theorem neg_sqrt_lt_of_sq_lt (h : x ^ 2 < y) : -sqrt y < x :=
  (sq_lt.mp h).1
#align real.neg_sqrt_lt_of_sq_lt Real.neg_sqrt_lt_of_sq_lt

theorem lt_sqrt_of_sq_lt (h : x ^ 2 < y) : x < sqrt y :=
  (sq_lt.mp h).2
#align real.lt_sqrt_of_sq_lt Real.lt_sqrt_of_sq_lt

theorem lt_sq_of_sqrt_lt {x y : ℝ} (h : sqrt x < y) : x < y ^ 2 := by
  have hy := x.sqrt_nonneg.trans_lt h
  rwa [← sqrt_lt_sqrt_iff_of_pos (sq_pos_of_pos hy), sqrt_sq hy.le]
#align real.lt_sq_of_sqrt_lt Real.lt_sq_of_sqrt_lt

/-- The natural square root is at most the real square root -/
theorem nat_sqrt_le_real_sqrt {a : ℕ} : ↑(Nat.sqrt a) ≤ Real.sqrt ↑a := by
  rw [Real.le_sqrt (Nat.cast_nonneg _) (Nat.cast_nonneg _)]
  norm_cast
  exact Nat.sqrt_le' a
#align real.nat_sqrt_le_real_sqrt Real.nat_sqrt_le_real_sqrt

/-- The real square root is at most the natural square root plus one -/
theorem real_sqrt_le_nat_sqrt_succ {a : ℕ} : Real.sqrt ↑a ≤ Nat.sqrt a + 1 := by
  rw [Real.sqrt_le_iff]
  constructor
  · norm_cast
    apply zero_le
  · norm_cast
    exact le_of_lt (Nat.lt_succ_sqrt' a)
#align real.real_sqrt_le_nat_sqrt_succ Real.real_sqrt_le_nat_sqrt_succ

/-- Although the instance `IsROrC.toStarOrderedRing` exists, it is locked behind the
`ComplexOrder` scope because currently the order on `ℂ` is not enabled globally. But we
want `StarOrderedRing ℝ` to be available globally, so we include this instance separately.
In addition, providing this instance here makes it available earlier in the import
hierarchy; otherwise in order to access it we would need to import `Data.IsROrC.Basic` -/
instance : StarOrderedRing ℝ :=
  StarOrderedRing.ofNonnegIff' add_le_add_left fun r => by
    refine ⟨fun hr => ⟨sqrt r, (mul_self_sqrt hr).symm⟩, ?_⟩
    rintro ⟨s, rfl⟩
    exact mul_self_nonneg s

end Real

open Real

variable {α : Type*}

theorem Filter.Tendsto.sqrt {f : α → ℝ} {l : Filter α} {x : ℝ} (h : Tendsto f l (𝓝 x)) :
    Tendsto (fun x => sqrt (f x)) l (𝓝 (sqrt x)) :=
  (continuous_sqrt.tendsto _).comp h
#align filter.tendsto.sqrt Filter.Tendsto.sqrt

variable [TopologicalSpace α] {f : α → ℝ} {s : Set α} {x : α}

nonrec theorem ContinuousWithinAt.sqrt (h : ContinuousWithinAt f s x) :
    ContinuousWithinAt (fun x => sqrt (f x)) s x :=
  h.sqrt
#align continuous_within_at.sqrt ContinuousWithinAt.sqrt

nonrec theorem ContinuousAt.sqrt (h : ContinuousAt f x) : ContinuousAt (fun x => sqrt (f x)) x :=
  h.sqrt
#align continuous_at.sqrt ContinuousAt.sqrt

theorem ContinuousOn.sqrt (h : ContinuousOn f s) : ContinuousOn (fun x => sqrt (f x)) s :=
  fun x hx => (h x hx).sqrt
#align continuous_on.sqrt ContinuousOn.sqrt

@[continuity]
theorem Continuous.sqrt (h : Continuous f) : Continuous fun x => sqrt (f x) :=
  continuous_sqrt.comp h
#align continuous.sqrt Continuous.sqrt
```
