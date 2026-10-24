# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundaryCanonical.Variant5fe5ceb1e44f058bc7e7cec160e5ba460f2c171d0e2c45779082aa6ed494dcca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a66e02a3df6d6eafd7373755d22524c78dd44fd1` · SHA-256 `5fe5ceb1e44f058bc7e7cec160e5ba460f2c171d0e2c45779082aa6ed494dcca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.BoundaryPairCorrelation

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.BoundaryMemory

inductive BoundaryMemoryAction where
  | retain
  | compress
  | recall
  | refuse
  | insertWitness
deriving DecidableEq, Repr

structure BoundaryCanonicalRule where
  condition : String
  action : BoundaryMemoryAction
  residueClass : String
deriving DecidableEq, Repr

def boundaryCanonicalRules : List BoundaryCanonicalRule :=
  [ { condition := "heat, residue, or witness value remains"
      action := .retain
      residueClass := "retention" }
  , { condition := "inner residue is resolved by the outer boundary"
      action := .compress
      residueClass := "compression" }
  , { condition := "query creates outer-to-inner residue"
      action := .recall
      residueClass := "recall" }
  , { condition := "no boundary witness can support the answer"
      action := .refuse
      residueClass := "refusal" }
  , { condition := "boundary residue exceeds threshold"
      action := .insertWitness
      residueClass := "witness" }
  ]

theorem boundaryCanonicalRules_count :
    boundaryCanonicalRules.length = 5 := by
  rfl

end Think.RadoProjectedModularHeatflow.BoundaryMemory
```
