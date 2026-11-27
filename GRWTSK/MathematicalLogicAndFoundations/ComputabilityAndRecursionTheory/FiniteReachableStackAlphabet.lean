import Mathlib.Computability.TuringMachine.Computable
import Mathlib.Data.Set.Finite.Lattice

/-!
# Finite reachable symbols of a bundled stack machine

A `FinTM2` provides a finite input alphabet, label space and control space.
Collect the tagged images of every push instruction. This one finite set
works simultaneously for all input words and all reachable configurations.
-/

namespace GRWTSK.FiniteReachableStackAlphabet

open Turing

variable {K Λ σ : Type} {Γ : K → Type}

/-- The symbols this statement can push, tagged by destination stack. -/
def pushed : TM2.Stmt Γ Λ σ → Set (Sigma Γ)
  | .push k f q => Set.range (fun v => Sigma.mk k (f v)) ∪ pushed q
  | .peek _ _ q | .pop _ _ q | .load _ q => pushed q
  | .branch _ t f => pushed t ∪ pushed f
  | .goto _ | .halt => ∅

theorem pushed_finite [Finite σ] (q : TM2.Stmt Γ Λ σ) : (pushed q).Finite := by
  induction q with
  | push k f q ih => exact (Set.finite_range _).union ih
  | branch _ _ _ ih₁ ih₂ => exact ih₁.union ih₂
  | peek _ _ _ ih | pop _ _ _ ih | load _ _ ih => exact ih
  | goto | halt => exact Set.finite_empty

def alphabet (tm : FinTM2) : Set (Sigma tm.Γ) :=
  Set.range (Sigma.mk tm.k₀) ∪ ⋃ l, pushed (tm.m l)

theorem alphabet_finite (tm : FinTM2) : (alphabet tm).Finite := by
  let _ := tm.Γk₀Fin
  let _ := tm.ΛFin
  let _ := tm.σFin
  exact (Set.finite_range _).union (Set.finite_iUnion fun l => pushed_finite (tm.m l))

def Holds (a : Set (Sigma Γ)) (s : ∀ k, List (Γ k)) : Prop :=
  ∀ k x, x ∈ s k → Sigma.mk k x ∈ a

private theorem stepAux_preserves [DecidableEq K] (q : TM2.Stmt Γ Λ σ)
    (a : Set (Sigma Γ)) (hp : pushed q ⊆ a) (v : σ) (s : ∀ k, List (Γ k))
    (hs : Holds a s) : Holds a (TM2.stepAux q v s).stk := by
  induction q generalizing v s with
  | push k f q ih =>
    apply ih (fun _ h => hp (Or.inr h))
    intro j x hx
    by_cases he : j = k
    · subst j
      rw [Function.update_self] at hx
      rcases List.mem_cons.mp hx with rfl | h
      · exact hp (Or.inl ⟨v, rfl⟩)
      · exact hs k _ h
    · rw [Function.update_of_ne he] at hx
      exact hs j x hx
  | pop k f q ih =>
    apply ih hp
    intro j x hx
    by_cases he : j = k
    · subst j
      rw [Function.update_self] at hx
      exact hs k x (List.mem_of_mem_tail hx)
    · rw [Function.update_of_ne he] at hx
      exact hs j x hx
  | peek _ _ _ ih | load _ _ ih => exact ih hp _ s hs
  | branch f q₁ q₂ ih₁ ih₂ =>
    cases h : f v
    · simpa [TM2.stepAux, h] using ih₂ (fun _ hx => hp (Or.inr hx)) v s hs
    · simpa [TM2.stepAux, h] using ih₁ (fun _ hx => hp (Or.inl hx)) v s hs
  | goto | halt => exact hs

theorem init_holds (tm : FinTM2) (xs : List (tm.Γ tm.k₀)) :
    Holds (alphabet tm) (initList tm xs).stk := by
  intro k x hx
  by_cases h : k = tm.k₀
  · subst k
    exact Or.inl ⟨x, rfl⟩
  · simp [initList, h] at hx

theorem step_preserves (tm : FinTM2) {c d : tm.Cfg}
    (hc : Holds (alphabet tm) c.stk) (hd : d ∈ tm.step c) :
    Holds (alphabet tm) d.stk := by
  obtain ⟨_ | l, v, s⟩ := c
  · change (none : Option tm.Cfg) = some d at hd
    contradiction
  · have he : TM2.stepAux (tm.m l) v s = d := Option.some.inj hd
    rw [← he]
    exact stepAux_preserves _ _ (fun _ hx => Or.inr (Set.mem_iUnion.mpr ⟨l, hx⟩)) _ _ hc

/-- Restricting stack k to the k-fiber of this fixed finite alphabet preserves
all reachable symbols, including the input and final output. -/
theorem reachable_holds (tm : FinTM2) (xs : List (tm.Γ tm.k₀)) {c : tm.Cfg}
    (h : TM2.Reaches tm.m (initList tm xs) c) : Holds (alphabet tm) c.stk := by
  induction h with
  | refl => exact init_holds tm xs
  | tail _ hs ih => exact step_preserves tm ih hs

end GRWTSK.FiniteReachableStackAlphabet
