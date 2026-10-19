import Mathlib.Tactic
import Mathematics.Resolution.AdversaryInvariant

/-!
# Oracle-to-concrete and query-to-work reduction

A query lower bound becomes a concrete work lower bound only through explicit,
proof-bearing translations.  This module retains both translations and proves
their composition.
-/

namespace Mathematics.Resolution

universe u v w x y

/--
A concrete attack is translated into an oracle algorithm.  Success and the
query overhead are both theorem fields.
-/
structure OracleToConcreteReduction
    (ConcreteAttack : Type u) (OracleAlgorithm : Type v) where
  translate : ConcreteAttack → OracleAlgorithm
  concreteSuccess : ConcreteAttack → Prop
  oracleSuccess : OracleAlgorithm → Prop
  primitiveEvaluations : ConcreteAttack → Nat
  oracleQueries : OracleAlgorithm → Nat
  queryOverhead : Nat
  preservesSuccess :
    ∀ attack,
      concreteSuccess attack →
        oracleSuccess (translate attack)
  queryBound :
    ∀ attack,
      oracleQueries (translate attack) ≤
        queryOverhead * primitiveEvaluations attack

/-- A proof-bearing translation `q(A) ≤ r(n) · W(A)`. -/
structure QueryToWorkTranslation
    {ConcreteAttack : Type u} {OracleAlgorithm : Type v}
    (reduction : OracleToConcreteReduction ConcreteAttack OracleAlgorithm) where
  work : ConcreteAttack → ℝ
  workNonnegative : ∀ attack, 0 ≤ work attack
  queriesPerWork : ℝ
  queriesPerWorkPositive : 0 < queriesPerWork
  queryToWorkBound :
    ∀ attack,
      (reduction.oracleQueries (reduction.translate attack) : ℝ) ≤
        queriesPerWork * work attack

/-- The complete model-specific lower-bound authority. -/
structure ConcreteHardnessCertificate
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    (problem : OracleProblem Input Output Coordinate)
    (OracleAlgorithm : Type x) (ConcreteAttack : Type y) where
  oracle :
    AdversaryQueryLowerBound problem OracleAlgorithm
  reduction :
    OracleToConcreteReduction ConcreteAttack OracleAlgorithm
  sameQueryCount :
    reduction.oracleQueries = oracle.queryCount
  sameOracleSuccess :
    reduction.oracleSuccess = oracle.boundedError
  workTranslation :
    QueryToWorkTranslation reduction

namespace ConcreteHardnessCertificate

variable
  {Input : Type u} {Output : Type v} {Coordinate : Type w}
  [Fintype Input] [DecidableEq Input]
  {problem : OracleProblem Input Output Coordinate}
  {OracleAlgorithm : Type x} {ConcreteAttack : Type y}

/--
The adversary lower bound reaches concrete work only through both declared
translations.
-/
theorem work_lower_bound
    (certificate :
      ConcreteHardnessCertificate
        problem OracleAlgorithm ConcreteAttack)
    (attack : ConcreteAttack)
    (successful : certificate.reduction.concreteSuccess attack) :
    (certificate.oracle.constant *
        certificate.oracle.witness.ratio) /
        certificate.workTranslation.queriesPerWork ≤
      certificate.workTranslation.work attack := by
  have oracleSuccessful :
      certificate.oracle.boundedError
        (certificate.reduction.translate attack) := by
    rw [← certificate.sameOracleSuccess]
    exact certificate.reduction.preservesSuccess attack successful
  apply (div_le_iff₀'
    certificate.workTranslation.queriesPerWorkPositive).2
  calc
    certificate.oracle.constant *
          certificate.oracle.witness.ratio ≤
        (certificate.oracle.queryCount
            (certificate.reduction.translate attack) : ℝ) :=
      certificate.oracle.sound _ oracleSuccessful
    _ =
        (certificate.reduction.oracleQueries
            (certificate.reduction.translate attack) : ℝ) := by
      rw [certificate.sameQueryCount]
    _ ≤
        certificate.workTranslation.queriesPerWork *
          certificate.workTranslation.work attack :=
      certificate.workTranslation.queryToWorkBound attack

end ConcreteHardnessCertificate

end Mathematics.Resolution
