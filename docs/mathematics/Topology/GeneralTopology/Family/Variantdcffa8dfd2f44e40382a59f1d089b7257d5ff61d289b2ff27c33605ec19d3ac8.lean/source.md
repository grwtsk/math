# Complete source: GRWTSK.Topology.GeneralTopology.Family.Variantdcffa8dfd2f44e40382a59f1d089b7257d5ff61d289b2ff27c33605ec19d3ac8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25fa92c3b46dab098195313a8f1e18838332e87f` · SHA-256 `dcffa8dfd2f44e40382a59f1d089b7257d5ff61d289b2ff27c33605ec19d3ac8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ConnesBitfield.Closure

/-!
# Scale-indexed random-bitfield family

Each arithmetic scale may have a different bit count, law carrier, matrix
dimension, and kernel.  Uniformity is represented by separate family bounds
rather than by pretending that one finite system is all scales at once.
Typical realizations and ensemble limits are optional extensions.
-/

namespace Mathematics.ConnesBitfield

universe uScale uTest

structure UniformConnesRandomBitfieldFamily
    (Scale : Type uScale)
    (TestFunction : Type uTest) where
  fiber :
    Scale →
      BoundaryLawSquareRootPackage
        Unit TestFunction Unit
  mass : Scale → ℝ
  discrepancyNorm : Scale → ℝ
  logarithmicOrder : Nat
  massAtLeastOne :
    ∀ scale, 1 ≤ mass scale
  fiberMass :
    ∀ scale,
      (fiber scale).assembly.mass () =
        mass scale
  fiberDiscrepancy :
    ∀ scale,
      (fiber scale).assembly.discrepancyNorm () =
        discrepancyNorm scale
  fiberLogarithmicOrder :
    ∀ scale,
      (fiber scale).assembly.logarithmicOrder =
        logarithmicOrder
  uniformContraction : ℝ≥0
  uniformContraction_lt_one :
    uniformContraction < 1
  contractionUniform :
    ∀ scale,
      (fiber scale).dynamics.contraction ≤
        uniformContraction
  traceConstant : ℝ
  traceConstantNonnegative :
    0 ≤ traceConstant
  traceConstantUniform :
    ∀ scale,
      (fiber scale).traceScale.traceConstant ≤
        traceConstant
  dimensionConstant : ℝ
  dimensionConstantNonnegative :
    0 ≤ dimensionConstant
  dimensionUniform :
    ∀ scale,
      ((fiber scale).spectral.dim : ℝ) ≤
        dimensionConstant * mass scale
  squareRootConstant : ℝ
  squareRootConstantNonnegative :
    0 ≤ squareRootConstant
  squareRootConstantUniform :
    ∀ scale,
      (fiber scale).assembly.totalConstant ≤
        squareRootConstant

structure UniformCommittedRealizationFamily
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (boundary :
      UniformConnesRandomBitfieldFamily
        Scale TestFunction) where
  committed :
    ∀ scale,
      CommittedRealizationExtension
        (boundary.fiber scale)
  influenceConstant : ℝ
  influenceConstantNonnegative :
    0 ≤ influenceConstant
  influenceConstantUniform :
    ∀ scale,
      (committed scale).influence.influenceConstant ≤
        influenceConstant
  concentrationTailConstant : ℝ
  gaussianRateFloor : ℝ
  concentrationTailConstantNonnegative :
    0 ≤ concentrationTailConstant
  gaussianRateFloorPositive :
    0 < gaussianRateFloor
  concentrationConstantsUniform :
    ∀ scale,
      (committed scale).concentration
          .mechanism.tailConstant ≤
        concentrationTailConstant ∧
      gaussianRateFloor ≤
        (committed scale).concentration
          .mechanism.gaussianRate

structure UniformFamilyLimitCertificate
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (boundary :
      UniformConnesRandomBitfieldFamily
        Scale TestFunction) where
  asymptoticFilter : Filter Scale
  limitingTrace : TestFunction → ℂ
  invariantTraceConverges :
    ∀ test,
      Tendsto
        (fun scale =>
          (boundary.fiber scale).trace.traceTerm
            () test)
        asymptoticFilter
        (𝓝 (limitingTrace test))
  empiricalSpectralMeasuresConverge : Prop
  empiricalSpectralMeasuresConvergeProof :
    empiricalSpectralMeasuresConverge
  uniformIntegrability : Prop
  uniformIntegrabilityProof :
    uniformIntegrability

def UniformConnesRandomBitfieldFamily
    .toSquareRootNormCertificate
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (family :
      UniformConnesRandomBitfieldFamily
        Scale TestFunction) :
    Mathematics.MobiusOntology.SquareRootNormCertificate
      Scale where
  mass := family.mass
  discrepancyNorm := family.discrepancyNorm
  logarithmicOrder := family.logarithmicOrder
  constant := family.squareRootConstant
  massAtLeastOne := family.massAtLeastOne
  constantNonnegative :=
    family.squareRootConstantNonnegative
  bound := by
    intro scale
    have fiberBound :=
      BoundaryLawSquareRootPackage.deterministicDiscrepancyBound
        (family.fiber scale) ()
    rw [family.fiberDiscrepancy scale,
      family.fiberMass scale,
      family.fiberLogarithmicOrder scale] at fiberBound
    have weightNonnegative :
        0 ≤
          Mathematics.MobiusOntology.squareRootWeight
            (family.mass scale)
            family.logarithmicOrder := by
      apply mul_nonneg
      · exact Real.sqrt_nonneg _
      · exact pow_nonneg
          (add_nonneg zero_le_one
            (Real.log_nonneg
              (family.massAtLeastOne scale)))
          _
    exact le_trans
      fiberBound
      (mul_le_mul_of_nonneg_right
        (family.squareRootConstantUniform scale)
        weightNonnegative)

theorem uniform_connes_random_bitfield_square_root
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (family :
      UniformConnesRandomBitfieldFamily
        Scale TestFunction) :
    Mathematics.MobiusOntology.SquareRootNormFinite
      family.mass
      family.discrepancyNorm
      family.logarithmicOrder :=
  Mathematics.MobiusOntology.squareRootNorm_finite
    family.toSquareRootNormCertificate

end Mathematics.ConnesBitfield
```
