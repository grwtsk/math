# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Family.Variantbd74f265b40273dc1a729bbac06f78a0415e681b565c774b08c383e28f131a82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41b25ae60fa40bb442377e9841056f48ec05a018` · SHA-256 `bd74f265b40273dc1a729bbac06f78a0415e681b565c774b08c383e28f131a82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Geometry.Kakeya.Tube

/-!
# Finite Kakeya tube families

Finiteness is intrinsic: a family is indexed by `Fin count`.  It is not an
arbitrary proposition attached to an otherwise unconstrained list.
-/

namespace Mathematics.Geometry.Kakeya

/-- A finite family of exact tubes in one fixed ambient dimension. -/
structure FiniteTubeFamily (dimension : Nat) where
  count : Nat
  tube : Fin count → Tube dimension

namespace FiniteTubeFamily

/-- The union of all exact tube carriers in the family. -/
def carrier {dimension : Nat} (family : FiniteTubeFamily dimension) :
    Set (AmbientPoint dimension) :=
  ⋃ index, (family.tube index).carrier

theorem mem_carrier_iff {dimension : Nat}
    (family : FiniteTubeFamily dimension)
    (point : AmbientPoint dimension) :
    point ∈ family.carrier ↔
      ∃ index : Fin family.count, (family.tube index).Contains point := by
  simp [carrier]

theorem carrier_nonempty_of_count_positive {dimension : Nat}
    (family : FiniteTubeFamily dimension)
    (positive : 0 < family.count) :
    family.carrier.Nonempty := by
  let index : Fin family.count := ⟨0, positive⟩
  refine ⟨(family.tube index).center, ?_⟩
  exact (family.mem_carrier_iff _).2 ⟨index, (family.tube index).center_mem⟩

end FiniteTubeFamily

end Mathematics.Geometry.Kakeya
```
