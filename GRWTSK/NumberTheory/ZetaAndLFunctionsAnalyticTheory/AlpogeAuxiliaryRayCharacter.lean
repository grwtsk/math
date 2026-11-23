import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise
import Mathlib.FieldTheory.Finite.Basic
import Mathlib.GroupTheory.SpecificGroups.Cyclic
import Mathlib.Tactic.Abel

/-!
# Extending a residue character across the ideal class group

The first theorem is used with the group of principal ideals away from the
specified places. Its invariant-factor relations are killed by choosing the
auxiliary residue field as in the accompanying manuscript.
-/

namespace GRWTSK.NumberTheory.AlpogeAuxiliaryRayCharacter

open scoped BigOperators

/-- At every split residue prime with the required congruence, a character
onto the prescribed cyclic group exists before passing to the ray group. -/
theorem primitive_residue_character {p n : ℕ} [Fact p.Prime] (h : n ∣ p - 1) :
    ∃ f : (ZMod p)ˣ →* Multiplicative (ZMod n), Function.Surjective f := by
  let e := (zmodCyclicMulEquiv (G := (ZMod p)ˣ) inferInstance).symm
  have hd : n ∣ Nat.card (ZMod p)ˣ := by rwa [Nat.card_eq_fintype_card, ZMod.card_units]
  let r := ZMod.castHom hd (ZMod n)
  let f : (ZMod p)ˣ →* Multiplicative (ZMod n) :=
    (AddMonoidHom.toMultiplicative r.toAddMonoidHom).comp e.toMonoidHom
  refine ⟨f, ?_⟩
  intro y
  obtain ⟨x, hx⟩ := ZMod.castHom_surjective hd y.toAdd
  exact ⟨e.symm (Multiplicative.ofAdd x), by
    change Multiplicative.ofAdd (r ((e (e.symm (Multiplicative.ofAdd x))).toAdd)) = y
    simpa [r] using congrArg Multiplicative.ofAdd hx⟩

/-- A character of the principal subgroup extends, killing the chosen class
lifts, when it kills the principal relations of invariant-factor generators. -/
theorem extend_across_class_generators {P G A ι : Type*}
    [AddCommGroup P] [AddCommGroup G] [AddCommGroup A] [Fintype ι]
    (incl : P →+ G) (hinj : Function.Injective incl) (b : ι → G)
    (d : ι → ℤ) (a : ι → P) (hrel : ∀ j, incl (a j) = d j • b j)
    (hgen : ∀ g, ∃ x : P, ∃ z : ι → ℤ, g = incl x + ∑ j, z j • b j)
    (hclass : ∀ z : ι → ℤ, (∑ j, z j • b j) ∈ incl.range → ∀ j, d j ∣ z j)
    (χ : P →+ A) (hkill : ∀ j, χ (a j) = 0) :
    ∃ θ : G →+ A, θ.comp incl = χ ∧ ∀ j, θ (b j) = 0 := by
  classical
  let lin (z : ι → ℤ) : G := ∑ j, z j • b j
  have ladd (u v : ι → ℤ) : lin (u + v) = lin u + lin v := by
    simp [lin, Pi.add_apply, add_smul, Finset.sum_add_distrib]
  have lsub (u v : ι → ℤ) : lin (u - v) = lin u - lin v := by
    simp [lin, Pi.sub_apply, sub_smul, Finset.sum_sub_distrib]
  have unique {x y : P} {u v : ι → ℤ}
      (h : incl x + lin u = incl y + lin v) : χ x = χ y := by
    have hdiff : lin (u - v) = incl (y - x) := by
      rw [lsub, map_sub]
      calc
        lin u - lin v = (incl x + lin u) - (incl x + lin v) := by abel
        _ = (incl y + lin v) - (incl x + lin v) := by rw [h]
        _ = incl y - incl x := by abel
    obtain ⟨k, hk⟩ := Classical.axiomOfChoice (hclass (u - v) ⟨y-x, hdiff.symm⟩)
    have he : incl (∑ j, k j • a j) = lin (u - v) := by
      simp only [lin, map_sum, map_zsmul, hrel, smul_smul, hk, mul_comm]
    have hyx := hinj (he.trans hdiff)
    have hval : χ (y - x) = 0 := by rw [← hyx]; simp [hkill]
    exact (sub_eq_zero.mp (by simpa only [map_sub] using hval)).symm
  choose rep coeff eqn using hgen
  change ∀ g, g = incl (rep g) + lin (coeff g) at eqn
  let θ : G →+ A :=
    { toFun := fun g => χ (rep g)
      map_zero' := by
        have h : incl (rep 0) + lin (coeff 0) = incl 0 + lin 0 := by
          rw [← eqn]; simp [lin]
        simpa using unique h
      map_add' := fun g h => by
        rw [← map_add]
        apply unique (u := coeff (g+h)) (v := coeff g + coeff h)
        rw [← eqn, map_add, ladd]
        calc g + h = (incl (rep g) + lin (coeff g)) + (incl (rep h) + lin (coeff h)) :=
               congrArg₂ (· + ·) (eqn g) (eqn h)
             _ = _ := by abel }
  refine ⟨θ, ?_, ?_⟩
  · ext x
    change χ (rep (incl x)) = χ x
    apply unique (u := coeff (incl x)) (v := 0)
    rw [← eqn]; simp [lin]
  · intro j
    change χ (rep (b j)) = 0
    rw [← map_zero χ]
    apply unique (u := coeff (b j)) (v := fun i => if i = j then 1 else 0)
    rw [← eqn]
    simp [lin, ite_smul]

/-- Antisymmetrization preserves the full character at a place where the
conjugate character is unramified. This does not divide by two. -/
theorem antisymmetrize {G A : Type*} [Group G] [CommGroup A]
    (c : G →* G) (hc : Function.Involutive c) (θ : G →* A) (I : Subgroup G)
    (hI : ∀ g ∈ I, θ (c g) = 1) :
    ∃ ψ : G →* A, (∀ g, ψ (c g) = (ψ g)⁻¹) ∧ (∀ g ∈ I, ψ g = θ g) ∧
      (∀ g, θ g = 1 → θ (c g) = 1 → ψ g = 1) := by
  refine ⟨θ / θ.comp c, ?_, ?_, ?_⟩
  · intro g
    simp [hc g]
  · intro g hg
    simp [hI g hg]
  · intro g hg hc'
    simp [hg, hc']

/-- Independent inertia in the kernel of another finite quotient realizes every
Frobenius coordinate vector while keeping that quotient trivial. -/
theorem surjective_on_kernel_of_coordinate_inertia {G B A ι : Type*}
    [Group G] [Group B] [CommGroup A] [Fintype ι] [DecidableEq ι]
    (π : G →* B) (d : G →* (ι → A))
    (h : ∀ j a, ∃ g ∈ π.ker, d g = Function.update (1 : ι → A) j a) :
    Function.Surjective (d.comp π.ker.subtype) := by
  intro y
  have hmem (j : ι) : Function.update (1 : ι → A) j (y j) ∈ (d.comp π.ker.subtype).range := by
    obtain ⟨g, hg, e⟩ := h j (y j)
    exact ⟨⟨g, hg⟩, e⟩
  have hp := ((d.comp π.ker.subtype).range).prod_mem (t := Finset.univ)
    (fun j _ => hmem j)
  have he : (∏ j, Function.update (1 : ι → A) j (y j)) = y := by
    funext k
    simp [Finset.prod_apply, Function.update_apply, Finset.prod_ite_eq]
  rw [he] at hp
  exact hp

end GRWTSK.NumberTheory.AlpogeAuxiliaryRayCharacter
