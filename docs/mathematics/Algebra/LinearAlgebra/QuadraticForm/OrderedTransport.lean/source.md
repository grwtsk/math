# Complete source: GRWTSK.LinearAlgebra.QuadraticForm.OrderedTransport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da1306ddad6bb6e1ad7fa8dc0bd3734a0e2abda4` · SHA-256 `d82b7acfb1c883f683b9390594f4b57bdfd6a4e9bbf664b0511fc087722380eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-!
Research direction: grwtsk contributors.
Authored formalization of the supplied mathematical argument, with ChatGPT assistance.
Mathlib and inherited results retain their authorship and licenses.
Status: proof source prepared; a successful pinned Lean kernel replay is required.
This file neither assumes nor proves the unresolved all-depth arithmetic bound.
-/

noncomputable section
open scoped BigOperators
namespace GRWTSK.LinearAlgebra.QuadraticForm.OrderedTransport

/-- A local quadratic estimate. The complete form qOut is retained. -/
def Majorizes {X Y : Type*} (qIn : X → ℝ) (qOut : Y → ℝ)
    (V : X → Y) (gain : ℝ) : Prop := ∀ x, qOut (V x) ≤ gain*qIn x

theorem Majorizes.comp {X Y Z : Type*}
    {qX : X → ℝ} {qY : Y → ℝ} {qZ : Z → ℝ}
    {V : X → Y} {W : Y → Z} {a b : ℝ}
    (hV : Majorizes qX qY V a) (hW : Majorizes qY qZ W b) (hb : 0 ≤ b) :
    Majorizes qX qZ (W ∘ V) (b*a) := by
  intro x
  calc
    qZ (W (V x)) ≤ b*qY (V x) := hW (V x)
    _ ≤ b*(a*qX x) := mul_le_mul_of_nonneg_left (hV x) hb
    _ = (b*a)*qX x := by ring

/-- Spectator coordinates are summed, not restricted to pure tensors. -/
theorem Majorizes.spectator {X Y I : Type*} [Fintype I]
    {qX : X → ℝ} {qY : Y → ℝ} {V : X → Y} {a : ℝ}
    (hV : Majorizes qX qY V a) :
    Majorizes (fun x : I → X => ∑ i, qX (x i))
      (fun y : I → Y => ∑ i, qY (y i))
      (fun x i => V (x i)) a := by
  intro x
  calc
    ∑ i, qY (V (x i)) ≤ ∑ i, a*qX (x i) :=
      Finset.sum_le_sum (fun i _ => hV (x i))
    _ = a*∑ i, qX (x i) := by rw [Finset.mul_sum]

/-- A dependent ordered chain: intermediate domains and forms must match exactly. -/
inductive Chain : {X Y : Type*} → (X → ℝ) → (Y → ℝ) → (X → Y) → ℝ → Prop
  | identity {X : Type*} (q : X → ℝ) : Chain q q id 1
  | step {X Y Z : Type*} {qX : X → ℝ} {qY : Y → ℝ} {qZ : Z → ℝ}
      {V : X → Y} {W : Y → Z} {a b : ℝ}
      (previous : Chain qX qY V a) (localBound : Majorizes qY qZ W b)
      (nonnegative : 0 ≤ b) : Chain qX qZ (W ∘ V) (b*a)

theorem Chain.sound {X Y : Type*} {qX : X → ℝ} {qY : Y → ℝ}
    {V : X → Y} {a : ℝ} (h : Chain qX qY V a) : Majorizes qX qY V a := by
  induction h with
  | identity q => intro x; simp [Majorizes]
  | step previous localBound nonnegative ih => exact ih.comp localBound nonnegative

/-- Endpoint constants are retained; no intermediate condition-number product is introduced. -/
theorem endpoint_norm_bound {X Y : Type*} [Norm X] [Norm Y]
    {qX : X → ℝ} {qY : Y → ℝ} {V : X → Y} {g q₀ qL : ℝ}
    (h : Majorizes qX qY V g) (hX : ∀ x, qX x=q₀*‖x‖^2)
    (hY : ∀ y, qY y=qL*‖y‖^2) (hqL : 0 < qL) :
    ∀ x, ‖V x‖^2 ≤ (g*q₀/qL)*‖x‖^2 := by
  intro x
  have hb := h x
  rw [hX, hY] at hb
  rw [div_mul_eq_mul_div]
  apply (le_div_iff₀ hqL).2
  nlinarith

/-- A finite squared norm bound needs no numerical square root. -/
theorem squared_to_norm {u v B : ℝ} (hu : 0 ≤ u) (hv : 0 ≤ v)
    (hB : 0 ≤ B) (h : u^2 ≤ B^2*v^2) : u ≤ B*v := by
  nlinarith [mul_nonneg hB hv]

end GRWTSK.LinearAlgebra.QuadraticForm.OrderedTransport
```
