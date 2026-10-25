# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RepresentationFaithfulness.Variantb9b77bdbd1349e9228af63e498c383dd901bcdaf2095b72b6cea80c5043b359f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1603f3567713d041a49c4101183b9215bddd46c0` · SHA-256 `0820123856bd20015d9fae368ba8d8ab6531b050136c4db7165d00863ae57d85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SelectedTwistGroup.Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.SelectedTwistGroup.Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939","mathematical_subject":"Logic.Foundations","original_sha256":"23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Research/RepresentationFaithfulness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SelectedTwistGroup.Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939

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
