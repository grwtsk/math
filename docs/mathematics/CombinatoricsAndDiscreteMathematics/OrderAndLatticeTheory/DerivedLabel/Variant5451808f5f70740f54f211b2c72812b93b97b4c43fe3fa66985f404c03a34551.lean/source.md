# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.DerivedLabel.Variant5451808f5f70740f54f211b2c72812b93b97b4c43fe3fa66985f404c03a34551

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae24e35ab8e7ba49cd95abb7a95dd4b4348e5d16` · SHA-256 `5451808f5f70740f54f211b2c72812b93b97b4c43fe3fa66985f404c03a34551`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projection.ExternalRigidifier

/-!
# Canonical labels for derived projection nodes

Derived nodes are free constructor terms over certified primitive labels.  No
runtime identifier or model-generated element is admitted.
-/

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
