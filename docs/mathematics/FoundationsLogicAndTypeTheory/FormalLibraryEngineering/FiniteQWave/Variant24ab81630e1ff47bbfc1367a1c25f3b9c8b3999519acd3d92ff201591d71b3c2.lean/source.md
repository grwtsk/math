# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteQWave.Variant24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da62625e088117b91e760a2517c950386689624b` · SHA-256 `24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Think.ModularWave

inductive FiniteWitnessStatus where
  | finite_witness_only
  | explicit_checked_theorem_artifact
  | residue_ledgered
  | refused
  deriving DecidableEq

structure ModularFormQWave where
  qBound : Nat
  coefficientCount : Nat
  qBoundDeclared : Bool
  theoremAuthority : Bool
  status : FiniteWitnessStatus

def ModularFormQWave.IsFinite (wave : ModularFormQWave) : Prop :=
  wave.qBoundDeclared = true /\
  wave.coefficientCount <= wave.qBound /\
  wave.status = FiniteWitnessStatus.finite_witness_only /\
  wave.theoremAuthority = false

structure EllipticCurveRecord where
  coefficientsExplicit : Bool
  discriminantChecked : Bool
  nonsingularChecked : Bool
  finiteGoodPrimePolicy : Bool
  modularityProofClaim : Bool
  status : FiniteWitnessStatus

def EllipticCurveRecord.IsAdmittedFiniteCurveRecord
    (curve : EllipticCurveRecord) : Prop :=
  curve.coefficientsExplicit = true /\
  curve.discriminantChecked = true /\
  curve.nonsingularChecked = true /\
  curve.finiteGoodPrimePolicy = true /\
  curve.modularityProofClaim = false /\
  curve.status = FiniteWitnessStatus.finite_witness_only

structure GoodPrimeTrace where
  primeAdmitted : Bool
  traceComputed : Bool
  finitePointCount : Bool
  modularityProofClaim : Bool
  status : FiniteWitnessStatus

def GoodPrimeTrace.IsFiniteWitness (trace : GoodPrimeTrace) : Prop :=
  trace.primeAdmitted = true /\
  trace.traceComputed = true /\
  trace.finitePointCount = true /\
  trace.modularityProofClaim = false /\
  trace.status = FiniteWitnessStatus.finite_witness_only

theorem modular_q_wave_is_finite_carrier
    (wave : ModularFormQWave)
    (hDeclared : wave.qBoundDeclared = true)
    (hBound : wave.coefficientCount <= wave.qBound)
    (hStatus : wave.status = FiniteWitnessStatus.finite_witness_only)
    (hNoAuthority : wave.theoremAuthority = false) :
    wave.IsFinite := by
  exact And.intro hDeclared (And.intro hBound (And.intro hStatus hNoAuthority))

theorem elliptic_curve_record_is_finite_if_discriminant_checked
    (curve : EllipticCurveRecord)
    (hCoefficients : curve.coefficientsExplicit = true)
    (hDiscriminant : curve.discriminantChecked = true)
    (hNonsingular : curve.nonsingularChecked = true)
    (hGoodPrimePolicy : curve.finiteGoodPrimePolicy = true)
    (hNoModularityProof : curve.modularityProofClaim = false)
    (hStatus : curve.status = FiniteWitnessStatus.finite_witness_only) :
    curve.IsAdmittedFiniteCurveRecord := by
  exact
    And.intro hCoefficients
      (And.intro hDiscriminant
        (And.intro hNonsingular
          (And.intro hGoodPrimePolicy
            (And.intro hNoModularityProof hStatus))))

theorem good_prime_trace_is_finite_witness
    (trace : GoodPrimeTrace)
    (hPrime : trace.primeAdmitted = true)
    (hTrace : trace.traceComputed = true)
    (hPointCount : trace.finitePointCount = true)
    (hNoModularityProof : trace.modularityProofClaim = false)
    (hStatus : trace.status = FiniteWitnessStatus.finite_witness_only) :
    trace.IsFiniteWitness := by
  exact
    And.intro hPrime
      (And.intro hTrace
        (And.intro hPointCount (And.intro hNoModularityProof hStatus)))

end Think.ModularWave
```
