import Mathematics.MobiusOntology.SecurityGame

/-!
# Coordinate-local oracle interface
-/

namespace Mathematics.MobiusOntology

universe u v w x

structure OracleInterface
    (Input : Type u) (Coordinate : Type v) (Answer : Type w) where
  query : Coordinate → Input → Answer

def OracleInterface.differsAt
    [DecidableEq Answer]
    (interface : OracleInterface Input Coordinate Answer)
    (coordinate : Coordinate)
    (left right : Input) : Bool :=
  decide (interface.query coordinate left ≠
    interface.query coordinate right)

structure OracleInterfaceCertificate
    {Input : Type u} {Output : Type v}
    {Coordinate : Type w} {Answer : Type x}
    [DecidableEq Answer]
    (problem : OracleProblem Input Output Coordinate)
    (interface : OracleInterface Input Coordinate Answer) : Prop where
  exact :
    ∀ coordinate left right,
      problem.differsAt coordinate left right =
        interface.differsAt coordinate left right

end Mathematics.MobiusOntology
