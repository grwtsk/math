# Complete source: GRWTSK.Analysis.Complex.ExponentialLoopIndex

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4982cd25e063c014803bcb751a80287da6ade0e` · SHA-256 `837b18bf5a6f65e545286dd8628128af35cb79e59f639757965d0b328889ed32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Complex.CoveringMap
import Mathlib.Topology.Homotopy.Lifting
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Integer loop index from the actual complex exponential covering

A continuous logarithm along the COMPLETE path is constructed by the pinned
covering-space path-lifting theorem. Closure forces its endpoint displacement
to be an integral multiple of 2*pi*i. The integer is independent of the chosen
continuous logarithm, even when its initial value is changed. Homotopy lifting
then proves invariance under FREE closed-loop homotopies: no fixed basepoint is
assumed. This is a noncomputable mathematical invariant, not an executable
polygon-index algorithm or an analytic argument-principle theorem.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.Complex.ExponentialLoopIndex

open scoped unitInterval
open ContinuousMap

noncomputable section

abbrev Punctured := {z : ℂ // z ≠ 0}

def expCover (z : ℂ) : Punctured := ⟨Complex.exp z, Complex.exp_ne_zero z⟩

theorem covering : IsCoveringMap expCover := Complex.isCoveringMap_exp

def period : ℂ := 2 * Real.pi * Complex.I

def deck (k : ℤ) : ℂ := (k : ℂ) * period

theorem period_ne_zero : period ≠ 0 := Complex.two_pi_I_ne_zero

@[simp] theorem deck_zero : deck 0 = 0 := by simp [deck]

@[simp] theorem deck_add (j k : ℤ) : deck (j + k) = deck j + deck k := by
  simp [deck, add_mul]

@[simp] theorem deck_neg (k : ℤ) : deck (-k) = -deck k := by simp [deck]

theorem deck_injective : Function.Injective deck := by
  intro j k h
  have hc : (j : ℂ) = (k : ℂ) := (mul_right_inj' period_ne_zero).mp h
  exact_mod_cast hc

@[simp] theorem exp_deck (k : ℤ) : Complex.exp (deck k) = 1 :=
  Complex.exp_eq_one_iff.mpr ⟨k, rfl⟩

/-- Only one INITIAL principal-log value is used. The path is lifted continuously;
its later values are not independently reset to the principal logarithm. -/
theorem initial_lift (g : C(I, Punctured)) :
    g 0 = expCover (Complex.log (g 0).1) := by
  apply Subtype.ext
  exact (Complex.exp_log (g 0).2).symm

def logLift (g : C(I, Punctured)) : C(I, ℂ) :=
  covering.liftPath g (Complex.log (g 0).1) (initial_lift g)

theorem logLift_exp (g : C(I, Punctured)) (t : I) :
    Complex.exp (logLift g t) = (g t).1 := by
  exact congrArg Subtype.val
    (congrFun (covering.liftPath_lifts g (Complex.log (g 0).1) (initial_lift g)) t)

theorem logLift_zero (g : C(I, Punctured)) :
    logLift g 0 = Complex.log (g 0).1 :=
  covering.liftPath_zero g (Complex.log (g 0).1) (initial_lift g)

/-- Uniqueness of lifts makes the difference constant. No pointwise choice of an
integer, implicit branch continuity, or endpoint-log subtraction replaces this. -/
theorem difference_const (L M : C(I, ℂ))
    (he : ∀ t, Complex.exp (L t) = Complex.exp (M t)) (t u : I) :
    L t - M t = L u - M u := by
  have he0 : Complex.exp (L u - M u) = 1 :=
    Complex.exp_eq_exp_iff_exp_sub_eq_one.mp (he u)
  have hc : expCover ∘ L = expCover ∘ (fun x => M x + (L u - M u)) := by
    funext x
    apply Subtype.ext
    change Complex.exp (L x) = Complex.exp (M x + (L u - M u))
    rw [Complex.exp_add, he0, mul_one]
    exact he x
  have h := covering.eq_of_comp_eq L.continuous
    (M.continuous.add continuous_const) hc u (by ring)
  have ht := congrFun h t
  linear_combination ht

/-- All continuous logarithmic lifts of the same path have the same endpoint jump. -/
theorem jump_eq (g : C(I, Punctured)) (L : C(I, ℂ))
    (hL : ∀ t, Complex.exp (L t) = (g t).1) :
    L 1 - L 0 = logLift g 1 - logLift g 0 := by
  have hd := difference_const L (logLift g)
    (fun t => (hL t).trans (logLift_exp g t).symm) (1 : I) (0 : I)
  linear_combination hd

/-- Closure, not merely nonvanishing, quantizes the full lifted displacement. -/
theorem exists_jump (g : C(I, Punctured)) (hg : g 0 = g 1) :
    ∃ k : ℤ, logLift g 1 - logLift g 0 = deck k := by
  have he : Complex.exp (logLift g 1) = Complex.exp (logLift g 0) :=
    (logLift_exp g 1).trans ((congrArg Subtype.val hg.symm).trans (logLift_exp g 0).symm)
  obtain ⟨k, hk⟩ := Complex.exp_eq_exp_iff_exists_int.mp he
  refine ⟨k, ?_⟩
  change logLift g 1 - logLift g 0 = (k : ℂ) * (2 * Real.pi * Complex.I)
  rw [hk]
  ring

/-- The mathematical integer is chosen from a proved, uniquely quantified jump.
This definition is NOT a rational computation or an unproved integer field. -/
def winding (g : C(I, Punctured)) (hg : g 0 = g 1) : ℤ :=
  (exists_jump g hg).choose

theorem winding_spec (g : C(I, Punctured)) (hg : g 0 = g 1) :
    logLift g 1 - logLift g 0 = deck (winding g hg) :=
  (exists_jump g hg).choose_spec

/-- An independently supplied continuous logarithm computes the SAME index. Its
initial value need not be the principal logarithm, nor the initial value of another lift. -/
theorem winding_eq_of_lift (g : C(I, Punctured)) (hg : g 0 = g 1)
    (L : C(I, ℂ)) (hL : ∀ t, Complex.exp (L t) = (g t).1)
    {k : ℤ} (hk : L 1 - L 0 = deck k) : winding g hg = k := by
  apply deck_injective
  rw [← winding_spec, ← jump_eq g L hL, hk]

theorem jump_of_lift (g : C(I, Punctured)) (hg : g 0 = g 1)
    (L : C(I, ℂ)) (hL : ∀ t, Complex.exp (L t) = (g t).1) :
    L 1 - L 0 = deck (winding g hg) :=
  (jump_eq g L hL).trans (winding_spec g hg)

/-- A genuinely closed continuous logarithm forces zero index. Merely equal
principal logarithms at the two endpoints do not give this hypothesis. -/
theorem winding_zero_of_closed_log (g : C(I, Punctured)) (hg : g 0 = g 1)
    (L : C(I, ℂ)) (hL : ∀ t, Complex.exp (L t) = (g t).1) (hclosed : L 0 = L 1) :
    winding g hg = 0 := by
  apply winding_eq_of_lift g hg L hL
  simp [hclosed]

theorem winding_const (z : Punctured) :
    winding (ContinuousMap.const I z) rfl = 0 := by
  apply winding_zero_of_closed_log _ rfl (ContinuousMap.const I (Complex.log z.1))
  · intro t
    exact Complex.exp_log z.2
  · rfl

/-- Construct the logarithm of a WHOLE homotopy from the actual initial lift.
The logarithm itself need not close, and the basepoint is allowed to move. -/
def liftedHomotopy {g₀ g₁ : C(I, Punctured)} (H : Homotopy g₀ g₁) : C(I × I, ℂ) :=
  covering.liftHomotopy H.toContinuousMap (logLift g₀)
    (fun t => (H.apply_zero t).trans ((Subtype.ext (logLift_exp g₀ t)).symm))

theorem liftedHomotopy_exp {g₀ g₁ : C(I, Punctured)}
    (H : Homotopy g₀ g₁) (p : I × I) :
    Complex.exp (liftedHomotopy H p) = (H p).1 := by
  exact congrArg Subtype.val (congrFun (covering.liftHomotopy_lifts H.toContinuousMap
    (logLift g₀) (fun t => (H.apply_zero t).trans ((Subtype.ext (logLift_exp g₀ t)).symm))) p)

theorem liftedHomotopy_zero {g₀ g₁ : C(I, Punctured)}
    (H : Homotopy g₀ g₁) (t : I) : liftedHomotopy H (0, t) = logLift g₀ t :=
  covering.liftHomotopy_zero H.toContinuousMap (logLift g₀)
    (fun t => (H.apply_zero t).trans ((Subtype.ext (logLift_exp g₀ t)).symm)) t

/-- The end and start logarithm paths lift the SAME MOVING basepoint path.
Their difference is constant. It is not asserted that either path is constant. -/
theorem homotopy_jump_const {g₀ g₁ : C(I, Punctured)}
    (H : HomotopyWith g₀ g₁ (fun g => g 0 = g 1)) (lam : I) :
    liftedHomotopy H.toHomotopy (lam, 1) - liftedHomotopy H.toHomotopy (lam, 0) =
      logLift g₀ 1 - logLift g₀ 0 := by
  let A : C(I, ℂ) := ⟨fun t => liftedHomotopy H.toHomotopy (t, 1),
    (liftedHomotopy H.toHomotopy).continuous.comp (by fun_prop)⟩
  let B : C(I, ℂ) := ⟨fun t => liftedHomotopy H.toHomotopy (t, 0),
    (liftedHomotopy H.toHomotopy).continuous.comp (by fun_prop)⟩
  have he : ∀ t, Complex.exp (A t) = Complex.exp (B t) := by
    intro t
    change Complex.exp (liftedHomotopy H.toHomotopy (t, 1)) =
      Complex.exp (liftedHomotopy H.toHomotopy (t, 0))
    rw [liftedHomotopy_exp, liftedHomotopy_exp]
    exact congrArg Subtype.val (H.prop t).symm
  have hd := difference_const A B he lam (0 : I)
  change liftedHomotopy H.toHomotopy (lam, 1) - liftedHomotopy H.toHomotopy (lam, 0) =
    liftedHomotopy H.toHomotopy (0, 1) - liftedHomotopy H.toHomotopy (0, 0) at hd
  simpa only [liftedHomotopy_zero] using hd

/-- FREE homotopy invariance in the actual punctured plane. Fixed basepoints,
principal-argument continuity, and a quotient-circle conversion are unnecessary. -/
theorem winding_homotopy {g₀ g₁ : C(I, Punctured)}
    (hg₀ : g₀ 0 = g₀ 1) (hg₁ : g₁ 0 = g₁ 1)
    (H : HomotopyWith g₀ g₁ (fun g => g 0 = g 1)) :
    winding g₀ hg₀ = winding g₁ hg₁ := by
  let L : C(I, ℂ) := ⟨fun t => liftedHomotopy H.toHomotopy (1, t),
    (liftedHomotopy H.toHomotopy).continuous.comp (by fun_prop)⟩
  have hL : ∀ t, Complex.exp (L t) = (g₁ t).1 := by
    intro t
    change Complex.exp (liftedHomotopy H.toHomotopy (1, t)) = _
    rw [liftedHomotopy_exp, H.apply_one]
  have hj : L 1 - L 0 = deck (winding g₀ hg₀) :=
    (homotopy_jump_const H (1 : I)).trans (winding_spec g₀ hg₀)
  exact (winding_eq_of_lift g₁ hg₁ L hL hj).symm

end
end GRWTSK.Analysis.Complex.ExponentialLoopIndex
```
