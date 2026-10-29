import Folder.Research.RepresentationFaithfulness

/-!
# Folder.Theorem.Research.RepresentationFaithfulness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.research.representation_faithfulness
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Research
namespace RepresentationFaithfulness

theorem every_selected_twist_has_preimage
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    {R : Monodromy.MonodromyRepresentation Γ mul one α}
    {T : Folder.Research.RepresentationFaithfulness.SelectedTwistGroup α}
    (C : Folder.Research.RepresentationFaithfulness.ClassifiesSelectedTwists R T)
    {φ : α ≃ α}
    (hφ : φ ∈ T.Twist) :
    ∃ g, R.ρ g = φ :=
  Folder.Research.RepresentationFaithfulness.every_selected_twist_has_preimage
    C hφ

theorem selected_twist_preimage_unique_of_faithful
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    {R : Monodromy.MonodromyRepresentation Γ mul one α}
    {T : Folder.Research.RepresentationFaithfulness.SelectedTwistGroup α}
    (C : Folder.Research.RepresentationFaithfulness.ClassifiesSelectedTwists R T)
    {φ : α ≃ α}
    {g h : Γ}
    (hg : R.ρ g = φ)
    (hh : R.ρ h = φ) :
    g = h :=
  Folder.Research.RepresentationFaithfulness.selected_twist_preimage_unique_of_faithful
    C hg hh

end RepresentationFaithfulness
end Research
end Theorem
end Folder
