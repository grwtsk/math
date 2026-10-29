import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathematics.MobiusOntology.PerturbedBoundary

/-!
# Contraction-to-arithmetic scale bridge

Iteration-depth decay and arithmetic square-root scale remain independent
until this certificate identifies depth, mass, and the quantitative bound.
-/

namespace Mathematics.MobiusOntology

open scoped NNReal

def ContractionScaleRatio
    (contraction : ℝ≥0)
    (branchingBase : ℝ) : ℝ :=
  -Real.log contraction / Real.log branchingBase

structure ContractionScaleCertificate
    (Index : Type*) where
  contraction : ℝ≥0
  contraction_pos : 0 < contraction
  contraction_lt_one : contraction < 1
  branchingBase : ℝ
  branchingBase_gt_one : 1 < branchingBase
  depth : Index → ℕ
  arithmeticMass : Index → ℝ
  massPositive :
    ∀ index,
      0 < arithmeticMass index
  massFromDepth :
    ∀ index,
      arithmeticMass index =
        branchingBase ^ depth index
  ratioAtLeastHalf :
    (1 / 2 : ℝ) ≤
      ContractionScaleRatio
        contraction branchingBase
  squareRootDecay :
    ∀ index,
      (contraction : ℝ) ^ depth index ≤
        1 / Real.sqrt (arithmeticMass index)

theorem contraction_reaches_squareRoot_scale
    {Index : Type*}
    (certificate : ContractionScaleCertificate Index)
    (index : Index) :
    (certificate.contraction : ℝ) ^
        certificate.depth index ≤
      1 /
        Real.sqrt
          (certificate.arithmeticMass index) :=
  certificate.squareRootDecay index

structure ContractionToDiscrepancyCertificate
    (Index : Type*) where
  scale : ContractionScaleCertificate Index
  discrepancy : Index → ℝ
  constant : ℝ
  constant_nonneg : 0 ≤ constant
  logarithmicPower : Nat
  bound :
    ∀ index,
      |discrepancy index| ≤
        constant *
          (1 /
            Real.sqrt
              (scale.arithmeticMass index)) *
          (1 + Real.log (scale.arithmeticMass index)) ^
            logarithmicPower

theorem contraction_discrepancy_bound
    {Index : Type*}
    (certificate :
      ContractionToDiscrepancyCertificate Index)
    (index : Index) :
    |certificate.discrepancy index| ≤
      certificate.constant *
        (1 /
          Real.sqrt
            (certificate.scale.arithmeticMass index)) *
        (1 +
          Real.log
            (certificate.scale.arithmeticMass index)) ^
          certificate.logarithmicPower :=
  certificate.bound index

end Mathematics.MobiusOntology
