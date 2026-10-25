# Complete source: GRWTSK.Logic.PortPureTypeSystemMetatheory

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8de8bb145fe83a09823295fc275df223f0eac98` · SHA-256 `7ab231c677e97136772298c3037ca93b3ba10c0019a3203409a268d85bcb6f66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Structural PTS lemmas adapted into the GRWTSK namespace from
`openai/math` revision `1581d4cbdd69a0faf34b2089614fe2a814316a6a`,
`lean/OAI/Computability/TypeSystem/Basic.lean` (Apache-2.0).
The local port sorts and acceptance boundaries remain GRWTSK-specific.
-/
import GRWTSK.Logic.PortPureTypeSystem

namespace GRWTSK.Logic.PortPureTypeSystem

universe u

namespace Expr

variable {S : Type u}

/-- Lifted renamings preserve composition. -/
theorem liftRen_comp (ρ τ : Nat → Nat) :
    liftRen (ρ ∘ τ) = liftRen ρ ∘ liftRen τ := by
  funext n
  cases n <;> rfl

/-- Capture-avoiding renaming is functorial. -/
theorem rename_comp (M : Expr S) (ρ τ : Nat → Nat) :
    rename ρ (rename τ M) = rename (ρ ∘ τ) M := by
  induction M generalizing ρ τ with
  | var n => rfl
  | sort s => rfl
  | app f a ihf iha => simp only [rename, ihf, iha]
  | lam A b ihA ihb => simp only [rename, ihA, ihb, liftRen_comp]
  | pi A B ihA ihB => simp only [rename, ihA, ihB, liftRen_comp]

@[simp]
theorem liftSub_zero (σ : Nat → Expr S) : liftSub σ 0 = .var 0 := rfl

@[simp]
theorem liftSub_succ (σ : Nat → Expr S) (n : Nat) :
    liftSub σ (n + 1) = rename Nat.succ (σ n) := rfl

/-- Substitution after renaming composes the environments. -/
theorem subst_rename (M : Expr S) (σ : Nat → Expr S) (ρ : Nat → Nat) :
    subst σ (rename ρ M) = subst (σ ∘ ρ) M := by
  have hlift : ∀ (σ : Nat → Expr S) (ρ : Nat → Nat),
      liftSub σ ∘ liftRen ρ = liftSub (σ ∘ ρ) := by
    intro σ ρ
    funext n
    cases n <;> rfl
  induction M generalizing σ ρ with
  | var n => rfl
  | sort s => rfl
  | app f a ihf iha => simp only [rename, subst, ihf, iha]
  | lam A b ihA ihb => simp only [rename, subst, ihA, ihb, hlift]
  | pi A B ihA ihB => simp only [rename, subst, ihA, ihB, hlift]

/-- Renaming after substitution acts pointwise on the substitution. -/
theorem rename_subst (M : Expr S) (ρ : Nat → Nat) (σ : Nat → Expr S) :
    rename ρ (subst σ M) = subst (fun n => rename ρ (σ n)) M := by
  have hlift : ∀ (ρ : Nat → Nat) (σ : Nat → Expr S),
      (fun n => rename (liftRen ρ) (liftSub σ n)) =
        liftSub (fun n => rename ρ (σ n)) := by
    intro ρ σ
    funext n
    cases n with
    | zero => rfl
    | succ n =>
        simp only [liftSub_succ, rename_comp]
        rfl
  induction M generalizing ρ σ with
  | var n => rfl
  | sort s => rfl
  | app f a ihf iha => simp only [subst, rename, ihf, iha]
  | lam A b ihA ihb => simp only [subst, rename, ihA, ihb, hlift]
  | pi A B ihA ihB => simp only [subst, rename, ihA, ihB, hlift]

/-- Simultaneous substitutions compose pointwise. -/
theorem subst_subst (M : Expr S) (σ τ : Nat → Expr S) :
    subst σ (subst τ M) = subst (fun n => subst σ (τ n)) M := by
  have hlift : ∀ (σ τ : Nat → Expr S),
      (fun n => subst (liftSub σ) (liftSub τ n)) =
        liftSub (fun n => subst σ (τ n)) := by
    intro σ τ
    funext n
    cases n with
    | zero => rfl
    | succ n =>
        simp only [liftSub_succ, subst_rename, rename_subst]
        rfl
  induction M generalizing σ τ with
  | var n => rfl
  | sort s => rfl
  | app f a ihf iha => simp only [subst, ihf, iha]
  | lam A b ihA ihb => simp only [subst, ihA, ihb, hlift]
  | pi A B ihA ihB => simp only [subst, ihA, ihB, hlift]

/-- Instantiation commutes with renaming. -/
theorem instantiate_rename (b a : Expr S) (ρ : Nat → Nat) :
    (b.rename (liftRen ρ)).instantiate (a.rename ρ) =
      (b.instantiate a).rename ρ := by
  simp only [instantiate, subst_rename, rename_subst]
  congr 1
  funext n
  cases n <;> rfl

/-- Instantiation commutes with substitution. -/
theorem instantiate_subst (b a : Expr S) (σ : Nat → Expr S) :
    (b.subst (liftSub σ)).instantiate (a.subst σ) =
      (b.instantiate a).subst σ := by
  simp only [instantiate, subst_subst]
  congr 1
  funext n
  cases n with
  | zero => rfl
  | succ n =>
      simp only [liftSub_succ, subst_rename]
      exact subst_var (σ n)

end Expr

namespace Beta

variable {S : Type u} {M N : Expr S}

/-- Full annotated beta reduction is stable under renaming. -/
theorem rename (h : Beta M N) (ρ : Nat → Nat) :
    Beta (M.rename ρ) (N.rename ρ) := by
  induction h generalizing ρ with
  | head A b a =>
      simpa only [Expr.rename, ← Expr.instantiate_rename] using
        (Beta.head (A.rename ρ) (b.rename (Expr.liftRen ρ)) (a.rename ρ))
  | app_left _ ih => exact .app_left (ih ρ)
  | app_right _ ih => exact .app_right (ih ρ)
  | lam_domain _ ih => exact .lam_domain (ih ρ)
  | lam_body _ ih => exact .lam_body (ih (Expr.liftRen ρ))
  | pi_domain _ ih => exact .pi_domain (ih ρ)
  | pi_body _ ih => exact .pi_body (ih (Expr.liftRen ρ))

/-- Full annotated beta reduction is stable under substitution. -/
theorem subst (h : Beta M N) (σ : Nat → Expr S) :
    Beta (M.subst σ) (N.subst σ) := by
  induction h generalizing σ with
  | head A b a =>
      simpa only [Expr.subst, ← Expr.instantiate_subst] using
        (Beta.head (A.subst σ) (b.subst (Expr.liftSub σ)) (a.subst σ))
  | app_left _ ih => exact .app_left (ih σ)
  | app_right _ ih => exact .app_right (ih σ)
  | lam_domain _ ih => exact .lam_domain (ih σ)
  | lam_body _ ih => exact .lam_body (ih (Expr.liftSub σ))
  | pi_domain _ ih => exact .pi_domain (ih σ)
  | pi_body _ ih => exact .pi_body (ih (Expr.liftSub σ))

end Beta

namespace HasType

variable {S : Type u} {P : Specification S}
variable {Γ : List (Expr S)} {M A : Expr S}

/-- Every typing derivation carries a valid source context. -/
theorem valid (h : HasType P Γ M A) : ValidContext P Γ := by
  induction h with
  | ax _ => exact .nil
  | var h ih => exact .cons ih h
  | weaken _ h _ ih => exact .cons ih h
  | product _ _ _ ih _ => exact ih
  | abstraction _ _ _ ih => exact ih
  | application _ _ ih _ => exact ih
  | conversion _ _ _ ih _ => exact ih

end HasType

/-- Every legal expression is attached to a valid context. -/
theorem legal_valid {S : Type u} {P : Specification S}
    {Γ : List (Expr S)} {M : Expr S} (h : Legal P Γ M) :
    ValidContext P Γ := by
  obtain ⟨A, hMA | hAM⟩ := h
  · exact hMA.valid
  · exact hAM.valid

end GRWTSK.Logic.PortPureTypeSystem
```
