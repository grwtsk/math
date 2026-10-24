import DAF.Rhetorical.Kernel.Core
import DAF.Universe.Authority
import Mathlib.Analysis.Complex.Basic

/-!
# Authority-labelled feature kernels

Finite feature channels generate positive kernels rather than accepting an
arbitrary table of pairwise scores.  Nonnegative weighted sums preserve this
property.  Channel authority is retained as metadata and never promoted by
the kernel construction.
-/

noncomputable section

namespace DAF.Rhetorical

open scoped ComplexOrder

universe u

variable {Index : Type u}

/-- A scalar feature generates the rank-one kernel `conj(F i) * F j`. -/
def scalarFeatureKernel (feature : Index → ℂ) : PositiveKernel Index where
  matrix i j := star (feature i) * feature j
  positiveSemidefinite := by
    constructor
    · ext i j
      simp [mul_comm]
    · intro coefficients
      let value := coefficients.sum fun i coefficient =>
        coefficient * feature i
      have factorization :
          coefficients.sum (fun i coefficient =>
            coefficients.sum (fun j other =>
              star coefficient * (star (feature i) * feature j) * other)) =
            star value * value := by
        calc
          _ = coefficients.sum (fun i coefficient =>
                star (coefficient * feature i) * value) := by
            apply Finsupp.sum_congr
            intro i _
            rw [Finsupp.mul_sum]
            apply Finsupp.sum_congr
            intro j _
            rw [star_mul]
            ring
          _ = star value * value := by
            unfold value
            rw [star_finsuppSum, Finsupp.sum_mul]
            apply Finsupp.sum_congr
            intro _ _
            rfl
      rw [factorization]
      simpa using star_left_conjugate_nonneg
        (show (0 : ℂ) ≤ 1 by simp) value

@[simp]
theorem scalarFeatureKernel_apply
    (feature : Index → ℂ) (i j : Index) :
    scalarFeatureKernel feature i j = star (feature i) * feature j :=
  rfl

/-- A finite vector-valued feature kernel is the sum of its scalar channel
kernels. -/
def finiteFeatureKernel
    {Feature : Type} [Fintype Feature]
    (feature : Index → Feature → ℂ) : PositiveKernel Index where
  matrix := ∑ coordinate,
    (scalarFeatureKernel (fun index => feature index coordinate)).matrix
  positiveSemidefinite := Matrix.posSemidef_sum Finset.univ fun coordinate _ =>
    (scalarFeatureKernel (fun index => feature index coordinate)).positiveSemidefinite

@[simp]
theorem finiteFeatureKernel_apply
    {Feature : Type} [Fintype Feature]
    (feature : Index → Feature → ℂ) (i j : Index) :
    finiteFeatureKernel feature i j =
      ∑ coordinate, star (feature i coordinate) * feature j coordinate := by
  change (∑ coordinate,
    (scalarFeatureKernel (fun index => feature index coordinate)).matrix) i j = _
  rw [Matrix.sum_apply]
  rfl

/-- Closed authority label for one feature channel.  This is retained beside
the channel; it is not inferred from numerical behavior. -/
inductive FeatureChannelAuthority
  | formalDependency
  | glossaryDefinition
  | theoremHypothesis
  | executableRepresentation
  | runtimeConformance
  | externalSemanticEmbedding
  | roleSpecificRhetorical
  deriving DecidableEq, Repr

/-- One nonnegatively weighted, already-positive feature channel. -/
structure FeatureKernelChannel (Index : Type u) where
  id : Universe.StableId
  authority : FeatureChannelAuthority
  kernel : PositiveKernel Index
  weight : ℝ
  weight_nonnegative : 0 ≤ weight

/-- The weighted kernel contributed by one channel. -/
def FeatureKernelChannel.weighted
    (channel : FeatureKernelChannel Index) : PositiveKernel Index where
  matrix := channel.weight • channel.kernel.matrix
  positiveSemidefinite :=
    channel.kernel.positiveSemidefinite.smul channel.weight_nonnegative

/-- Preferred production semantic construction: a finite nonnegative sum of
authority-labelled positive feature channels. -/
def featureChannelKernel
    {Channel : Type} [Fintype Channel]
    (channels : Channel → FeatureKernelChannel Index) : PositiveKernel Index where
  matrix := ∑ channel, (channels channel).weighted.matrix
  positiveSemidefinite := Matrix.posSemidef_sum Finset.univ fun channel _ =>
    (channels channel).weighted.positiveSemidefinite

@[simp]
theorem featureChannelKernel_apply
    {Channel : Type} [Fintype Channel]
    (channels : Channel → FeatureKernelChannel Index)
    (i j : Index) :
    featureChannelKernel channels i j =
      ∑ channel, (channels channel).weight *
        (channels channel).kernel i j := by
  change (∑ channel, (channels channel).weighted.matrix) i j = _
  rw [Matrix.sum_apply]
  apply Finset.sum_congr rfl
  intro channel _
  simp [FeatureKernelChannel.weighted, Algebra.smul_def]

end DAF.Rhetorical
