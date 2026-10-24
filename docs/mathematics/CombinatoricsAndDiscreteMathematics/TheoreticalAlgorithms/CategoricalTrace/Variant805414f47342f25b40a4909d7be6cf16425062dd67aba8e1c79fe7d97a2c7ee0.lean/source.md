# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CategoricalTrace.Variant805414f47342f25b40a4909d7be6cf16425062dd67aba8e1c79fe7d97a2c7ee0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f81e32ace6b621d1fe67808ed9f0e6b319cb5fdf` · SHA-256 `805414f47342f25b40a4909d7be6cf16425062dd67aba8e1c79fe7d97a2c7ee0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.CrystallineTensor.CategoricalTrace

Radiation role: research-boundary
BinaryMatrix spine: This module records categorical trace interfaces, not archive or BinaryMatrix trace algorithms.
Ontology: crystalline.categorical_trace
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

structure Endomorphism
    (alpha : Type _) where
  map : alpha → alpha
  label : String

def FixedBy
    {alpha : Type _}
    (f : Endomorphism alpha)
    (x : alpha) : Prop :=
  f.map x = x

structure CategoricalTrace
    (alpha : Type _) where
  End : Type _
  trace : End → Type _
  cyclic : Prop
  cyclic_certified : cyclic
  additivity? : Prop
  multiplicativity? : Prop

theorem categorical_trace_cyclic
    {alpha : Type _}
    (T : CategoricalTrace alpha) :
    T.cyclic :=
  T.cyclic_certified

end CrystallineTensor
end Folder
```
