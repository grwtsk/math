# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Refusal.Variant8ca03b4c3ac529a65012ea0f83ee530a7a6975430b78b75f5db95af4ecdb9b45

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bbc5e7ac5242b94a62b5303dcf53a44f6405288` · SHA-256 `8ca03b4c3ac529a65012ea0f83ee530a7a6975430b78b75f5db95af4ecdb9b45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Witness

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure BoundaryRefusal where
  query : String
  activeResidue : BoundaryResidue
  supportingWitness? : Option BoundaryWitness
  noSupportedAnswer : Prop

def BoundaryRefusal.supported (r : BoundaryRefusal) : Bool :=
  r.supportingWitness?.isSome

theorem unsupported_refusal_has_no_witness
    (r : BoundaryRefusal)
    (h : r.supported = false) :
    r.supportingWitness? = none := by
  cases hw : r.supportingWitness? with
  | none =>
      rfl
  | some _ =>
      simp [BoundaryRefusal.supported, hw] at h

end Think.RadoProjectedModularHeatflow.MemoryCore
```
