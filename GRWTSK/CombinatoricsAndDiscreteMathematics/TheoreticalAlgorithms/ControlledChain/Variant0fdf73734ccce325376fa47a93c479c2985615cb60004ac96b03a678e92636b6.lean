import Mathematics.Attention.ControlledChain
import Mathematics.MobiusOntology.ErrorTransform

/-!
# Carrier-indexed controlled chains

The chain index enforces adjacency of independently typed carriers.  Its
scalar profile is merely a composition-preserving image of that typed proof.
-/

namespace Mathematics.MobiusOntology

open scoped NNReal

universe u

abbrev MetricCarrier := Mathematics.Attention.MetricCarrier
abbrev ControlledChain := Mathematics.Attention.ControlledChain

namespace ControlledChain

variable {X Y : MetricCarrier.{u}}

def collapse (chain : ControlledChain X Y) :
    Mathematics.Attention.ControlledArrow X Y :=
  Mathematics.Attention.ControlledChain.collapse chain

def runReference
    (chain : ControlledChain X Y) :
    X.carrier → Y.carrier :=
  Mathematics.Attention.ControlledChain.runReference chain

def runImplementation
    (chain : ControlledChain X Y) :
    X.carrier → Y.carrier :=
  Mathematics.Attention.ControlledChain.runImplementation chain

def profile (chain : ControlledChain X Y) :
    List ErrorFactor :=
  Mathematics.Attention.ControlledChain.profile chain

theorem final_discrepancy_le
    (chain : ControlledChain X Y)
    {implementationInput referenceInput : X.carrier}
    {initial : ℝ≥0}
    (initialSound :
      nndist implementationInput referenceInput ≤ initial) :
    nndist
        (chain.runImplementation implementationInput)
        (chain.runReference referenceInput) ≤
      Mathematics.Attention.ErrorFactor.propagateFrom
        initial chain.profile :=
  Mathematics.Attention.ControlledChain.run_error_bound
    chain initialSound

theorem closedForm
    (chain : ControlledChain X Y)
    {implementationInput referenceInput : X.carrier}
    {initial : ℝ≥0}
    (initialSound :
      nndist implementationInput referenceInput ≤ initial) :
    nndist
        (chain.runImplementation implementationInput)
        (chain.runReference referenceInput) ≤
      initial *
          Mathematics.Attention.ErrorFactor.downstreamGain chain.profile +
        Mathematics.Attention.ErrorFactor.weightedResidual chain.profile :=
  Mathematics.Attention.ControlledChain.run_error_bound_closedForm
    chain initialSound

/-- The continuous branch is accepted only under its declared final budget. -/
structure ContinuousBudgetCertificate
    (chain : ControlledChain X Y) where
  initial : ℝ≥0
  allowed : ℝ≥0
  propagated :
    Mathematics.Attention.ErrorFactor.propagateFrom
        initial chain.profile ≤
      allowed

end ControlledChain

end Mathematics.MobiusOntology
