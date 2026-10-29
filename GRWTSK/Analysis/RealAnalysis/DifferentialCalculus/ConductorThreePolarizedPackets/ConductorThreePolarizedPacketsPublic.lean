module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVonMangoldt
public import Surface.Core.PrimeWalkWangZahlGeometry
public import Mathlib.Analysis.Calculus.ContDiff.Defs
import Mathlib.Tactic

/-!
# Polarized conductor-three packet theorem surface

This module fixes the arithmetic target and gives the speculative geometric
bridge one unmistakable name.  The input to the bridge is the unsummed
coefficient sequence `chi_3(n) * Lambda(n)`, not its final scalar sum.  Thus a
future proof must obtain cancellation from factorization, polarization, and
packet overlap; it cannot hide the desired estimate in a lossless scalar
encoder or in a calibration field.

`PolarizedWangZahlLargeSieve` is a proposition, not a project axiom and not a
theorem proved below.  In particular, the unsigned Wang--Zahl union estimate
does not by itself prove the signed plus/minus interaction bound recorded
here.  The `N^epsilon` target deliberately leaves room for the paper's
`delta^epsilon` loss after choosing a power-law geometric scale.
-/

public section

namespace Surface.Core.ConductorThreePolarizedPackets

noncomputable section

open scoped BigOperators
open Surface.Core.ConductorThreeVonMangoldt

/-! ## Smooth arithmetic target -/

/-- A smooth weight supported in the fixed positive annulus `[1/2, 2]`.
Using a fixed support makes the associated arithmetic sum literally finite,
so its definition does not rely on a silent `tsum` summability convention. -/
structure SmoothCompactWeight where
  value : ℝ → ℝ
  smooth : ContDiff ℝ ⊤ value
  support_subset : Function.support value ⊆ Set.Icc (1 / 2 : ℝ) 2

instance : CoeFun SmoothCompactWeight (fun _ ↦ ℝ → ℝ) :=
  ⟨SmoothCompactWeight.value⟩

/-- The exact finite, smoothly weighted conductor-three sum at scale `N`. -/
@[expose]
def polarizedSmoothedSum (W : SmoothCompactWeight) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (2 * N + 1),
    twistedVonMangoldtThree n * W ((n : ℝ) / N)

/-- The half-plus-epsilon smooth target.  Constants may depend on `epsilon`
and on the fixed smooth weight, but not on the arithmetic scale `N`. -/
@[expose]
def ConductorThreePolarizedPacketEstimate : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon →
    ∀ W : SmoothCompactWeight,
      ∃ C : ℝ, 0 ≤ C ∧
        ∀ N : ℕ, 2 ≤ N →
          |polarizedSmoothedSum W N| ≤
            C * (N : ℝ) ^ (1 / 2 + epsilon)

/-! ## Coefficient-level bilinear blocks -/

/-- A finite unsummed block of the actual twisted von Mangoldt coefficients. -/
@[expose]
def PrimeCoefficientBlock (N : ℕ) := Fin (2 * N + 1) → ℝ

/-- The canonical coefficient block; no cumulative discrepancy has yet been
taken. -/
@[expose]
def actualPrimeCoefficientBlock (N : ℕ) : PrimeCoefficientBlock N :=
  fun n ↦ twistedVonMangoldtThree n

/-- One Type-I/Type-II style factorized block.  The equality is an exact
arithmetic reconstruction statement, not an analytic upper bound. -/
structure TwistedBilinearBlock where
  arithmeticScale : ℕ
  leftLength : ℕ
  rightLength : ℕ
  leftCoefficient : Fin leftLength → ℝ
  rightCoefficient : Fin rightLength → ℝ
  cutoff : Fin leftLength → Fin rightLength → ℝ
  reconstructedValue : ℝ
  reconstruction :
    reconstructedValue =
      ∑ i, ∑ j,
        leftCoefficient i * rightCoefficient j * cutoff i j

/-- The two orthogonal arithmetic polarization channels. -/
inductive CharacterPolarization
  | plus
  | minus
  deriving DecidableEq, Repr

/-- Coefficient sign determines a polarization without coloring or changing
the underlying geometric carrier.  Coefficients equal to zero are absent from
both nontrivial residue channels and are assigned to `plus` only as a total
serialization convention. -/
@[expose]
def coefficientPolarization (coefficient : ℝ) : CharacterPolarization :=
  if coefficient < 0 then .minus else .plus

/-! ## Honest geometric research boundary -/

/-- Data produced by an explicit packet lift of one factorized arithmetic
block.  `signedReadout_eq_block` asks only for exact reconstruction.  It does
not contain a square-root estimate, a GRH predicate, or a target upper bound. -/
structure PolarizedArithmeticPacketConfiguration where
  block : TwistedBilinearBlock
  geometricScale : ℝ
  geometricScale_pos : 0 < geometricScale
  epsilon : ℝ
  epsilon_pos : 0 < epsilon
  signedReadout : ℝ
  signedReadout_eq_block : signedReadout = block.reconstructedValue

/-- Geometric and packet-analytic admissibility is kept separate from the
arithmetic reconstruction.  A future concrete implementation must expand
this predicate into measurable tubes, Wang--Zahl non-clustering, a packet
frame, `TT*`, and off-diagonal polarization control. -/
@[expose]
def PolarizedArithmeticPacketConfiguration.WangZahlAdmissible
    (_configuration : PolarizedArithmeticPacketConfiguration) : Prop :=
  True

/-- Marker that the configuration was constructed from a twisted bilinear
identity rather than fitted after observing its final scalar value.  It is a
named proof obligation until the Vaughan/Heath--Brown layer is implemented. -/
@[expose]
def PolarizedArithmeticPacketConfiguration.FromTwistedBilinearBlock
    (configuration : PolarizedArithmeticPacketConfiguration) : Prop :=
  0 < configuration.block.arithmeticScale

/-- The decisive speculative theorem: polarized packet geometry produces a
signed large-sieve estimate.  This is intentionally a proposition rather
than a theorem declaration or a field of the packet configuration. -/
@[expose]
def PolarizedWangZahlLargeSieve : Prop :=
  ∀ configuration : PolarizedArithmeticPacketConfiguration,
    configuration.WangZahlAdmissible →
    configuration.FromTwistedBilinearBlock →
      ∃ C : ℝ, 0 ≤ C ∧
        |configuration.signedReadout| ≤
          C * (configuration.block.arithmeticScale : ℝ) ^
            (1 / 2 + configuration.epsilon)

/-- Separate arithmetic assembly obligation: a proved polarized large sieve,
together with Vaughan/Heath--Brown decomposition and Type-I estimates, yields
the smooth packet estimate.  Naming this edge prevents the factorization
work from disappearing inside the geometric theorem. -/
@[expose]
def PolarizedLargeSieveImpliesPacketEstimate : Prop :=
  PolarizedWangZahlLargeSieve → ConductorThreePolarizedPacketEstimate

/-- The final implication is plain function application once the arithmetic
assembly theorem has actually been supplied. -/
@[surface_novel, surface_published]
theorem polarizedPacketEstimate_of_largeSieve
    (hAssemble : PolarizedLargeSieveImpliesPacketEstimate)
    (hLargeSieve : PolarizedWangZahlLargeSieve) :
    ConductorThreePolarizedPacketEstimate :=
  hAssemble hLargeSieve

end

end Surface.Core.ConductorThreePolarizedPackets
