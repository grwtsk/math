# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SubdivisionProbe.Variantc4ef4c74e4e9b44cc8d3bd3cc6f26ea3f34bab1dc68a46f91385304fd439d370

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36fe948c3f4a8beea342bed31a12ca31786f68b6` · SHA-256 `c4ef4c74e4e9b44cc8d3bd3cc6f26ea3f34bab1dc68a46f91385304fd439d370`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic

/-!
# BZ-1: exact rational de Casteljau subdivision probe

This scratch module proves arbitrary-degree left and right subdivision for a
rational de Casteljau evaluator without placeholders.

The minimal algebraic representation is a sequence of points in a rational
module.  For a degree `n` evaluation only indices `0, ..., n` are observed;
`eval_congr_prefix` records that fact.  A rational homogeneous point in
ambient dimension `d` is represented by `Fin (d + 1) → ℚ`, so the generic
module theorem applies componentwise to exact rational Bézier data, including
the final weight coordinate.  Dehomogenization is intentionally outside this
probe because it requires a nonzero-weight hypothesis and is unnecessary for
the polynomial subdivision identity.

No closed Bernstein formula is needed.  The proof uses:

* linearity of recursive evaluation in the control row;
* the affine identity
  `step (t * u) p = rowCombo t p (step u p)`;
* for the right diagonal, the index identities
  `n + 1 - i = (n - i) + 1` and
  `n + 1 - (i + 1) = n - i` when `i ≤ n`.
-/

namespace Surface.BZ1.SubdivisionProbe

noncomputable section

variable {M : Type*} [AddCommGroup M] [Module ℚ M]

/-- Infinite control-row presentation.  Degree `n` observes only its first
`n + 1` entries. -/
abbrev ControlRow (M : Type*) := ℕ → M

/-- Minimal exact homogeneous coordinate representation. -/
abbrev HomogeneousPoint (ambientDimension : ℕ) :=
  Fin (ambientDimension + 1) → ℚ

/-- Rational homogeneous control rows are an instance of the generic module
representation used below. -/
abbrev HomogeneousControlRow (ambientDimension : ℕ) :=
  ControlRow (HomogeneousPoint ambientDimension)

/-- One rational affine de Casteljau reduction step. -/
def step (t : ℚ) (p : ControlRow M) : ControlRow M :=
  fun i => (1 - t) • p i + t • p (i + 1)

/-- Recursive de Casteljau evaluation of a degree-`n` control row. -/
def eval : (n : ℕ) → ControlRow M → ℚ → M
  | 0, p, _ => p 0
  | n + 1, p, t => eval n (step t p) t

/-- Pointwise affine combination of two control rows. -/
def rowCombo (a : ℚ) (p q : ControlRow M) : ControlRow M :=
  fun i => (1 - a) • p i + a • q i

lemma step_rowCombo (t a : ℚ) (p q : ControlRow M) :
    step t (rowCombo a p q) = rowCombo a (step t p) (step t q) := by
  funext i
  simp only [step, rowCombo]
  module

lemma eval_rowCombo (n : ℕ) (t a : ℚ) (p q : ControlRow M) :
    eval n (rowCombo a p q) t =
      (1 - a) • eval n p t + a • eval n q t := by
  induction n generalizing p q with
  | zero => rfl
  | succ n ih =>
      rw [eval, step_rowCombo, ih]
      rfl

lemma step_eq_rowCombo_self_step (t u : ℚ) (p : ControlRow M) :
    step (t * u) p = rowCombo t p (step u p) := by
  funext i
  simp only [step, rowCombo]
  module

/-- Left subdivision controls: the first point at each level of the de
Casteljau triangle. -/
def splitLeft (p : ControlRow M) (u : ℚ) : ControlRow M :=
  fun i => eval i p u

lemma step_splitLeft (t u : ℚ) (p : ControlRow M) :
    step t (splitLeft p u) = splitLeft (step (t * u) p) u := by
  funext i
  simp only [step, splitLeft]
  rw [show eval (i + 1) p u = eval i (step u p) u by rfl]
  rw [← eval_rowCombo]
  rw [← step_eq_rowCombo_self_step]

/-- Recursive form of the left subdivision identity, with the product in the
order naturally produced by `step_splitLeft`. -/
theorem eval_split_left_mul (n : ℕ) (p : ControlRow M) (u t : ℚ) :
    eval n (splitLeft p u) t = eval n p (t * u) := by
  induction n generalizing p with
  | zero => rfl
  | succ n ih =>
      rw [eval, step_splitLeft, ih]
      rfl

/-- Exact arbitrary-degree left subdivision identity.  The left control row
parameterizes the original curve on `[0, u]`. -/
theorem eval_split_left (n : ℕ) (p : ControlRow M) (u t : ℚ) :
    eval n (splitLeft p u) t = eval n p (u * t) := by
  simpa only [mul_comm] using eval_split_left_mul n p u t

/-- Degree-`n` evaluation depends only on control indices at most `n`. -/
lemma eval_congr_prefix (n : ℕ) (p q : ControlRow M) (t : ℚ)
    (h : ∀ i, i ≤ n → p i = q i) :
    eval n p t = eval n q t := by
  induction n generalizing p q with
  | zero => exact h 0 (by omega)
  | succ n ih =>
      rw [eval, eval]
      apply ih
      intro i hi
      simp only [step]
      rw [h i (by omega), h (i + 1) (by omega)]

/-- Right subdivision controls: the last point at every complementary level
of the degree-`n` de Casteljau triangle. -/
def splitRight (n : ℕ) (p : ControlRow M) (u : ℚ) : ControlRow M :=
  fun i => eval (n - i) (fun j => p (i + j)) u

lemma step_splitRight_prefix (n i : ℕ) (hi : i ≤ n)
    (t u : ℚ) (p : ControlRow M) :
    step t (splitRight (n + 1) p u) i =
      splitRight n (step (u + (1 - u) * t) p) u i := by
  simp only [step, splitRight]
  have hsub1 : n + 1 - i = (n - i) + 1 := by omega
  have hsub2 : n + 1 - (i + 1) = n - i := by omega
  rw [hsub1, hsub2]
  rw [show eval ((n - i) + 1) (fun j => p (i + j)) u =
      eval (n - i) (step u (fun j => p (i + j))) u by rfl]
  rw [← eval_rowCombo]
  apply eval_congr_prefix
  intro j hj
  simp only [rowCombo, step]
  have hidx : i + 1 + j = i + j + 1 := by omega
  rw [hidx]
  module

/-- Exact arbitrary-degree right subdivision identity.  The right control
row parameterizes the original curve on `[u, 1]`. -/
theorem eval_split_right (n : ℕ) (p : ControlRow M) (u t : ℚ) :
    eval n (splitRight n p u) t =
      eval n p (u + (1 - u) * t) := by
  induction n generalizing p with
  | zero => rfl
  | succ n ih =>
      rw [eval]
      calc
        eval n (step t (splitRight (n + 1) p u)) t =
            eval n (splitRight n (step (u + (1 - u) * t) p) u) t := by
          apply eval_congr_prefix
          intro i hi
          exact step_splitRight_prefix n i hi t u p
        _ = eval n (step (u + (1 - u) * t) p)
              (u + (1 - u) * t) :=
          ih (step (u + (1 - u) * t) p)
        _ = eval (n + 1) p (u + (1 - u) * t) := rfl

end


end Surface.BZ1.SubdivisionProbe

#print axioms Surface.BZ1.SubdivisionProbe.eval_split_left
#print axioms Surface.BZ1.SubdivisionProbe.eval_split_right
```
