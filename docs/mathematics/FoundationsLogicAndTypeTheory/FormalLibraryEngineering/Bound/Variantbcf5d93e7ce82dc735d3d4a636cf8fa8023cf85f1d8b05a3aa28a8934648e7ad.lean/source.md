# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bound.Variantbcf5d93e7ce82dc735d3d4a636cf8fa8023cf85f1d8b05a3aa28a8934648e7ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0c00c96f7f632f10073786428c9d6169c937067` · SHA-256 `bcf5d93e7ce82dc735d3d4a636cf8fa8023cf85f1d8b05a3aa28a8934648e7ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Real.Basic
import Mathlib.Algebra.BigOperators.Group.List.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ext

/-!
# Proof-bearing eventual upper bounds

Human research direction: grwtsk contributors. Formal implementation: OpenAI
Codex agents. The operation records pointwise addition, added constants and the
maximum radius. A jointly canceled expression can be certified before any
certificate is demanded for its individual signed summands.
-/

namespace FormalResearch.MathematicalTooling.Certificates

/-- A bound on the real ray, with explicit nonnegative constant and radius at least one. -/
structure BoundCertificate where
  /-- The real-valued expression bounded by this certificate. -/
  function : ℝ → ℝ
  /-- The nonnegative uniform upper bound on the certified expression. -/
  constant : ℝ
  /-- The real scale threshold above which the bound applies. -/
  radius : ℝ
  constant_nonneg : 0 ≤ constant
  radius_one_le : 1 ≤ radius
  bound : ∀ A, radius ≤ A → function A ≤ constant

namespace BoundCertificate

@[ext]
theorem ext {c d : BoundCertificate} (hf : c.function = d.function)
    (hc : c.constant = d.constant) (hr : c.radius = d.radius) : c = d := by
  cases c
  cases d
  simp_all

/-- The unit retains radius one even for the zero function. -/
def unit : BoundCertificate := ⟨fun _ ↦ 0, 0, 1, le_rfl, le_rfl, fun _ _ ↦ le_rfl⟩

/-- Addition of certified functions uses the common tail of both operands. -/
def compose (c d : BoundCertificate) : BoundCertificate where
  function A := c.function A + d.function A
  constant := c.constant + d.constant
  radius := max c.radius d.radius
  constant_nonneg := add_nonneg c.constant_nonneg d.constant_nonneg
  radius_one_le := c.radius_one_le.trans (le_max_left _ _)
  bound A hA := add_le_add
    (c.bound A ((le_max_left _ _).trans hA))
    (d.bound A ((le_max_right _ _).trans hA))

instance : CommMonoid BoundCertificate where
  mul := compose
  one := unit
  mul_assoc c d e := by
    apply ext
    · funext A
      exact add_assoc _ _ _
    · exact add_assoc _ _ _
    · exact max_assoc _ _ _
  one_mul c := by
    apply ext
    · funext A
      exact zero_add _
    · exact zero_add _
    · exact max_eq_right c.radius_one_le
  mul_one c := by
    apply ext
    · funext A
      exact add_zero _
    · exact add_zero _
    · exact max_eq_left c.radius_one_le
  mul_comm c d := by
    apply ext
    · funext A
      exact add_comm _ _
    · exact add_comm _ _
    · exact max_comm _ _

@[simp] theorem compose_function (c d : BoundCertificate) (A : ℝ) :
    (c * d).function A = c.function A + d.function A := rfl
@[simp] theorem compose_constant (c d : BoundCertificate) :
    (c * d).constant = c.constant + d.constant := rfl
@[simp] theorem compose_radius (c d : BoundCertificate) :
    (c * d).radius = max c.radius d.radius := rfl
@[simp] theorem unit_function (A : ℝ) : (1 : BoundCertificate).function A = 0 := rfl
@[simp] theorem unit_constant : (1 : BoundCertificate).constant = 0 := rfl
@[simp] theorem unit_radius : (1 : BoundCertificate).radius = 1 := rfl

/-- An independent nonnegative constant can be added to a certified function. -/
def constantAdd (c : BoundCertificate) (D : ℝ) (hD : 0 ≤ D) : BoundCertificate :=
  c * ⟨fun _ ↦ D, D, 1, hD, le_rfl, fun _ _ ↦ le_rfl⟩

theorem prod_function (cs : List BoundCertificate) (A : ℝ) :
    cs.prod.function A = (cs.map fun c ↦ c.function A).sum := by
  induction cs with
  | nil => rfl
  | cons c cs ih => simp [ih]

theorem prod_constant (cs : List BoundCertificate) :
    cs.prod.constant = (cs.map BoundCertificate.constant).sum := by
  induction cs with
  | nil => rfl
  | cons c cs ih => simp [ih]

/-- The empty product has radius one; nonempty products retain every child radius. -/
theorem prod_radius (cs : List BoundCertificate) :
    cs.prod.radius = (cs.map BoundCertificate.radius).foldr max 1 := by
  induction cs with
  | nil => rfl
  | cons c cs ih => simp only [List.prod_cons, compose_radius, List.map_cons,
      List.foldr_cons, ih]

/-- The certificate product bounds the entire expression, on its recorded ray. -/
theorem prod_bound (cs : List BoundCertificate) (A : ℝ) (hA : cs.prod.radius ≤ A) :
    (cs.map fun c ↦ c.function A).sum ≤ (cs.map BoundCertificate.constant).sum := by
  simpa only [prod_function, prod_constant] using cs.prod.bound A hA

/-- Nested certificate lists compose to the same complete certificate. -/
theorem flatten_prod (blocks : List (List BoundCertificate)) :
    blocks.flatten.prod = (blocks.map List.prod).prod := by
  induction blocks with
  | nil => rfl
  | cons block blocks ih => simp [ih]

/-- Radius-only certificates retain their cost and are idempotent. -/
def radiusOnly (R : ℝ) (hR : 1 ≤ R) : BoundCertificate :=
  ⟨fun _ ↦ 0, 0, R, le_rfl, hR, fun _ _ ↦ le_rfl⟩

theorem radiusOnly_idempotent (R : ℝ) (hR : 1 ≤ R) :
    radiusOnly R hR * radiusOnly R hR = radiusOnly R hR := by
  apply ext
  · funext A
    simp only [compose_function, radiusOnly, add_zero]
  · simp only [compose_constant, radiusOnly, add_zero]
  · simp only [compose_radius, radiusOnly, max_self]

/-- A signed joint block is bounded by cancellation without separate child bounds. -/
def canceled (f : ℝ → ℝ) : BoundCertificate where
  function A := f A + -f A
  constant := 0
  radius := 1
  constant_nonneg := le_rfl
  radius_one_le := le_rfl
  bound A _ := by simp

theorem canceled_eq_unit (f : ℝ → ℝ) : canceled f = 1 := by
  apply ext
  · change (fun A ↦ f A + -f A) = (fun _ ↦ 0)
    funext A
    exact add_neg_cancel _
  · rfl
  · rfl

/-- The positive member of this canceling pair has no constant upper bound. -/
theorem unbounded_positive_member : ¬ ∃ c : BoundCertificate, c.function = id := by
  rintro ⟨c, hf⟩
  let A := max c.radius (c.constant + 1)
  have hb := c.bound A (le_max_left _ _)
  rw [hf] at hb
  have hA : c.constant + 1 ≤ A := le_max_right _ _
  change A ≤ c.constant at hb
  linarith

end BoundCertificate
end FormalResearch.MathematicalTooling.Certificates
```
