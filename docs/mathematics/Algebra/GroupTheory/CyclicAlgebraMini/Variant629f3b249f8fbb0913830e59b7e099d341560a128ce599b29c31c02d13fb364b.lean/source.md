# Complete source: GRWTSK.Algebra.GroupTheory.CyclicAlgebraMini.Variant629f3b249f8fbb0913830e59b7e099d341560a128ce599b29c31c02d13fb364b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5df492d16d5583a06aaba0a8d7925dc4189db1f` · SHA-256 `629f3b249f8fbb0913830e59b7e099d341560a128ce599b29c31c02d13fb364b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.FiniteLatticeArithmetic.Congruence
import Mathlib.Data.Fin.VecNotation
import Mathlib.Algebra.Group.Defs
open OAI.FiniteCongruence
variable {G : Type} [AddGroup G]
def miniAlgebra : Algebra G where
  numOps := 3
  arity := ![2, 1, 0]
  op := Fin.cases (fun (inputs : Fin 2 → G) => inputs 0 + inputs 1)
    (Fin.cases (fun (inputs : Fin 1 → G) => -inputs 0)
      (Fin.cases (fun (_ : Fin 0 → G) => 0) (fun i => Fin.elim0 i)))
#check miniAlgebra
```
