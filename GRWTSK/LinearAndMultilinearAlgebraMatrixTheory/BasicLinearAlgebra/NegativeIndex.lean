/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Data.ENat.Lattice
import Mathlib.LinearAlgebra.Pi
import Mathlib.LinearAlgebra.Prod

/-!
# Finite negative frames and the negative index

A negative frame is an injective linear parametrization of a finite-dimensional
strictly negative subspace. The scalar field is explicit: complex dimensions
are not replaced by real dimensions. The index takes values in `ENat`; no
finite-global-index hypothesis is hidden in its definition.

The order and transport lemmas apply to any real-valued function. The
zero-index criterion additionally assumes its value at zero and the precise
norm-square homogeneity of a Hermitian quadratic form. This does not assert
that an arbitrary function is a form.

Consumer: the algebraic negative-index and Schur reductions in RP-OC-03,
section 19.4 of Typed Mathematical Architecture and
Zero-Distribution-Dependent Continuity, edition 1.0 (2026-11-10), pp. 41--42.
These are elementary linear-algebra consequences, not a new Weil criterion.
The arithmetic explicit formula, completion, compactness, spectral flow and
all-window sign are not proved or assumed as axioms here. See issue #1808.

Manually authored formal source candidates. Elaboration, fresh kernel replay,
transitive axiom audit and independent mathematical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.LinearAlgebra.NegativeIndex

section Algebraic

variable {𝕜 V W : Type*} [Field 𝕜]
  [AddCommGroup V] [Module 𝕜 V] [AddCommGroup W] [Module 𝕜 W]

/-- An actual `n`-dimensional negative subspace, parametrized over `𝕜`. -/
def HasNegativeFrame (Q : V → ℝ) (n : ℕ) : Prop :=
  ∃ L : (Fin n → 𝕜) →ₗ[𝕜] V,
    Function.Injective L ∧ ∀ x, x ≠ 0 → Q (L x) < 0

/-- Supremum of finite negative dimensions; unbounded index is `⊤`, not zero. -/
def negativeIndex (Q : V → ℝ) : ℕ∞ :=
  ⨆ n : ℕ, ⨆ (_ : HasNegativeFrame (𝕜 := 𝕜) Q n), (n : ℕ∞)

theorem hasNegativeFrame_zero (Q : V → ℝ) :
    HasNegativeFrame (𝕜 := 𝕜) Q 0 := by
  refine ⟨0, ?_, ?_⟩
  · intro x y _
    exact Subsingleton.elim x y
  · intro x hx
    exact (hx (Subsingleton.elim x 0)).elim

theorem natCast_le_negativeIndex {Q : V → ℝ} {n : ℕ}
    (h : HasNegativeFrame (𝕜 := 𝕜) Q n) :
    (n : ℕ∞) ≤ negativeIndex (𝕜 := 𝕜) Q := by
  exact le_iSup_of_le n (le_iSup_of_le h le_rfl)

/-- A lowering comparison transports negative directions along an injection. -/
theorem hasNegativeFrame_map {Q : V → ℝ} {R : W → ℝ} {n : ℕ}
    (F : V →ₗ[𝕜] W) (hF : Function.Injective F)
    (hreturn : ∀ x, R (F x) ≤ Q x)
    (h : HasNegativeFrame (𝕜 := 𝕜) Q n) :
    HasNegativeFrame (𝕜 := 𝕜) R n := by
  rcases h with ⟨L, hL, hneg⟩
  refine ⟨F.comp L, hF.comp hL, ?_⟩
  intro x hx
  exact lt_of_le_of_lt (hreturn (L x)) (hneg x hx)

theorem negativeIndex_le_of_frames {Q : V → ℝ} {R : W → ℝ}
    (h : ∀ n, HasNegativeFrame (𝕜 := 𝕜) Q n →
      HasNegativeFrame (𝕜 := 𝕜) R n) :
    negativeIndex (𝕜 := 𝕜) Q ≤ negativeIndex (𝕜 := 𝕜) R := by
  unfold negativeIndex
  refine iSup_le fun n => iSup_le fun hn => ?_
  exact le_iSup_of_le n (le_iSup_of_le (h n hn) le_rfl)

theorem negativeIndex_le_of_map {Q : V → ℝ} {R : W → ℝ}
    (F : V →ₗ[𝕜] W) (hF : Function.Injective F)
    (hreturn : ∀ x, R (F x) ≤ Q x) :
    negativeIndex (𝕜 := 𝕜) Q ≤ negativeIndex (𝕜 := 𝕜) R := by
  exact negativeIndex_le_of_frames fun _ h =>
    hasNegativeFrame_map F hF hreturn h

/-- Lowering a form can only increase its negative index. -/
theorem negativeIndex_antitone {Q R : V → ℝ} (h : ∀ x, R x ≤ Q x) :
    negativeIndex (𝕜 := 𝕜) Q ≤ negativeIndex (𝕜 := 𝕜) R := by
  exact negativeIndex_le_of_map (LinearMap.id : V →ₗ[𝕜] V)
    (fun _ _ hxy => hxy) h

/-- Exact linear congruence preserves the scalar-field negative index. -/
theorem negativeIndex_congr {Q : V → ℝ} {R : W → ℝ}
    (e : V ≃ₗ[𝕜] W) (hreturn : ∀ x, R (e x) = Q x) :
    negativeIndex (𝕜 := 𝕜) Q = negativeIndex (𝕜 := 𝕜) R := by
  apply le_antisymm
  · exact negativeIndex_le_of_map e.toLinearMap e.injective
      (fun x => (hreturn x).le)
  · apply negativeIndex_le_of_map e.symm.toLinearMap e.symm.injective
    intro y
    simpa using (hreturn (e.symm y)).symm.le

theorem negativeIndex_restrict_le (Q : V → ℝ) (S : Submodule 𝕜 V) :
    negativeIndex (𝕜 := 𝕜) (fun x : S => Q (x : V)) ≤
      negativeIndex (𝕜 := 𝕜) Q := by
  exact negativeIndex_le_of_map S.subtype
    (fun _ _ hxy => Subtype.ext hxy) (fun _ => le_rfl)

/-- Nested windows must restrict the same form, not independent finite models. -/
theorem negativeIndex_restrict_mono (Q : V → ℝ)
    {S T : Submodule 𝕜 V} (hST : S ≤ T) :
    negativeIndex (𝕜 := 𝕜) (fun x : S => Q (x : V)) ≤
      negativeIndex (𝕜 := 𝕜) (fun x : T => Q (x : V)) := by
  apply negativeIndex_le_of_map (Submodule.inclusion hST)
  · intro x y hxy
    apply Subtype.ext
    exact congrArg (fun z : T => (z : V)) hxy
  · intro x
    exact le_rfl

theorem negativeIndex_eq_zero_of_nonneg {Q : V → ℝ}
    (hQ : ∀ x, 0 ≤ Q x) : negativeIndex (𝕜 := 𝕜) Q = 0 := by
  apply le_antisymm _ (zero_le _)
  unfold negativeIndex
  refine iSup_le fun n => iSup_le fun hn => ?_
  cases n with
  | zero => simp
  | succ n =>
    rcases hn with ⟨L, _, hneg⟩
    let x : Fin (n + 1) → 𝕜 := fun _ => 1
    have hx : x ≠ 0 := by
      intro heq
      have h := congrFun heq ⟨0, Nat.zero_lt_succ n⟩
      exact one_ne_zero h
    exact ((not_lt_of_ge (hQ (L x))) (hneg x hx)).elim

/-- Index zero is inherited by every actual subspace. -/
theorem negativeIndex_restrict_eq_zero {Q : V → ℝ}
    (hQ : negativeIndex (𝕜 := 𝕜) Q = 0) (S : Submodule 𝕜 V) :
    negativeIndex (𝕜 := 𝕜) (fun x : S => Q (x : V)) = 0 := by
  apply le_antisymm _ (zero_le _)
  simpa [hQ] using negativeIndex_restrict_le Q S

end Algebraic

section Homogeneous

variable {𝕜 V : Type*} [NormedField 𝕜]
  [AddCommGroup V] [Module 𝕜 V]

/-- A negative vector supplies a negative line under the actual homogeneity law. -/
theorem hasNegativeFrame_one_of_neg {Q : V → ℝ}
    (hzero : Q 0 = 0)
    (hsmul : ∀ (c : 𝕜) x, Q (c • x) = ‖c‖ ^ 2 * Q x)
    {v : V} (hv : Q v < 0) : HasNegativeFrame (𝕜 := 𝕜) Q 1 := by
  let L : (Fin 1 → 𝕜) →ₗ[𝕜] V :=
    { toFun := fun x => x 0 • v
      map_add' := by
        intro x y
        exact add_smul (x 0) (y 0) v
      map_smul' := by
        intro c x
        exact mul_smul c (x 0) v }
  have hneg : ∀ x, x ≠ 0 → Q (L x) < 0 := by
    intro x hx
    have hx0 : x 0 ≠ 0 := by
      intro heq
      apply hx
      funext i
      have hi : i = (0 : Fin 1) := Subsingleton.elim _ _
      change x i = 0
      rw [hi]
      exact heq
    change Q (x 0 • v) < 0
    rw [hsmul]
    exact mul_neg_of_pos_of_neg (sq_pos_of_pos (norm_pos_iff.mpr hx0)) hv
  have hkernel : ∀ x, L x = 0 → x = 0 := by
    intro x hx
    by_contra hne
    have h := hneg x hne
    rw [hx, hzero] at h
    exact (lt_irrefl (0 : ℝ)) h
  refine ⟨L, ?_, hneg⟩
  intro x y hxy
  apply sub_eq_zero.mp
  apply hkernel (x - y)
  rw [map_sub, hxy, sub_self]

/-- Zero negative index is nonnegativity, not nondegeneracy or strict positivity. -/
theorem negativeIndex_eq_zero_iff {Q : V → ℝ}
    (hzero : Q 0 = 0)
    (hsmul : ∀ (c : 𝕜) x, Q (c • x) = ‖c‖ ^ 2 * Q x) :
    negativeIndex (𝕜 := 𝕜) Q = 0 ↔ ∀ x, 0 ≤ Q x := by
  constructor
  · intro hindex x
    by_contra hx
    have hframe := hasNegativeFrame_one_of_neg hzero hsmul (lt_of_not_ge hx)
    have hle : (1 : ℕ∞) ≤ 0 := by
      simpa [hindex] using natCast_le_negativeIndex hframe
    exact one_ne_zero (le_antisymm hle (zero_le _))
  · exact negativeIndex_eq_zero_of_nonneg

/-- An exhaustive family of genuine test subspaces suffices for index zero.
This does not replace exhaustivity by finitely many sampled windows. -/
theorem forall_restriction_index_zero_iff {ι : Type*} {Q : V → ℝ}
    (hzero : Q 0 = 0)
    (hsmul : ∀ (c : 𝕜) x, Q (c • x) = ‖c‖ ^ 2 * Q x)
    (S : ι → Submodule 𝕜 V) (hcover : ∀ x, ∃ i, x ∈ S i) :
    (∀ i, negativeIndex (𝕜 := 𝕜) (fun x : S i => Q (x : V)) = 0) ↔
      negativeIndex (𝕜 := 𝕜) Q = 0 := by
  constructor
  · intro hlocal
    apply (negativeIndex_eq_zero_iff hzero hsmul).2
    intro x
    obtain ⟨i, hxi⟩ := hcover x
    have hlocalzero : (fun y : S i => Q (y : V)) 0 = 0 := hzero
    have hlocalsmul : ∀ (c : 𝕜) (y : S i),
        Q ((c • y : S i) : V) = ‖c‖ ^ 2 * Q (y : V) := by
      intro c y
      exact hsmul c (y : V)
    exact ((negativeIndex_eq_zero_iff hlocalzero hlocalsmul).1
      (hlocal i)) ⟨x, hxi⟩
  · intro hglobal i
    exact negativeIndex_restrict_eq_zero hglobal (S i)

end Homogeneous

end GRWTSK.LinearAlgebra.NegativeIndex
