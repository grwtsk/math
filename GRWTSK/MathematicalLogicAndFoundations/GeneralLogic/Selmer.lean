import Surface.Arithmetic.GaloisCohomology.Finite

namespace Surface.Arithmetic
namespace GaloisCohomology

universe u v w

/-!
# Abstract finite Selmer groups

What is formalized:
An abstract Selmer subgroup of finite first cohomology, defined by local
conditions on restricted `FiniteH1` classes.

What is certificate-gated:
Nothing in this file is a BSD/Sha/modularity certificate. The only inputs are
already-constructed finite groups, actions, restriction homomorphisms, and
subgroups of local `FiniteH1`.

What is not claimed:
This file does not construct number fields, local Galois groups, elliptic
curves, Tate-Shafarevich groups, BSD, analytic ranks, or downstream arithmetic
maps into the Selmer subgroup.
-/

/-- Minimal additive operations used to state subgroup closure. -/
structure FiniteAdditiveStructure (α : Type u) where
  zero : α
  add : α → α → α
  neg : α → α

/-- FiniteSubgroup for a chosen additive structure. -/
structure FiniteSubgroup
    {α : Type u}
    (S : FiniteAdditiveStructure α) where
  carrier : α → Prop
  zero_mem : carrier S.zero
  add_mem :
    ∀ {x y : α}, carrier x → carrier y → carrier (S.add x y)
  neg_mem :
    ∀ {x : α}, carrier x → carrier (S.neg x)

namespace FiniteSubgroup

theorem ext
    {α : Type u}
    {S : FiniteAdditiveStructure α}
    {P Q : FiniteSubgroup S}
    (h : ∀ x : α, P.carrier x ↔ Q.carrier x) :
    P = Q := by
  cases P with
  | mk Pcarrier Pzero Padd Pneg =>
    cases Q with
    | mk Qcarrier Qzero Qadd Qneg =>
      have hcarrier : Pcarrier = Qcarrier := by
        funext x
        exact propext (h x)
      cases hcarrier
      rfl

def top
    {α : Type u}
    (S : FiniteAdditiveStructure α) :
    FiniteSubgroup S where
  carrier := fun _ => True
  zero_mem := trivial
  add_mem := by
    intro x y hx hy
    trivial
  neg_mem := by
    intro x hx
    trivial

def le
    {α : Type u}
    {S : FiniteAdditiveStructure α}
    (P Q : FiniteSubgroup S) : Prop :=
  ∀ x : α, P.carrier x → Q.carrier x

end FiniteSubgroup

/-- The additive operations on `FiniteH1` induced by cocycle addition and negation. -/
def FiniteH1.additiveStructure
    (G : FiniteGroupData.{u})
    (A : FiniteAddCommGroup.{v})
    (ρ : AdditiveAction G A) :
    FiniteAdditiveStructure (FiniteH1 G A ρ) where
  zero := FiniteH1.zero G A ρ
  add := FiniteH1.add
  neg := FiniteH1.neg

/--
Abstract Selmer subgroup:
`c ∈ Selmer` iff every localization/restriction of `c` lies in the chosen local
condition.
-/
def FiniteSelmerGroup
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρG : AdditiveAction G A}
    (V : Type w)
    (Gv : V → FiniteGroupData.{u})
    (ρv : (v : V) → AdditiveAction (Gv v) A)
    (ιv : (v : V) → ActionHom (ρv v) ρG)
    (Lv :
      (v : V) →
        FiniteSubgroup (FiniteH1.additiveStructure (Gv v) A (ρv v))) :
    FiniteSubgroup (FiniteH1.additiveStructure G A ρG) where
  carrier := fun c =>
    ∀ v : V,
      (Lv v).carrier (resFiniteH1 (ιv v) c)
  zero_mem := by
    intro v
    change (Lv v).carrier (resFiniteH1 (ιv v) (FiniteH1.zero G A ρG))
    rw [resFiniteH1_zero]
    exact (Lv v).zero_mem
  add_mem := by
    intro x y hx hy v
    change (Lv v).carrier (resFiniteH1 (ιv v) (FiniteH1.add x y))
    rw [resFiniteH1_add]
    exact (Lv v).add_mem (hx v) (hy v)
  neg_mem := by
    intro x hx v
    change (Lv v).carrier (resFiniteH1 (ιv v) (FiniteH1.neg x))
    rw [resFiniteH1_neg]
    exact (Lv v).neg_mem (hx v)

/-- The top local condition at every place gives the whole global `FiniteH1`. -/
theorem selmer_top_eq_h1
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρG : AdditiveAction G A}
    (V : Type w)
    (Gv : V → FiniteGroupData.{u})
    (ρv : (v : V) → AdditiveAction (Gv v) A)
    (ιv : (v : V) → ActionHom (ρv v) ρG) :
    FiniteSelmerGroup
      (G := G)
      (A := A)
      (ρG := ρG)
      V Gv ρv ιv
      (fun v =>
        FiniteSubgroup.top (FiniteH1.additiveStructure (Gv v) A (ρv v))) =
    FiniteSubgroup.top (FiniteH1.additiveStructure G A ρG) := by
  apply FiniteSubgroup.ext
  intro c
  constructor
  · intro _h
    trivial
  · intro _h v
    trivial

/-- Enlarging all local conditions enlarges the Selmer subgroup. -/
theorem selmer_mono
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρG : AdditiveAction G A}
    {V : Type w}
    {Gv : V → FiniteGroupData.{u}}
    {ρv : (v : V) → AdditiveAction (Gv v) A}
    {ιv : (v : V) → ActionHom (ρv v) ρG}
    {Lv Mv :
      (v : V) →
        FiniteSubgroup (FiniteH1.additiveStructure (Gv v) A (ρv v))}
    (hlocal :
      ∀ (v : V) (x : FiniteH1 (Gv v) A (ρv v)),
        (Lv v).carrier x → (Mv v).carrier x) :
    FiniteSubgroup.le
      (FiniteSelmerGroup
        (G := G)
        (A := A)
        (ρG := ρG)
        V Gv ρv ιv Lv)
      (FiniteSelmerGroup
        (G := G)
        (A := A)
        (ρG := ρG)
        V Gv ρv ιv Mv) := by
  intro c hc v
  exact hlocal v (resFiniteH1 (ιv v) c) (hc v)

/--
A bundled finite abstract Selmer problem.

This is constructed data: a global finite group action, a family of local finite
group actions, restriction maps, and local subgroups of local `FiniteH1`.
-/
structure FiniteSelmerProblem where
  V : Type w
  G : FiniteGroupData.{u}
  A : FiniteAddCommGroup.{v}
  ρG : AdditiveAction G A
  Gv : V → FiniteGroupData.{u}
  ρv : (place : V) → AdditiveAction (Gv place) A
  ιv : (place : V) → ActionHom (ρv place) ρG
  localCondition :
    (place : V) →
      FiniteSubgroup (FiniteH1.additiveStructure (Gv place) A (ρv place))

namespace FiniteSelmerProblem

/-- The actual Selmer subgroup attached to the bundled problem. -/
def selmerSubgroup
    (P : FiniteSelmerProblem.{u, v, w}) :
    FiniteSubgroup (FiniteH1.additiveStructure P.G P.A P.ρG) :=
  FiniteSelmerGroup
    (G := P.G)
    (A := P.A)
    (ρG := P.ρG)
    P.V P.Gv P.ρv P.ιv P.localCondition

theorem mem_selmerSubgroup_iff
    (P : FiniteSelmerProblem.{u, v, w})
    (c : FiniteH1 P.G P.A P.ρG) :
    P.selmerSubgroup.carrier c ↔
      ∀ place : P.V,
        (P.localCondition place).carrier
          (resFiniteH1 (P.ιv place) c) := by
  rfl

end FiniteSelmerProblem

end GaloisCohomology
end Surface.Arithmetic
