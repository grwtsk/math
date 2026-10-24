import Mathlib.LinearAlgebra.Span.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Fin.VecNotation
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Tactic

/-!
# Concrete four-prime quotient map and exact interpolation degree budget

Written direction 2026-10-09: grwtsk contributors. Local map and budget proofs:
OpenAI Codex. Reilly's external Lemma3.interpolation at commit
3a360169db79580334a63ca053d2a9257e9b7cde retains its source identity.
This file proves the concrete onto/kernel obligations without copying that
external proof. Rational independence and its interpolation replay are
separate obligations; no coefficient norm or full-integer coverage is claimed.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.PrimeLogInterpolationMap
open scoped BigOperators
noncomputable section

/-- The prime logs in this module, with the following exact parameterization.

def primeLogs : Fin 4 → ℂ := ![(Real.log 2 : ℝ), (Real.log 3 : ℝ), (Real.log 5 : ℝ), (Real.log
7 : ℝ)]
-/
def primeLogs : Fin 4 → ℂ :=
  ![(Real.log 2 : ℝ), (Real.log 3 : ℝ), (Real.log 5 : ℝ), (Real.log 7 : ℝ)]

/-- The quotient map in this module, with the following exact parameterization.

def quotientMap (c : Fin 4 → ℂ) : (Fin 4 → ℂ) →ₗ[ℂ] (Fin 3 → ℂ) where toFun x j := x j.succ -
c j.succ / c 0 * x 0 map_add' x y  (implemented by the following proof).
-/
def quotientMap (c : Fin 4 → ℂ) : (Fin 4 → ℂ) →ₗ[ℂ] (Fin 3 → ℂ) where
  toFun x j := x j.succ - c j.succ / c 0 * x 0
  map_add' x y := by ext j; simp; ring
  map_smul' a x := by ext j; simp; ring

/-- The prime map in this module, with the following exact parameterization.

def primeMap : (Fin 4 → ℂ) →ₗ[ℂ] (Fin 3 → ℂ) := quotientMap primeLogs
-/
def primeMap : (Fin 4 → ℂ) →ₗ[ℂ] (Fin 3 → ℂ) := quotientMap primeLogs

theorem quotientMap_surjective (c : Fin 4 → ℂ) : Function.Surjective (quotientMap c) := by
  intro y
  refine ⟨Fin.cons 0 y, ?_⟩
  ext j
  simp [quotientMap]

theorem quotientMap_kernel (c : Fin 4 → ℂ) (hc : c 0 ≠ 0) :
    LinearMap.ker (quotientMap c) = Submodule.span ℂ {c} := by
  ext x
  rw [LinearMap.mem_ker, Submodule.mem_span_singleton]
  constructor
  · intro hx
    refine ⟨x 0 / c 0, ?_⟩
    ext i
    refine Fin.cases ?_ (fun j => ?_) i
    · simp [hc]
    · have hj := congrFun hx j
      simp only [quotientMap, LinearMap.coe_mk, AddHom.coe_mk, Pi.zero_apply] at hj
      simp only [Pi.smul_apply, smul_eq_mul]
      field_simp at hj ⊢
      linear_combination -hj
  · rintro ⟨a, rfl⟩
    ext j
    simp [quotientMap, hc]

theorem prime_log_two_nonzero : primeLogs 0 ≠ 0 := by
  change (Real.log (2 : ℝ) : ℂ) ≠ 0
  exact_mod_cast (ne_of_gt (Real.log_pos (by norm_num : (1 : ℝ) < 2)))

theorem primeMap_surjective : Function.Surjective primeMap := quotientMap_surjective _

theorem primeMap_kernel : LinearMap.ker primeMap = Submodule.span ℂ {primeLogs} :=
  quotientMap_kernel _ prime_log_two_nonzero

/-- The degree budget in this module, with the following exact parameterization.

def degreeBudget (N : ℕ) : ℤ := 3 * ((N : ℤ) - 1) + (4 * (N : ℤ) - 3) ^ 2
-/
def degreeBudget (N : ℕ) : ℤ := 3 * ((N : ℤ) - 1) + (4 * (N : ℤ) - 3) ^ 2

theorem degreeBudget_lower (N : ℕ) : 3 * ((N : ℤ) - 1) ≤ degreeBudget N := by
  unfold degreeBudget
  nlinarith [sq_nonneg (4 * (N : ℤ) - 3)]

theorem degreeBudget_exact (N : ℕ) :
    ∏ _j : Fin 3, (degreeBudget N - 3 * ((N : ℤ) - 1) + 1) =
      ((4 * (N : ℤ) - 3) ^ 2 + 1) ^ 3 := by
  simp [degreeBudget]

theorem degreeBudget_strict {N : ℕ} (hN : 1 ≤ N) :
    (4 * (N : ℤ) - 3) ^ 4 <
      ∏ _j : Fin 3, (degreeBudget N - 3 * ((N : ℤ) - 1) + 1) := by
  rw [degreeBudget_exact]
  have hn : (1 : ℤ) ≤ N := by exact_mod_cast hN
  have hs : 1 ≤ (4 * (N : ℤ) - 3) ^ 2 := by nlinarith
  have hsq : (4 * (N : ℤ) - 3) ^ 4 = ((4 * (N : ℤ) - 3) ^ 2) ^ 2 := by ring
  rw [hsq]
  nlinarith [sq_nonneg ((4 * (N : ℤ) - 3) ^ 2 - 1)]

theorem scaling_example_budget : (4 * (2 : ℤ) - 3) ^ 4 <
    ∏ _j : Fin 3, ((11 : ℤ) - 3 * (2 - 1) + 1) := by norm_num

theorem nonzero_scaling_preserves_kernel (A : (Fin 4 → ℂ) →ₗ[ℂ] (Fin 3 → ℂ))
    {ε : ℂ} (hε : ε ≠ 0) : LinearMap.ker (ε • A) = LinearMap.ker A := by
  ext x
  simp [LinearMap.mem_ker, hε]

theorem nonzero_scaling_preserves_surjectivity
    (A : (Fin 4 → ℂ) →ₗ[ℂ] (Fin 3 → ℂ)) (hA : Function.Surjective A)
    {ε : ℂ} (hε : ε ≠ 0) : Function.Surjective (ε • A) := by
  intro y
  obtain ⟨x, hx⟩ := hA (ε⁻¹ • y)
  refine ⟨x, ?_⟩
  simp [hx, smul_smul, hε]

end
end GRWTSK.RiemannHypothesis.Conversation.PrimeLogInterpolationMap
