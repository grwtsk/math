# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.DerivedLabel.Variant0a99fce1c313954005fe19fbff796956a268c059c8b669fda61d7efac15c6786

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9955d768955e0d6b8f6676924da3e1d05d030b8` · SHA-256 `0548405f720a7713e02eec316d0ce9434a039527e6acde366d85d801e329e985`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.DerivedLabel.Variant5451808f5f70740f54f211b2c72812b93b97b4c43fe3fa66985f404c03a34551","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5451808f5f70740f54f211b2c72812b93b97b4c43fe3fa66985f404c03a34551","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.DerivedLabel.Variant5451808f5f70740f54f211b2c72812b93b97b4c43fe3fa66985f404c03a34551","mathematical_subject":"Algebra.OrderTheory","original_sha256":"5451808f5f70740f54f211b2c72812b93b97b4c43fe3fa66985f404c03a34551","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/DerivedLabel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.ExternalRigidifier

/-!
# Canonical labels for derived projection nodes

Derived nodes are free constructor terms over certified primitive labels.  No
runtime identifier or model-generated element is admitted.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.DerivedLabel.Variant5451808f5f70740f54f211b2c72812b93b97b4c43fe3fa66985f404c03a34551

namespace Mathematics.Projection

universe u

/-- Versioned free term algebra for every permitted synthetic node. -/
inductive DerivedLabel (Label : Type u)
  | primitive (label : Label)
  | contract (version : Nat) (kind : Nat) (members : List Label)
  | quotientClass (version : Nat) (kind : Nat) (members : List Label)
  | crossingResolution
      (version : Nat) (kind : Nat)
      (crossing firstBranch secondBranch : Label)
  deriving DecidableEq, Repr

namespace DerivedLabel

def IsCanonical
    {Label : Type u}
    [LinearOrder Label] :
    DerivedLabel Label → Prop
  | primitive _ => True
  | contract _ _ members => members.Pairwise (· < ·)
  | quotientClass _ _ members => members.Pairwise (· < ·)
  | crossingResolution _ _ _ firstBranch secondBranch =>
      firstBranch < secondBranch

/--
A derived label admitted to a projection certificate.  The proof rules out
runtime IDs, unordered serialization choices, and unresolved branch order.
-/
structure Canonical (Label : Type u) [LinearOrder Label] where
  term : DerivedLabel Label
  normalized : term.IsCanonical

theorem primitive_injective {Label : Type u} :
    Function.Injective (@primitive Label) := by
  intro left right equality
  cases equality
  rfl

theorem contract_injective {Label : Type u}
    {versionLeft versionRight kindLeft kindRight : Nat}
    {membersLeft membersRight : List Label}
    (equality :
      contract versionLeft kindLeft membersLeft =
        contract versionRight kindRight membersRight) :
    versionLeft = versionRight ∧
      kindLeft = kindRight ∧
      membersLeft = membersRight := by
  cases equality
  exact ⟨rfl, rfl, rfl⟩

theorem quotientClass_injective {Label : Type u}
    {versionLeft versionRight kindLeft kindRight : Nat}
    {membersLeft membersRight : List Label}
    (equality :
      quotientClass versionLeft kindLeft membersLeft =
        quotientClass versionRight kindRight membersRight) :
    versionLeft = versionRight ∧
      kindLeft = kindRight ∧
      membersLeft = membersRight := by
  cases equality
  exact ⟨rfl, rfl, rfl⟩

theorem constructors_disjoint {Label : Type u}
    (label : Label)
    (version kind : Nat)
    (members : List Label) :
    primitive label ≠ contract version kind members := by
  intro equality
  cases equality

end DerivedLabel

end Mathematics.Projection
```
