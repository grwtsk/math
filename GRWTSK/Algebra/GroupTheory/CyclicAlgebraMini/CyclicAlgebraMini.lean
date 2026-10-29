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
