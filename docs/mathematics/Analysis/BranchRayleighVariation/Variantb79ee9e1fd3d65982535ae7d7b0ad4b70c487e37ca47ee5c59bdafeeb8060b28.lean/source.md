# Complete source: GRWTSK.Analysis.BranchRayleighVariation.Variantb79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e93862a6b66b1ba631b91e28e57ce70013a5392` · SHA-256 `b79ee9e1fd3d65982535ae7d7b0ad4b70c487e37ca47ee5c59bdafeeb8060b28`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Analysis.Calculus.Deriv.Inv
import Mathlib.Analysis.Calculus.Deriv.Add
import Mathlib.Tactic

/-!
# Exact affine Rayleigh variation

Continuation batch 26, `exact-profile-descent.md`, section 2. The normalized
quadratic quotient is treated exactly, with its denominator retained. This
proves the absence of a hidden cubic variation on this affine path. It does
not identify a scale variation with that path or prove native nonstationarity.
Human research direction: grwtsk contributors. Lean proofs: OpenAI Codex.
-/
set_option autoImplicit false
set_option backward.isDefEq.respectTransparency false
noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.BranchRayleighVariation

variable {𝕜 : Type*} [normedField : NontriviallyNormedField 𝕜]

/-- Fix the normed carrier used by the calculus lemmas. -/
abbrev FieldDerivAt (f : 𝕜 → 𝕜) (y x : 𝕜) : Prop :=
  @HasDerivAt 𝕜 normedField 𝕜
    NonUnitalNormedRing.toNormedAddCommGroup.toAddCommGroup
    NormedField.toNormedSpace.toModule
    PseudoMetricSpace.toUniformSpace.toTopologicalSpace (by infer_instance) f y x

/-- The denominator in this module, with the following exact parameterization.

def denominator (ell H e : 𝕜) : 𝕜 := 1 + (2 * e * ell + e ^ 2 * H)
-/
def denominator (ell H e : 𝕜) : 𝕜 := 1 + (2 * e * ell + e ^ 2 * H)
/-- The increment in this module, with the following exact parameterization.

def increment (a d ell H e : 𝕜) : 𝕜 := (2 * e * a + e ^ 2 * d) / denominator ell H e
-/
def increment (a d ell H e : 𝕜) : 𝕜 :=
  (2 * e * a + e ^ 2 * d) / denominator ell H e

theorem exact_quotient (r b c ell H e : 𝕜) (he : denominator ell H e ≠ 0) :
    (r + 2 * e * b + e ^ 2 * c) / denominator ell H e - r =
      increment (b - r * ell) (c - r * H) ell H e := by
  unfold increment denominator at *
  calc
    (r + 2 * e * b + e ^ 2 * c) / (1 + (2 * e * ell + e ^ 2 * H)) - r =
        ((r + 2 * e * b + e ^ 2 * c) - r * (1 + (2 * e * ell + e ^ 2 * H))) /
          (1 + (2 * e * ell + e ^ 2 * H)) := by
      rw [sub_div, mul_div_cancel_right₀ r he]
    _ = _ := by congr 1; ring

theorem numerator_derivative (a d e : 𝕜) :
    FieldDerivAt (fun x : 𝕜 ↦ 2 * x * a + x ^ 2 * d) (2 * a + 2 * e * d) e := by
  unfold FieldDerivAt
  convert!
    HasDerivAt.add (((hasDerivAt_id e).const_mul 2).mul_const a)
      (((hasDerivAt_id e).pow 2).mul_const d) using 1
  simp only [id_eq]
  ring

theorem denominator_derivative (ell H e : 𝕜) :
    FieldDerivAt (denominator ell H) (2 * ell + 2 * e * H) e := by
  unfold FieldDerivAt
  convert! HasDerivAt.const_add 1 (numerator_derivative ell H e) using 1

/-- The slope in this module, with the following exact parameterization.

def slope (a d ell H e : 𝕜) : 𝕜 := ((2 * a + 2 * e * d) * denominator ell H e - (2 * e * a + e
^ 2 * d) * (2 * ell + 2 * e * H)) / denominator ell H e ^ 2
-/
def slope (a d ell H e : 𝕜) : 𝕜 :=
  ((2 * a + 2 * e * d) * denominator ell H e -
    (2 * e * a + e ^ 2 * d) * (2 * ell + 2 * e * H)) /
    denominator ell H e ^ 2

theorem increment_derivative (a d ell H e : 𝕜) (he : denominator ell H e ≠ 0) :
    FieldDerivAt (increment a d ell H) (slope a d ell H e) e := by
  exact (numerator_derivative a d e).div (denominator_derivative ell H e) he

theorem first_variation (a d ell H : 𝕜) :
    FieldDerivAt (increment a d ell H) (2 * a) 0 := by
  simpa [slope, denominator] using increment_derivative a d ell H 0 (by simp [denominator])

theorem slope_simplified (a d ell H e : 𝕜) :
    slope a d ell H e =
      (2 * a + 2 * e * d + 2 * e ^ 2 * (d * ell - a * H)) /
        denominator ell H e ^ 2 := by
  unfold slope denominator
  congr 1
  ring

theorem second_variation (a d ell H : 𝕜) :
    FieldDerivAt (slope a d ell H) (2 * d - 8 * a * ell) 0 := by
  have hn : FieldDerivAt (fun e : 𝕜 ↦ 2 * a + 2 * e * d +
      2 * e ^ 2 * (d * ell - a * H)) (2 * d) 0 := by
    unfold FieldDerivAt
    convert! HasDerivAt.add (HasDerivAt.add (hasDerivAt_const (0 : 𝕜) (2 * a))
      (((hasDerivAt_id (0 : 𝕜)).const_mul 2).mul_const d))
      ((((hasDerivAt_id (0 : 𝕜)).pow 2).const_mul 2).mul_const (d * ell - a * H))
      using 1
    simp
  have hd := (denominator_derivative ell H 0).pow 2
  have h := hn.div hd (show denominator ell H 0 ^ 2 ≠ 0 by simp [denominator])
  have hs : slope a d ell H = (fun e : 𝕜 ↦
      (2 * a + 2 * e * d + 2 * e ^ 2 * (d * ell - a * H)) /
        denominator ell H e ^ 2) := funext (slope_simplified a d ell H)
  rw [hs]
  convert! h using 1
  simp [denominator]
  ring

variable [CharZero 𝕜]

theorem vanishing_variations (a d ell : 𝕜) (hfirst : 2 * a = 0)
    (hsecond : 2 * d - 8 * a * ell = 0) : a = 0 ∧ d = 0 := by
  have htwo : (2 : 𝕜) ≠ 0 := by norm_num
  have ha : a = 0 := (mul_eq_zero.mp hfirst).resolve_left htwo
  rw [ha] at hsecond
  simp only [mul_zero, zero_mul, sub_zero] at hsecond
  exact ⟨ha, (mul_eq_zero.mp hsecond).resolve_left htwo⟩

theorem flat_affine_path (a d ell H : 𝕜) (hfirst : 2 * a = 0)
    (hsecond : 2 * d - 8 * a * ell = 0) : ∀ e, increment a d ell H e = 0 := by
  obtain ⟨ha, hd⟩ := vanishing_variations a d ell hfirst hsecond
  simp [increment, ha, hd]

theorem flat_of_zero_first_and_second_variations (a d ell H : 𝕜)
    (hfirst : FieldDerivAt (increment a d ell H) 0 0)
    (hsecond : FieldDerivAt (slope a d ell H) 0 0) :
    ∀ e, increment a d ell H e = 0 := by
  exact flat_affine_path a d ell H
    ((first_variation a d ell H).unique hfirst)
    ((second_variation a d ell H).unique hsecond)

theorem negative_increment (a d ell H e : ℝ)
    (hden : 0 < denominator ell H e) (hnum : 2 * e * a + e ^ 2 * d < 0) :
    increment a d ell H e < 0 := div_neg_of_neg_of_pos hnum hden

end FormalResearch.RiemannHypothesis.Conversation.BranchRayleighVariation
```
