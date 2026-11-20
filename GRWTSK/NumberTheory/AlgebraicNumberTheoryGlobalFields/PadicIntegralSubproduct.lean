/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.NumberTheory.Padics.Complex
import Mathlib.RingTheory.Valuation.Integral
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-!
# Integral factors and injectively selected p-adic products

The actual norm on Mathlib's `PadicAlgCl p` sends every integral element over
the integers to the closed unit ball. Deleting factors in that ball can only
increase the norm of a finite product. Injective class maps preserve the
multiplicity needed to apply this observation. Field equivalences transport
integrality and the product identity; no isometry with the complex norm is
assumed. See the adjacent source record for exact provenance and scope.
-/

open scoped BigOperators NNReal

namespace GRWTSK.NumberTheory.PadicIntegralSubproduct

/-- Integral elements lie in the integer ring of the actual p-adic valuation. -/
theorem norm_le_one_of_isIntegral_int (p : ℕ) [Fact p.Prime]
    (x : PadicAlgCl p) (hx : IsIntegral ℤ x) : ‖x‖ ≤ 1 := by
  let v : Valuation (PadicAlgCl p) ℝ≥0 := Valued.v
  have hi : IsIntegral v.integer x := hx.tower_top
  have hv : v x ≤ 1 := (Valuation.integer.integers v).isIntegral_iff_v_le_one.mp hi
  change ‖x‖₊ ≤ 1 at hv
  exact_mod_cast hv

/-- The generic finite-product inequality only needs each factor's norm at
most one and an injective selection, not nonvanishing. -/
theorem norm_prod_le_prod_of_injective {K I J : Type*} [NormedField K]
    [Fintype I] [Fintype J] (f : I → K) (hf : ∀ i, ‖f i‖ ≤ 1)
    (g : J → I) (hg : Function.Injective g) :
    ‖∏ i, f i‖ ≤ ∏ j, ‖f (g j)‖ := by
  classical
  let s : Finset I := Finset.univ.map ⟨g, hg⟩
  have heq : (∏ i ∈ s, ‖f i‖) = ∏ j, ‖f (g j)‖ := by
    exact Finset.prod_map _ _ _
  rw [norm_prod]
  calc
    ∏ i, ‖f i‖ ≤ ∏ i ∈ s, ‖f i‖ :=
      Finset.prod_le_prod_of_subset_of_le_one₀ (Finset.subset_univ s)
        (fun i _ => norm_nonneg (f i)) (fun i _ _ => hf i)
    _ = _ := heq

/-- Transport integral complex factors to the p-adic field and select an
injectively indexed subfamily. An abstract field map is sufficient. -/
theorem adicNorm_prod_le_prod_of_injective (p : ℕ) [Fact p.Prime]
    {I J : Type*} [Fintype I] [Fintype J] (ι : ℂ →+* PadicAlgCl p)
    (f : I → ℂ) (hint : ∀ i, IsIntegral ℤ (f i))
    (g : J → I) (hg : Function.Injective g) :
    ‖ι (∏ i, f i)‖ ≤ ∏ j, ‖ι (f (g j))‖ := by
  rw [map_prod]
  apply norm_prod_le_prod_of_injective _ _ g hg
  intro i
  exact norm_le_one_of_isIntegral_int p _ ((hint i).map ι.toIntAlgHom)

/-- Exact finite class-selection counterpart of the submitted nested
product inequality. Injectivity is required separately in each orbit. -/
theorem adicNorm_prod_le_prod_of_injective_classes (p : ℕ) [Fact p.Prime]
    (ι : PadicAlgCl p ≃+* ℂ) (O S R : Type*) [Fintype O] [Fintype S]
    (f : O → S → ℂ) (hint : ∀ o s, IsIntegral ℤ (f o s))
    (X : O → Finset R) (cl : ∀ o, ↥(X o) → S)
    (hcl : ∀ o, Function.Injective (cl o)) :
    ‖ι.symm (∏ o, ∏ s, f o s)‖ ≤
      ∏ o, ∏ r : ↥(X o), ‖ι.symm (f o (cl o r))‖ := by
  rw [map_prod, norm_prod]
  apply Finset.prod_le_prod₀ (fun o _ => norm_nonneg _)
  intro o _
  exact adicNorm_prod_le_prod_of_injective p ι.symm.toRingHom
    (f o) (hint o) (cl o) (hcl o)

/-- Exact cancellation of a natural base prime to p in the p-adic norm. -/
theorem norm_natCast_eq_one_of_not_dvd (p q : ℕ) [Fact p.Prime]
    (hq : ¬ p ∣ q) : ‖(q : PadicAlgCl p)‖ = 1 := by
  rw [← map_natCast (algebraMap ℚ_[p] (PadicAlgCl p)), PadicAlgCl.norm_extends]
  change ‖((q : ℚ) : ℚ_[p])‖ = 1
  rw [Padic.eq_padicNorm]
  exact_mod_cast (padicNorm.nat_eq_one_iff q).mpr hq

/-- Removing a nonnegative integer-power scale gives a norm inequality even
when p divides its base; equality requires an additional unit hypothesis. -/
theorem norm_natCast_pow_mul_le (p q e : ℕ) [Fact p.Prime] (x : PadicAlgCl p) :
    ‖(q : PadicAlgCl p) ^ e * x‖ ≤ ‖x‖ := by
  have hq : ‖(q : PadicAlgCl p)‖ ≤ 1 :=
    norm_le_one_of_isIntegral_int p _ (by
      simpa using (isIntegral_algebraMap (R := ℤ) (A := PadicAlgCl p) (x := (q : ℤ))))
  rw [norm_mul, norm_pow]
  exact mul_le_of_le_one_left (norm_nonneg x) (pow_le_one₀ (norm_nonneg _) hq)

end GRWTSK.NumberTheory.PadicIntegralSubproduct
