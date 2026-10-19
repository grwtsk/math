import Folder.Basic

/-!
# Folder.Monodromy.Representation

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: monodromy.representation
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: torsion
-/


namespace Folder
namespace Monodromy

structure MonodromyRepresentation
    (Γ : Type _)
    (mul : Γ → Γ → Γ)
    (one : Γ)
    (α : Type _) where
  ρ : Γ → α ≃ α
  map_one : ρ one = Equiv.refl α
  map_mul : ∀ g h, ρ (mul g h) = (ρ g).trans (ρ h)

def InKernel
    {Γ : Type _}
    {mul : Γ → Γ → Γ}
    {one : Γ}
    {α : Type _}
    (R : MonodromyRepresentation Γ mul one α)
    (g : Γ) :
    Prop :=
  R.ρ g = Equiv.refl α

def InImage
    {Γ : Type _}
    {mul : Γ → Γ → Γ}
    {one : Γ}
    {α : Type _}
    (R : MonodromyRepresentation Γ mul one α)
    (φ : α ≃ α) :
    Prop :=
  ∃ g, R.ρ g = φ

def Faithful
    {Γ : Type _}
    {mul : Γ → Γ → Γ}
    {one : Γ}
    {α : Type _}
    (R : MonodromyRepresentation Γ mul one α) :
    Prop :=
  ∀ g h, R.ρ g = R.ρ h → g = h

def SurjectiveOn
    {Γ : Type _}
    {mul : Γ → Γ → Γ}
    {one : Γ}
    {α : Type _}
    (R : MonodromyRepresentation Γ mul one α)
    (Twist : Set (α ≃ α)) :
    Prop :=
  ∀ φ ∈ Twist, ∃ g, R.ρ g = φ

theorem classify_twists_by_image
    {Γ : Type _}
    {mul : Γ → Γ → Γ}
    {one : Γ}
    {α : Type _}
    (R : MonodromyRepresentation Γ mul one α)
    (Twist : Set (α ≃ α))
    (h : SurjectiveOn R Twist) :
    ∀ φ ∈ Twist, ∃ g, R.ρ g = φ :=
  h

end Monodromy
end Folder
