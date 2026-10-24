import Mathlib.Order.ConditionallyCompleteLattice.Basic
import Mathematics.Resolution.AdversaryInvariant
import Mathematics.Resolution.EffectiveArithmeticSource

/-!
# Resource-sensitive arithmetic adversary profile

Arithmetic data must first lift to an input-pair kernel.  The resulting global
operator norm and every query-local Schur contraction are retained together.
-/

namespace Mathematics.Resolution

universe u v w x

open scoped Matrix.Norms.L2Operator

/-- The explicit kernel lift `Φ_X : K_arith(X) → Herm(ℝ^{D_X})`. -/
structure ArithmeticKernelLift
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    (problem : OracleProblem Input Output Coordinate)
    (Kernel : Type x) where
  matrix : Kernel → Matrix Input Input ℂ
  hermitian :
    ∀ kernel, (matrix kernel).conjTranspose = matrix kernel

/--
An arithmetic kernel is admitted only when its lifted matrix is a feasible
general-adversary witness for the declared oracle problem.
-/
structure ArithmeticAdversaryWitness
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    {problem : OracleProblem Input Output Coordinate}
    {Kernel : Type x}
    (lift : ArithmeticKernelLift problem Kernel) where
  kernel : Kernel
  generalWitness : GeneralAdversaryWitness problem
  matrixExact :
    generalWitness.adversary.weights = lift.matrix kernel

namespace ArithmeticAdversaryWitness

variable
  {Input : Type u} {Output : Type v} {Coordinate : Type w}
  [Fintype Input] [DecidableEq Input]
  {problem : OracleProblem Input Output Coordinate}
  {Kernel : Type x}
  {lift : ArithmeticKernelLift problem Kernel}

def globalNorm
    (witness : ArithmeticAdversaryWitness lift) : ℝ :=
  ‖lift.matrix witness.kernel‖

def queryLocalNorm
    (witness : ArithmeticAdversaryWitness lift)
    (coordinate : Coordinate) : ℝ :=
  ‖problem.restrict (lift.matrix witness.kernel) coordinate‖

/-- The complete profile `𝔓_X(K)`, not a scalar trace. -/
structure NormProfile where
  global : ℝ
  queryLocal : Coordinate → ℝ

def normProfile
    (witness : ArithmeticAdversaryWitness lift) :
    NormProfile (Coordinate := Coordinate) where
  global := witness.globalNorm
  queryLocal := witness.queryLocalNorm

/--
The full resource-sensitive profile
`(‖Γ‖, {‖Γ ∘ Δᵢ‖}, c_enc, c_query, ε_red)`.
-/
structure ResourceSensitiveProfile where
  global : ℝ
  queryLocal : Coordinate → ℝ
  maxCoordinate : Coordinate
  maxExact :
    ∀ coordinate,
      queryLocal coordinate ≤ queryLocal maxCoordinate
  denominatorPositive : 0 < queryLocal maxCoordinate
  encodingCost : ResourceCost
  queryCost : ResourceCost
  reductionLoss : ℝ≥0

def resourceSensitiveProfile
    (witness : ArithmeticAdversaryWitness lift)
    (encodingCost queryCost : ResourceCost)
    (reductionLoss : ℝ≥0) :
    ResourceSensitiveProfile (Coordinate := Coordinate) where
  global := witness.globalNorm
  queryLocal := witness.queryLocalNorm
  maxCoordinate := witness.generalWitness.maxCoordinate
  maxExact := by
    intro coordinate
    unfold queryLocalNorm
    rw [← witness.matrixExact]
    exact witness.generalWitness.maximal coordinate
  denominatorPositive := by
    unfold queryLocalNorm
    rw [← witness.matrixExact]
    exact witness.generalWitness.denominatorPositive
  encodingCost := encodingCost
  queryCost := queryCost
  reductionLoss := reductionLoss

def ResourceSensitiveProfile.hardnessRatio
    (profile :
      ResourceSensitiveProfile (Coordinate := Coordinate)) : ℝ :=
  profile.global / profile.queryLocal profile.maxCoordinate

def ratio
    (witness : ArithmeticAdversaryWitness lift) : ℝ :=
  witness.generalWitness.ratio

theorem ratio_eq_global_div_queryLocal
    (witness : ArithmeticAdversaryWitness lift) :
    witness.ratio =
      witness.globalNorm /
        witness.queryLocalNorm witness.generalWitness.maxCoordinate := by
  unfold ratio GeneralAdversaryWitness.ratio globalNorm queryLocalNorm
  rw [witness.matrixExact]

theorem resourceSensitiveProfile_hardnessRatio_eq
    (witness : ArithmeticAdversaryWitness lift)
    (encodingCost queryCost : ResourceCost)
    (reductionLoss : ℝ≥0) :
    (witness.resourceSensitiveProfile
        encodingCost queryCost reductionLoss).hardnessRatio =
      witness.ratio := by
  rw [ratio_eq_global_div_queryLocal]
  rfl

/-- Hardness is monotone under one declared reduction up to overhead and loss. -/
structure ResourceProfileReduction
    (source target :
      ResourceSensitiveProfile (Coordinate := Coordinate)) where
  reductionCost : ResourceCost
  overhead : ℝ
  overheadPositive : 0 < overhead
  loss : ℝ≥0
  hardnessTransfer :
    source.hardnessRatio ≤
      overhead * target.hardnessRatio + (loss : ℝ)

end ArithmeticAdversaryWitness

/-- Ratios attainable through the declared arithmetic kernel lift. -/
def arithmeticAdversaryRatios
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    {problem : OracleProblem Input Output Coordinate}
    {Kernel : Type x}
    (lift : ArithmeticKernelLift problem Kernel) :
    Set ℝ :=
  Set.range
    (fun witness : ArithmeticAdversaryWitness lift => witness.ratio)

/-- Restricted arithmetic adversary coupling invariant `AAC_Φ`. -/
def arithmeticAdversaryCoupling
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    {problem : OracleProblem Input Output Coordinate}
    {Kernel : Type x}
    (lift : ArithmeticKernelLift problem Kernel) :
    ℝ :=
  sSup (arithmeticAdversaryRatios lift)

/-- Ratios attainable by arbitrary feasible adversary witnesses. -/
def generalAdversaryRatios
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    (problem : OracleProblem Input Output Coordinate) :
    Set ℝ :=
  Set.range
    (fun witness : GeneralAdversaryWitness problem => witness.ratio)

def generalAdversaryOptimum
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    (problem : OracleProblem Input Output Coordinate) :
    ℝ :=
  sSup (generalAdversaryRatios problem)

theorem arithmeticAdversaryRatios_subset_general
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    {problem : OracleProblem Input Output Coordinate}
    {Kernel : Type x}
    (lift : ArithmeticKernelLift problem Kernel) :
    arithmeticAdversaryRatios lift ⊆
      generalAdversaryRatios problem := by
  rintro value ⟨witness, rfl⟩
  exact ⟨witness.generalWitness, rfl⟩

/-- Restricted arithmetic optimization cannot exceed the general adversary optimum. -/
theorem arithmeticAdversaryCoupling_le_general
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    {problem : OracleProblem Input Output Coordinate}
    {Kernel : Type x}
    (lift : ArithmeticKernelLift problem Kernel)
    (nonempty : (arithmeticAdversaryRatios lift).Nonempty)
    (bounded : BddAbove (generalAdversaryRatios problem)) :
    arithmeticAdversaryCoupling lift ≤
      generalAdversaryOptimum problem := by
  apply csSup_le nonempty
  intro value member
  exact le_csSup bounded
    (arithmeticAdversaryRatios_subset_general lift member)

/-- Certified global numerator and uniform query-local denominator estimates. -/
structure ArithmeticKernelNormCertificate
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    [Fintype Input] [DecidableEq Input]
    {problem : OracleProblem Input Output Coordinate}
    {Kernel : Type x}
    {lift : ArithmeticKernelLift problem Kernel}
    (witness : ArithmeticAdversaryWitness lift) where
  numeratorFloor : ℝ
  denominatorCeiling : ℝ
  numeratorBound :
    numeratorFloor ≤ witness.globalNorm
  denominatorBound :
    ∀ coordinate,
      witness.queryLocalNorm coordinate ≤ denominatorCeiling

namespace ArithmeticKernelNormCertificate

variable
  {Input : Type u} {Output : Type v} {Coordinate : Type w}
  [Fintype Input] [DecidableEq Input]
  {problem : OracleProblem Input Output Coordinate}
  {Kernel : Type x}
  {lift : ArithmeticKernelLift problem Kernel}
  {witness : ArithmeticAdversaryWitness lift}

/-- The two norm inequalities imply the advertised adversary-ratio lower bound. -/
theorem ratio_lower_bound
    (certificate : ArithmeticKernelNormCertificate witness) :
    certificate.numeratorFloor /
        certificate.denominatorCeiling ≤
      witness.ratio := by
  rw [witness.ratio_eq_global_div_queryLocal]
  exact div_le_div₀
    (norm_nonneg _)
    certificate.numeratorBound
    witness.generalWitness.denominatorPositive
    (certificate.denominatorBound
      witness.generalWitness.maxCoordinate)

/-- Every certified witness gives a lower bound for the restricted supremum. -/
theorem coupling_lower_bound
    (certificate : ArithmeticKernelNormCertificate witness)
    (bounded : BddAbove (arithmeticAdversaryRatios lift)) :
    certificate.numeratorFloor /
        certificate.denominatorCeiling ≤
      arithmeticAdversaryCoupling lift := by
  exact certificate.ratio_lower_bound.trans
    (le_csSup bounded ⟨witness, rfl⟩)

end ArithmeticKernelNormCertificate

end Mathematics.Resolution
