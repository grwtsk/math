import FCRS.TheoremTransfer.Adapters.FCRSTransport

namespace FCRS.TheoremTransfer.Cycle5QuantifierCompatibility

open FCRS.TheoremTransfer.Adapters.FCRSTransport

def v (name : String) : VersionId :=
  .atomic ⟨"https://example.invalid/cycle-5", name, "1", "sha256:" ++ name⟩

/-!
`fullySpecified` is indexed by carrier names but accepts no carrier relation at
all.  Consequently the same asserted closed profile certifies `Bool -> Nat`.
-/
def finiteToInfiniteCompatibility :
    QuantifierUnspecifiedCompatibility Bool Nat
      neutralQuantifierProfile neutralQuantifierProfile :=
  .fullySpecified (by simp [neutralQuantifierProfile, QuantifierProfile.HasUnspecified])
    (by simp [neutralQuantifierProfile, QuantifierProfile.HasUnspecified])

/-!
Even the carrier-equivalence branch is not indexed by the `Translation.mapObject`
function.  A non-bijective constant map can coexist with an unrelated identity
equivalence in the current public types.
-/
def constantCarrierMap : Bool → Bool := fun _ => false

def unrelatedIdentityCompatibility :
    QuantifierUnspecifiedCompatibility Bool Bool
      (QuantifierProfile.unspecified
        (v "cycle-5-source-quantifiers"))
      (QuantifierProfile.unspecified
        (v "cycle-5-target-quantifiers")) :=
  .evidenced (QuantifierCarrierEquivalence.refl Bool)
    [v "cycle-5-unrelated-equivalence"] (by simp)

def acceptedUnlinkedMapAndCompatibility :
    (Bool → Bool) ×
      QuantifierUnspecifiedCompatibility Bool Bool
        (QuantifierProfile.unspecified
          (v "cycle-5-source-quantifiers"))
        (QuantifierProfile.unspecified
          (v "cycle-5-target-quantifiers")) :=
  ⟨constantCarrierMap, unrelatedIdentityCompatibility⟩

#check finiteToInfiniteCompatibility
#check acceptedUnlinkedMapAndCompatibility

end FCRS.TheoremTransfer.Cycle5QuantifierCompatibility
