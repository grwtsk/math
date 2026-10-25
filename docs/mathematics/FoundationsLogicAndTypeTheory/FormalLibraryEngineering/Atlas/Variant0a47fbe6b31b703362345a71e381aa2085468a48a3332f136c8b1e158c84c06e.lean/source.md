# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Atlas.Variant0a47fbe6b31b703362345a71e381aa2085468a48a3332f136c8b1e158c84c06e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfb2903392513032be5577fdca36069ebfce3abe` · SHA-256 `0a47fbe6b31b703362345a71e381aa2085468a48a3332f136c8b1e158c84c06e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
