# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ConditionalArithmeticHardness.Variant26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3636e1c16b496fbd5f173b36b0bb75794b55586c` · SHA-256 `26354a8b9b1b7f0524e6b1460d39ac3e67cd0198c6c3387113cfe9f93ecff227`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.ArithmeticAdversaryProfile
import Mathematics.Resolution.CryptographicReduction

/-!
# Conditional arithmetic-to-query and work bounds

Once an arithmetic kernel supplies a feasible adversary profile and certified
global/local norm estimates, the standard adversary and reduction layers
transport the resulting scale to query and concrete-work lower bounds.
-/

namespace Mathematics.Resolution

universe u v w x y z

/-- Explicit identification of otherwise distinct arithmetic and security scales. -/
structure ArithmeticSecurityScale where
  securityParameter : Nat
  analyticMass : Nat
  inputCardinality : Nat
  bitLength : Nat
  conductor : Nat
  discriminant : Nat

/-- A uniform target growth theorem, such as `c · 2^(α n)`. -/
structure UniformGrowthCertificate where
  scale : ArithmeticSecurityScale → ℝ
  targetGrowth : Nat → ℝ
  coefficient : ℝ
  coefficientPositive : 0 < coefficient
  uniform :
    ∀ parameters,
      coefficient * targetGrowth parameters.securityParameter ≤
        scale parameters

/-- Arithmetic profile plus the conventional general-adversary theorem. -/
structure ConditionalArithmeticQueryCertificate
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    {problem : OracleProblem Input Output Coordinate}
    {Kernel : Type x}
    {lift : ArithmeticKernelLift problem Kernel}
    (witness : ArithmeticAdversaryWitness lift)
    (bounds : ArithmeticKernelNormCertificate witness)
    (Algorithm : Type y) where
  oracle : AdversaryQueryLowerBound problem Algorithm
  sameWitness : oracle.witness = witness.generalWitness
  targetScale : ℝ
  targetBound :
    targetScale ≤
      oracle.constant *
        (bounds.numeratorFloor / bounds.denominatorCeiling)

namespace ConditionalArithmeticQueryCertificate

variable
  {Input : Type u} {Output : Type v} {Coordinate : Type w}
  [Fintype Input] [DecidableEq Input]
  {problem : OracleProblem Input Output Coordinate}
  {Kernel : Type x}
  {lift : ArithmeticKernelLift problem Kernel}
  {witness : ArithmeticAdversaryWitness lift}
  {bounds : ArithmeticKernelNormCertificate witness}
  {Algorithm : Type y}

theorem query_lower_bound
    (certificate :
      ConditionalArithmeticQueryCertificate witness bounds Algorithm)
    (algorithm : Algorithm)
    (successful : certificate.oracle.boundedError algorithm) :
    certificate.targetScale ≤
      (certificate.oracle.queryCount algorithm : ℝ) := by
  calc
    certificate.targetScale ≤
        certificate.oracle.constant *
          (bounds.numeratorFloor / bounds.denominatorCeiling) :=
      certificate.targetBound
    _ ≤
        certificate.oracle.constant * witness.ratio :=
      mul_le_mul_of_nonneg_left
        bounds.ratio_lower_bound
        (le_of_lt certificate.oracle.constantPositive)
    _ =
        certificate.oracle.constant *
          certificate.oracle.witness.ratio := by
      rw [certificate.sameWitness]
    _ ≤ (certificate.oracle.queryCount algorithm : ℝ) :=
      certificate.oracle.sound algorithm successful

end ConditionalArithmeticQueryCertificate

/-- Arithmetic profile plus oracle-to-concrete and query-to-work reductions. -/
structure ConditionalArithmeticWorkCertificate
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    {problem : OracleProblem Input Output Coordinate}
    {Kernel : Type x}
    {lift : ArithmeticKernelLift problem Kernel}
    (witness : ArithmeticAdversaryWitness lift)
    (bounds : ArithmeticKernelNormCertificate witness)
    (OracleAlgorithm : Type y) (ConcreteAttack : Type z) where
  concrete :
    ConcreteHardnessCertificate
      problem OracleAlgorithm ConcreteAttack
  sameWitness :
    concrete.oracle.witness = witness.generalWitness
  targetScale : ℝ
  targetBound :
    targetScale ≤
      (concrete.oracle.constant *
        (bounds.numeratorFloor / bounds.denominatorCeiling)) /
          concrete.workTranslation.queriesPerWork

namespace ConditionalArithmeticWorkCertificate

variable
  {Input : Type u} {Output : Type v} {Coordinate : Type w}
  [Fintype Input] [DecidableEq Input]
  {problem : OracleProblem Input Output Coordinate}
  {Kernel : Type x}
  {lift : ArithmeticKernelLift problem Kernel}
  {witness : ArithmeticAdversaryWitness lift}
  {bounds : ArithmeticKernelNormCertificate witness}
  {OracleAlgorithm : Type y} {ConcreteAttack : Type z}

theorem work_lower_bound
    (certificate :
      ConditionalArithmeticWorkCertificate
        witness bounds OracleAlgorithm ConcreteAttack)
    (attack : ConcreteAttack)
    (successful : certificate.concrete.reduction.concreteSuccess attack) :
    certificate.targetScale ≤
      certificate.concrete.workTranslation.work attack := by
  calc
    certificate.targetScale ≤
        (certificate.concrete.oracle.constant *
          (bounds.numeratorFloor / bounds.denominatorCeiling)) /
            certificate.concrete.workTranslation.queriesPerWork :=
      certificate.targetBound
    _ ≤
        (certificate.concrete.oracle.constant * witness.ratio) /
          certificate.concrete.workTranslation.queriesPerWork := by
      exact div_le_div_of_nonneg_right
        (mul_le_mul_of_nonneg_left
          bounds.ratio_lower_bound
          (le_of_lt certificate.concrete.oracle.constantPositive))
        (le_of_lt
          certificate.concrete.workTranslation.queriesPerWorkPositive)
    _ =
        (certificate.concrete.oracle.constant *
          certificate.concrete.oracle.witness.ratio) /
            certificate.concrete.workTranslation.queriesPerWork := by
      rw [certificate.sameWitness]
    _ ≤ certificate.concrete.workTranslation.work attack :=
      certificate.concrete.work_lower_bound attack successful

end ConditionalArithmeticWorkCertificate

end Mathematics.Resolution
```
