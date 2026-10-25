# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RepresentationFaithfulness.Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab6f4e0fd106872f4bfcd37679ef6627ad10c53a` · SHA-256 `23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Monodromy.Representation
import Folder.Research.TorsionShellComparison

/-!
# Folder.Research.RepresentationFaithfulness

Radiation role: research-contract
BinaryMatrix spine: This module marks research-boundary contracts and theorem targets around the BinaryMatrix radiation program.
Ontology: research.boundary.representation_faithfulness
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: infrastructure
-/


namespace Folder
namespace Research
namespace RepresentationFaithfulness

structure SelectedTwistGroup (α : Type _) where
  Twist : Set (α ≃ α)
  contains_id : Equiv.refl α ∈ Twist
  closed_comp :
    ∀ f g, f ∈ Twist → g ∈ Twist → f.trans g ∈ Twist
  closed_inv :
    ∀ f, f ∈ Twist → f.symm ∈ Twist

def Faithful
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    (R : Monodromy.MonodromyRepresentation Γ mul one α) : Prop :=
  ∀ g h, R.ρ g = R.ρ h → g = h

def SurjectiveOn
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    (R : Monodromy.MonodromyRepresentation Γ mul one α)
    (T : SelectedTwistGroup α) : Prop :=
  ∀ φ, φ ∈ T.Twist → ∃ g, R.ρ g = φ

structure ClassifiesSelectedTwists
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    (R : Monodromy.MonodromyRepresentation Γ mul one α)
    (T : SelectedTwistGroup α) where
  faithful : Faithful R
  surjective_on : SurjectiveOn R T

theorem every_selected_twist_has_preimage
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    {R : Monodromy.MonodromyRepresentation Γ mul one α}
    {T : SelectedTwistGroup α}
    (C : ClassifiesSelectedTwists R T)
    {φ : α ≃ α}
    (hφ : φ ∈ T.Twist) :
    ∃ g, R.ρ g = φ :=
  C.surjective_on φ hφ

theorem selected_twist_preimage_unique_of_faithful
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    {R : Monodromy.MonodromyRepresentation Γ mul one α}
    {T : SelectedTwistGroup α}
    (C : ClassifiesSelectedTwists R T)
    {φ : α ≃ α}
    {g h : Γ}
    (hg : R.ρ g = φ)
    (hh : R.ρ h = φ) :
    g = h :=
  C.faithful g h (by rw [hg, hh])

end RepresentationFaithfulness
end Research
end Folder
```
