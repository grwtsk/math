/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import Mathlib.RingTheory.Kaehler.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicSignedResidueWaveform
import Mathlib.Tactic

/-!
# Kähler over Z, rationalization over Q, full integer source and residue gauge

The two meanings of Kahler are separate. The universal differential
module Ω[A/Z] is taken BEFORE Ω[A/Q]; its kernel and original source are
not silently discarded. Separately, the integral symplectic lattice with
J(x,y)=(-y,x) has a genuine positive compatible quadratic form, first
over Z and then over Q. This chosen model does NOT establish a canonical
polarization on the user's original CM variety.

The arithmetic source is the original integer-labelled Mobius coefficient
before rational and complex casting, with every parity and additive
ZMod(d*d) class included. A U(1) gauge acts on the sectors while its
contragredient detector returns the exact original signed sum. This is
not a physical field-strength law or an all-rate arithmetic estimate.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint

universe u
variable (A : Type u) [CommRing A] [Algebra ℚ A]

/-- Exact original universal Kähler differential module relative to Z. -/
abbrev DifferentialZ := KaehlerDifferential ℤ A

/-- Exact rational-base differential module relative to Q. -/
abbrev DifferentialQ := KaehlerDifferential ℚ A

/-- Genuine natural map of Kähler differentials for Z -> Q -> A. -/
def differentialZtoQ : DifferentialZ A →ₗ[A] DifferentialQ A :=
  KaehlerDifferential.map ℤ ℚ A A

theorem differentialZtoQ_D (a : A) :
    differentialZtoQ A (KaehlerDifferential.D ℤ A a) =
      KaehlerDifferential.D ℚ A a :=
  KaehlerDifferential.map_D ℤ ℚ A A a

theorem differentialZtoQ_surjective :
    Function.Surjective (differentialZtoQ A) :=
  KaehlerDifferential.map_surjective

/-- Original integer-base differential is retained in its own field. -/
def differentialGraph (ω : DifferentialZ A) : DifferentialZ A × DifferentialQ A :=
  (ω, differentialZtoQ A ω)

theorem differentialGraph_injective : Function.Injective (differentialGraph A) := by
  intro ω η h
  exact congrArg Prod.fst h

/-- Integral symplectic coordinate lattice for a separately chosen rank. -/
abbrev IntegralPolarizedLattice (g : ℕ) := Fin g → ℤ × ℤ

def integralJ {g : ℕ} (v : IntegralPolarizedLattice g) :
    IntegralPolarizedLattice g :=
  fun i => (-(v i).2, (v i).1)

/-- Original integral alternating form, BEFORE casting to Q. -/
def integralOmega {g : ℕ}
    (v w : IntegralPolarizedLattice g) : ℤ :=
  ∑ i : Fin g, (v i).1 * (w i).2 - (v i).2 * (w i).1

/-- Positive quadratic pairing of this particular integral polarization. -/
def integralQuadratic {g : ℕ} (v : IntegralPolarizedLattice g) : ℤ :=
  ∑ i : Fin g, ((v i).1 ^ 2 + (v i).2 ^ 2)

theorem integralOmega_J {g : ℕ} (v : IntegralPolarizedLattice g) :
    integralOmega v (integralJ v) = integralQuadratic v := by
  unfold integralOmega integralJ integralQuadratic
  apply Finset.sum_congr rfl
  intro i _
  ring

theorem integralQuadratic_nonneg {g : ℕ}
    (v : IntegralPolarizedLattice g) : 0 ≤ integralQuadratic v := by
  unfold integralQuadratic
  exact Finset.sum_nonneg (fun i _ =>
    add_nonneg (sq_nonneg _) (sq_nonneg _))

/-- Integral source, rational source, and complex Hilbert coordinate
presentations are distinct stages rather than a canonical CM isometry. -/
def rationalizeLattice {g : ℕ} (v : IntegralPolarizedLattice g) :
    Fin g → ℚ × ℚ :=
  fun i => ((v i).1, (v i).2)

def complexLatticeCoordinate {g : ℕ} (v : IntegralPolarizedLattice g) :
    EuclideanSpace ℂ (Fin g) :=
  WithLp.toLp 2 (fun i =>
    (((v i).1 : ℚ) : ℂ) + Complex.I * ((((v i).2 : ℚ) : ℂ)))

/-- Full ORIGINAL source integer labels, not a quotient modulo d squared. -/
abbrev IntegerLabel (j : ℕ) := {n : ℕ // n ∈ indices j}

def integerMobius (j : ℕ) (n : IntegerLabel j) : ℤ :=
  ArithmeticFunction.moebius n.val

def rationalMobius (j : ℕ) (n : IntegerLabel j) : ℚ :=
  (integerMobius j n : ℚ)

def originalComplexResponse (j : ℕ) (t : ℝ) (n : IntegerLabel j) : ℂ :=
  (rationalMobius j n : ℂ) * (pickupResponse n.val t : ℂ)

/-- No original n is identified merely because two labels share a residue. -/
abbrev FullIntegerPacket (j : ℕ) := EuclideanSpace ℂ (IntegerLabel j)

def fullOriginalPacket (j : ℕ) (t : ℝ) : FullIntegerPacket j :=
  WithLp.toLp 2 (fun n => originalComplexResponse j t n)

/-- Retain both parities and EVERY additive class, including nonunits. -/
abbrev Sector (d : ℕ) := Fin 2 × ZMod (d * d)

abbrev SectorPacket (d : ℕ) := EuclideanSpace ℂ (Sector d)

def originalSectorPacket (j d : ℕ) [NeZero d] (t : ℝ) :
    SectorPacket d :=
  WithLp.toLp 2 (fun ra =>
    (classWave j d ra.1.val ra.2 t : ℂ))

structure Gauge (d : ℕ) where
  phase : Sector d → ℂ
  phase_unit : ∀ i, ‖phase i‖ = 1

theorem Gauge.nonzero (d : ℕ) (g : Gauge d) (i : Sector d) :
    g.phase i ≠ 0 := by
  intro h
  have hh := g.phase_unit i
  simp [h] at hh

def gaugePacket (d : ℕ) (g : Gauge d) (x : SectorPacket d) :
    SectorPacket d :=
  WithLp.toLp 2 (fun i => g.phase i * x i)

theorem gaugePacket_norm_sq (d : ℕ) (g : Gauge d)
    (x : SectorPacket d) :
    ‖gaugePacket d g x‖ ^ 2 = ‖x‖ ^ 2 := by
  rw [EuclideanSpace.norm_sq_eq, EuclideanSpace.norm_sq_eq]
  apply Finset.sum_congr rfl
  intro i _
  simp [gaugePacket, norm_mul, g.phase_unit]

/-- Contragredient detector is REQUIRED for gauge-invariant signed readout. -/
def detector (d : ℕ) (g : Gauge d) (x : SectorPacket d) : ℂ :=
  ∑ r : Fin 2, ∑ a : ZMod (d * d),
    (g.phase (r, a))⁻¹ * x (r, a)

def rawDetector (d : ℕ) (x : SectorPacket d) : ℂ :=
  ∑ r : Fin 2, ∑ a : ZMod (d * d), x (r, a)

theorem detector_gauge (d : ℕ) (g : Gauge d) (x : SectorPacket d) :
    detector d g (gaugePacket d g x) = rawDetector d x := by
  unfold detector rawDetector
  apply Finset.sum_congr rfl
  intro r _
  apply Finset.sum_congr rfl
  intro a _
  have h := Gauge.nonzero d g (r, a)
  simp [gaugePacket, mul_assoc, h]

/-- This gauge ledger never erases the original integer labels or the
independent integral differential; only complex sector coordinates rotate. -/
def fullLedger (d j : ℕ) [NeZero d]
    (ω : DifferentialZ A) (t : ℝ) (g : Gauge d) :
    (DifferentialZ A × DifferentialQ A) ×
      (FullIntegerPacket j × SectorPacket d) :=
  (differentialGraph A ω,
   (fullOriginalPacket j t, gaugePacket d g (originalSectorPacket j d t)))

/-- Source-exact signed energy remains the ORIGINAL pickupEnergy only when
the contragredient detector is used and all sector cross terms are kept. -/
theorem originalGaugeEnergy (d j : ℕ) [NeZero d] (g : Gauge d)
    (hread : ∀ t : ℝ,
      (rawDetector d (originalSectorPacket j d t)).re = completeWave j d t) :
    pickupEnergy (dyadicTime j) =
      ∫ t in (0 : ℝ)..dyadicTime j,
        ((detector d g (gaugePacket d g
          (originalSectorPacket j d t))).re) ^ 2 := by
  rw [← completeResidueEnergy_eq_pickupEnergy j d]
  unfold completeResidueEnergy
  apply intervalIntegral.integral_congr
  intro t _
  rw [detector_gauge, hread]

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor
