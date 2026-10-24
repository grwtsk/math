import MathDiscovery.Kernel.Feature
import MathDiscovery.Kernel.Id

/-!
# Authority-labelled kernel channels

Each channel is already a positive kernel and carries a nonnegative weight.
The authority tag is provenance metadata; numerical behavior never promotes
that metadata to theorem authority.
-/

noncomputable section

namespace MathDiscovery.Kernel

open scoped ComplexOrder

universe u

variable {Index : Type u}

/-- Closed provenance classes for the first intrinsic Lean feature policy. -/
inductive FeatureChannelAuthority
  | elaboratedType
  | formalDependency
  | typeclassRequirement
  | declarationShape
  | proofTermStructure
  | documentation
  | contextualMetadata
  | externalSemanticEmbedding
  deriving DecidableEq, Repr

/-- One nonnegatively weighted, already-positive feature channel. -/
structure FeatureKernelChannel (Index : Type u) where
  id : ChannelId
  authority : FeatureChannelAuthority
  kernel : PositiveKernel Index
  weight : ℝ
  weight_nonnegative : 0 ≤ weight

/-- The positive kernel contributed by one weighted channel. -/
def FeatureKernelChannel.weighted
    (channel : FeatureKernelChannel Index) : PositiveKernel Index where
  matrix := channel.weight • channel.kernel.matrix
  positiveSemidefinite :=
    channel.kernel.positiveSemidefinite.smul channel.weight_nonnegative

/-- A finite nonnegative sum of positive feature channels. -/
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

/-- A channel specified directly by a finite feature table. -/
structure FeatureChannelModel (Index : Type u) where
  id : ChannelId
  authority : FeatureChannelAuthority
  features : FiniteFeatureFamily Index
  weight : ℝ
  weight_nonnegative : 0 ≤ weight

/-- Compile a feature-table channel to its positive kernel channel. -/
def FeatureChannelModel.toKernelChannel
    (model : FeatureChannelModel Index) : FeatureKernelChannel Index where
  id := model.id
  authority := model.authority
  kernel := model.features.kernel
  weight := model.weight
  weight_nonnegative := model.weight_nonnegative

end MathDiscovery.Kernel
