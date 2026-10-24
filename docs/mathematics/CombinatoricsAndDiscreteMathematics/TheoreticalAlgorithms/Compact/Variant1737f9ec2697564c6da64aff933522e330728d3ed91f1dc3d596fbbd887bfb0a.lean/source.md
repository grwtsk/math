# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Compact.Variant1737f9ec2697564c6da64aff933522e330728d3ed91f1dc3d596fbbd887bfb0a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f289c2a42217791c11a2c4ae64794cbe28aab1a` · SHA-256 `1737f9ec2697564c6da64aff933522e330728d3ed91f1dc3d596fbbd887bfb0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.BoundaryResidue

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure CompactPatch where
  id : Nat
  label : String
  vertices : List MemoryVertex
  poleLabels : List String
deriving Repr

structure LocalCompactMemory where
  compact : CompactPatch
  graphLabel : String
  treeLabel : String
  boundaryResidue : BoundaryResidue
  torsionLabel : String
  forms : List ModularMemoryForm

structure CompactRestriction where
  source : CompactPatch
  target : CompactPatch
  restrictionLabel : String
  extensionLabel : String
  restrictionExtensionStable : Prop
  residueCompatible : Prop

def CompactRestriction.admitted (r : CompactRestriction) : Prop :=
  r.restrictionExtensionStable ∧ r.residueCompatible

structure CompactFilteredUnion where
  stages : Nat -> CompactPatch
  limitPatch : CompactPatch
  directed : Prop
  coversLimit : Prop

structure CompactInductionAudit where
  union : CompactFilteredUnion
  localMemory : CompactPatch -> LocalCompactMemory
  restrictionStable : Prop
  residueColimitStable : Prop
  compactInductive : Prop

def CompactInductionAudit.admitted (A : CompactInductionAudit) : Prop :=
  A.restrictionStable ∧ A.residueColimitStable ∧ A.compactInductive

theorem compact_audit_admitted_has_restriction_stability
    (A : CompactInductionAudit)
    (h : A.admitted) :
    A.restrictionStable := by
  exact h.1

theorem compact_restriction_admitted_has_residue_compatibility
    (r : CompactRestriction)
    (h : r.admitted) :
    r.residueCompatible := by
  exact h.2

end Think.RadoProjectedModularHeatflow.MemoryCore
```
