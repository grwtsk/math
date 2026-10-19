import Mathematics.Capability.Scope

/-!
# Total capability atlas

The indexed function makes omission impossible: every interface is represented
either by a supported capability or by an explicit unsupported record.
-/

namespace Mathematics.Capability

universe u

inductive InterfaceSupport
  | supported (capability : OperationalCapability)
  | unsupported (reason : String)

structure TotalCapabilityAtlas (Interface : Type u) where
  webrefDigest : Digest
  webIdlDigest : Digest
  webrefDigest_valid : webrefDigest.Valid
  webIdlDigest_valid : webIdlDigest.Valid
  classify : Interface → InterfaceSupport

theorem TotalCapabilityAtlas.every_interface_modeled
    {Interface : Type u}
    (atlas : TotalCapabilityAtlas Interface)
    (interface : Interface) :
    ∃ support, atlas.classify interface = support :=
  ⟨atlas.classify interface, rfl⟩

end Mathematics.Capability
