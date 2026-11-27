/-
Derived from OpenAI's `OAI.LinearAlgebra.SpectralBooks.QuotientCircuit`
at revision 3344da59991ed94f9ba711217b29c1d760badfa6, Apache-2.0.
Modified by grwtsk contributors to refine the scalar gate count.
SPDX-License-Identifier: Apache-2.0
-/
import OAI.LinearAlgebra.SpectralBooks.CircuitRankSpecialization

/-!
# Tensor rank and nonscalar product and quotient gates

The mixed-derivative method in OpenAI's `QuotientCircuit.lean` gives a common
rank-one family. A gate involving a scalar multiplication or scalar divisor
changes only the coefficients of that family. This refines the count along
the same rational program, with the same formal correctness predicate.
-/

namespace GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.MatrixNonscalarCircuitRank

open OAI.MatrixMultiplication.Arithmetic
open OAI.MatrixMultiplication.Foundation
open OAI.LinearAlgebra.SpectralBooks
open MvPolynomial
open scoped BigOperators Classical

noncomputable section

private abbrev Rat (F I : Type*) [Field F] := FractionRing (MvPolynomial I F)

/-- A rational register is scalar exactly when its value comes from a ground field constant. -/
def IsScalar {F I : Type*} [Field F] (v : Rat F I) : Prop :=
  ∃ c : F, v = algebraMap (MvPolynomial I F) (Rat F I) (C c)

/-- Charge a multiplication when both values are nonscalar, and a division
when its divisor is nonscalar. Constant divisors still require validity. -/
def nonscalarCount {F I : Type*} [Field F] : {r : ℕ} → RationalProgram F I r → ℕ
  | _, .nil => 0
  | _, .step p (.mul i j) =>
      if IsScalar (p.value i) ∨ IsScalar (p.value j) then nonscalarCount p
      else nonscalarCount p + 1
  | _, .step p _ => nonscalarCount p
  | _, .quot p _ j =>
      if IsScalar (p.value j) then nonscalarCount p else nonscalarCount p + 1

variable {F A B : Type*} [Field F]

private abbrev InputRat := Rat F (A ⊕ B)

private def Expanded {K : Type*} [Field K] {n : ℕ}
    (left : Fin n → A → K) (right : Fin n → B → K) (entry : A → B → K) : Prop :=
  ∃ weight : Fin n → K, ∀ x y, entry x y = ∑ t, left t x * right t y * weight t

private theorem expanded_zero {K : Type*} [Field K] {n : ℕ}
    (left : Fin n → A → K) (right : Fin n → B → K) : Expanded left right 0 :=
  ⟨0, by simp⟩

private theorem expanded_add {K : Type*} [Field K] {n : ℕ}
    {left : Fin n → A → K} {right : Fin n → B → K} {v w : A → B → K}
    (hv : Expanded left right v) (hw : Expanded left right w) : Expanded left right (v + w) := by
  obtain ⟨a, ha⟩ := hv
  obtain ⟨b, hb⟩ := hw
  exact ⟨a + b, by simp [Pi.add_apply, mul_add, Finset.sum_add_distrib, ha, hb]⟩

private theorem expanded_sub {K : Type*} [Field K] {n : ℕ}
    {left : Fin n → A → K} {right : Fin n → B → K} {v w : A → B → K}
    (hv : Expanded left right v) (hw : Expanded left right w) : Expanded left right (v - w) := by
  obtain ⟨a, ha⟩ := hv
  obtain ⟨b, hb⟩ := hw
  exact ⟨a - b, by simp [Pi.sub_apply, mul_sub, Finset.sum_sub_distrib, ha, hb]⟩

private theorem expanded_scale {K : Type*} [Field K] {n : ℕ}
    {left : Fin n → A → K} {right : Fin n → B → K} {v : A → B → K}
    (hv : Expanded left right v) (scale : K) : Expanded left right (fun x y => scale * v x y) := by
  obtain ⟨weight, he⟩ := hv
  refine ⟨fun t => scale * weight t, fun x y => ?_⟩
  change scale * v x y = ∑ t, left t x * right t y * (scale * weight t)
  rw [he, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro t _
  ring

private theorem expanded_extend {K : Type*} [Field K] {n : ℕ}
    {left : Fin n → A → K} {right : Fin n → B → K} {v : A → B → K}
    (hv : Expanded left right v) (a b : A → K) (c d : B → K) (s t : K) :
    Expanded (Fin.cons a (Fin.cons b left)) (Fin.cons c (Fin.cons d right))
      (fun x y => v x y + s * (a x * c y) + t * (b x * d y)) := by
  obtain ⟨weight, he⟩ := hv
  refine ⟨Fin.cons s (Fin.cons t weight), fun x y => ?_⟩
  simp only [Fin.sum_univ_succ, Fin.cons_zero, Fin.cons_succ, he]
  ring

private theorem expanded_weaken {K : Type*} [Field K] {n : ℕ}
    {left : Fin n → A → K} {right : Fin n → B → K} {v : A → B → K}
    (hv : Expanded left right v) (a b : A → K) (c d : B → K) :
    Expanded (Fin.cons a (Fin.cons b left)) (Fin.cons c (Fin.cons d right)) v := by
  simpa using expanded_extend hv a b c d 0 0

private theorem partial_scalar {I : Type*} {p : Rat F I} (h : IsScalar p) (i : I) :
    ratPartial i p = 0 := by
  obtain ⟨c, rfl⟩ := h
  simp

private theorem mixed_scalar_left {p q : InputRat (F := F) (A := A) (B := B)}
    (hp : IsScalar p) : ratMixed (p * q) = fun x y => p * ratMixed q x y := by
  funext x y
  have hm : ratMixed p x y = 0 := by
    rw [ratMixed, partial_scalar hp, ratPartial_zero]
  simp [ratMixed_mul, hm, partial_scalar hp]

private theorem mixed_scalar_right {p q : InputRat (F := F) (A := A) (B := B)}
    (hq : IsScalar q) : ratMixed (p * q) = fun x y => q * ratMixed p x y := by
  rw [mul_comm p q, mixed_scalar_left hq]

private theorem mixed_scalar_div {p q : InputRat (F := F) (A := A) (B := B)}
    (hq : IsScalar q) (hq0 : q ≠ 0) : ratMixed (p / q) = fun x y => q⁻¹ * ratMixed p x y := by
  funext x y
  have h := congrFun (congrFun (mixed_scalar_right (p := p / q) hq) x) y
  rw [div_mul_cancel₀ _ hq0] at h
  calc
    ratMixed (p / q) x y = ratMixed p x y / q :=
      (eq_div_iff hq0).mpr (by simpa only [mul_comm] using h.symm)
    _ = q⁻¹ * ratMixed p x y := by rw [div_eq_mul_inv, mul_comm]

private theorem mixed_mul_expand {n : ℕ}
    {left : Fin n → A → InputRat (F := F) (A := A) (B := B)}
    {right : Fin n → B → InputRat (F := F) (A := A) (B := B)}
    {p q : InputRat (F := F) (A := A) (B := B)}
    (hp : Expanded left right (ratMixed p)) (hq : Expanded left right (ratMixed q)) :
    Expanded (Fin.cons (fun x => ratPartial (.inl x) p) (Fin.cons (fun x => ratPartial (.inl x) q) left))
      (Fin.cons (fun y => ratPartial (.inr y) q) (Fin.cons (fun y => ratPartial (.inr y) p) right))
      (ratMixed (p * q)) := by
  have h := expanded_extend (expanded_add (expanded_scale hp q) (expanded_scale hq p))
    (fun x => ratPartial (.inl x) p) (fun x => ratPartial (.inl x) q)
    (fun y => ratPartial (.inr y) q) (fun y => ratPartial (.inr y) p) 1 1
  convert h using 1
  funext x y
  simp [ratMixed_mul]

private theorem mixed_div_expand {n : ℕ}
    {left : Fin n → A → InputRat (F := F) (A := A) (B := B)}
    {right : Fin n → B → InputRat (F := F) (A := A) (B := B)}
    {p q : InputRat (F := F) (A := A) (B := B)}
    (hp : Expanded left right (ratMixed p)) (hq : Expanded left right (ratMixed q)) (hn : q ≠ 0) :
    Expanded (Fin.cons (fun x => ratPartial (.inl x) (p / q)) (Fin.cons (fun x => ratPartial (.inl x) q) left))
      (Fin.cons (fun y => ratPartial (.inr y) q) (Fin.cons (fun y => ratPartial (.inr y) (p / q)) right))
      (ratMixed (p / q)) := by
  have h := expanded_extend (expanded_sub (expanded_scale hp q⁻¹) (expanded_scale hq (q⁻¹ * (p / q))))
    (fun x => ratPartial (.inl x) (p / q)) (fun x => ratPartial (.inl x) q)
    (fun y => ratPartial (.inr y) q) (fun y => ratPartial (.inr y) (p / q)) (-q⁻¹) (-q⁻¹)
  convert h using 1
  funext x y
  have he := ratMixed_mul (p / q) q x y
  rw [div_mul_cancel₀ _ hn] at he
  simp only [Pi.sub_apply]
  rw [he]
  field_simp [hn]
  ring

private def RegistersExpanded {r : ℕ} (p : RationalProgram F (A ⊕ B) r) (n : ℕ) : Prop :=
    ∃ (left : Fin n → A → InputRat (F := F) (A := A) (B := B))
      (right : Fin n → B → InputRat (F := F) (A := A) (B := B)),
      ∀ i, Expanded left right (ratMixed (p.value i))

private theorem register_expansions {r : ℕ} (p : RationalProgram F (A ⊕ B) r) (valid : p.Valid) :
    RegistersExpanded p (2 * nonscalarCount p) := by
  induction p with
  | nil => exact ⟨Fin.elim0, Fin.elim0, fun i => i.elim0⟩
  | step p g ih =>
    obtain ⟨left, right, hex⟩ := ih valid
    cases g with
    | constant c =>
      simp only [nonscalarCount]
      refine ⟨left, right, Fin.cases ?_ hex⟩
      simpa [Expanded, RationalProgram.value, RationalProgram.gateValue] using expanded_zero left right
    | input i =>
      simp only [nonscalarCount]
      refine ⟨left, right, Fin.cases ?_ hex⟩
      simpa [Expanded, RationalProgram.value, RationalProgram.gateValue] using expanded_zero left right
    | add i j =>
      simp only [nonscalarCount]
      refine ⟨left, right, Fin.cases ?_ hex⟩
      simpa [Expanded, RationalProgram.value, RationalProgram.gateValue] using expanded_add (hex i) (hex j)
    | sub i j =>
      simp only [nonscalarCount]
      refine ⟨left, right, Fin.cases ?_ hex⟩
      simpa [Expanded, RationalProgram.value, RationalProgram.gateValue] using expanded_sub (hex i) (hex j)
    | mul i j =>
      by_cases hs : IsScalar (p.value i) ∨ IsScalar (p.value j)
      · have hc : nonscalarCount (.step p (.mul i j)) = nonscalarCount p := by
          simp [nonscalarCount, hs]
        rw [hc]
        refine ⟨left, right, Fin.cases ?_ hex⟩
        change Expanded left right (ratMixed (p.value i * p.value j))
        rcases hs with hi | hj
        · rw [mixed_scalar_left hi]
          exact expanded_scale (hex j) (p.value i)
        · rw [mixed_scalar_right hj]
          exact expanded_scale (hex i) (p.value j)
      · have hc : nonscalarCount (.step p (.mul i j)) = nonscalarCount p + 1 := by
          simp [nonscalarCount, hs]
        rw [hc, Nat.mul_add, Nat.mul_one]
        refine ⟨_, _, Fin.cases (mixed_mul_expand (hex i) (hex j)) (fun k => expanded_weaken (hex k) _ _ _ _)⟩
  | quot p i j ih =>
    obtain ⟨left, right, hex⟩ := ih valid.1
    by_cases hs : IsScalar (p.value j)
    · have hc : nonscalarCount (.quot p i j) = nonscalarCount p := by
        simp [nonscalarCount, hs]
      rw [hc]
      refine ⟨left, right, Fin.cases ?_ hex⟩
      change Expanded left right (ratMixed (p.value i / p.value j))
      rw [mixed_scalar_div hs valid.2]
      exact expanded_scale (hex i) (p.value j)⁻¹
    · have hc : nonscalarCount (.quot p i j) = nonscalarCount p + 1 := by
        simp [nonscalarCount, hs]
      rw [hc, Nat.mul_add, Nat.mul_one]
      refine ⟨_, _, Fin.cases (mixed_div_expand (hex i) (hex j) valid.2) (fun k => expanded_weaken (hex k) _ _ _ _)⟩

/-- The actual matrix multiplication tensor over the rational function field has
rank bounded by twice the nonscalar gate count. -/
theorem matrixTensor_rank_le_twice_nonscalarCount {a b c : ℕ}
    {P : RationalMatrixAlgorithm F a b c} (h : P.Correct) :
    tensorRank (matrixTensor (Rat F (MatrixInput a b c)) b c a) ≤ 2 * nonscalarCount P.program := by
  classical
  obtain ⟨left, right, hex⟩ := register_expansions P.program h.1
  choose weight hweight using hex
  apply tensorRank_le_of_rankAtMost
  refine ⟨left, right, fun t z => weight (P.output z.2 z.1) t, ?_⟩
  funext x y z
  have hentry := hweight (P.output z.2 z.1) x y
  rw [h.2, map_sum] at hentry
  simp only [map_mul, ratMixed_matrixEntry] at hentry
  exact hentry

/-- The algebraic-closure rank uses the same nonscalar count, also for finite ground fields. -/
theorem algebraicClosure_rank_le_twice_nonscalarCount {a b c : ℕ}
    {P : RationalMatrixAlgorithm F a b c} (h : P.Correct) :
    tensorRank (matrixTensor (AlgebraicClosure F) b c a) ≤ 2 * nonscalarCount P.program :=
  (matrix_tensorRank_algebraicClosure_le_fractionRing F (MatrixInput a b c) b c a).trans
    (matrixTensor_rank_le_twice_nonscalarCount h)

end
end GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.MatrixNonscalarCircuitRank
