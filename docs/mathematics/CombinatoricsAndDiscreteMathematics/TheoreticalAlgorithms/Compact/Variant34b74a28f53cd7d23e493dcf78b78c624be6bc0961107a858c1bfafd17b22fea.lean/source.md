# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Compact.Variant34b74a28f53cd7d23e493dcf78b78c624be6bc0961107a858c1bfafd17b22fea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec29152159388f97a1cdb219097c7e34b1e7da11` · SHA-256 `34b74a28f53cd7d23e493dcf78b78c624be6bc0961107a858c1bfafd17b22fea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.CompactInduction
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Residue

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.Compact

structure CompactSourceProjection where
  sourcePath : String
  compactLabel : String
  canonicalFiber : String
  residueClass : String
  poleConservative : Prop
  residueComplete : Prop

def CompactSourceProjection.admitted
    (P : CompactSourceProjection) : Prop :=
  P.poleConservative ∧ P.residueComplete

structure CompactSourceTreePass where
  projections : List CompactSourceProjection
  compactInductionAudit : Think.RadoProjectedModularHeatflow.MemoryCore.CompactInductionHypotheses
  contractionsPreserveResidue : Prop
  importsRemainAcyclic : Prop

def CompactSourceTreePass.admitted
    (P : CompactSourceTreePass) : Prop :=
  P.compactInductionAudit.admitted ∧
    P.contractionsPreserveResidue ∧
    P.importsRemainAcyclic

theorem admitted_projection_has_residue_complete
    (P : CompactSourceProjection)
    (h : P.admitted) :
    P.residueComplete := by
  exact h.2

end Think.RadoProjectedModularHeatflow.Compact
```
