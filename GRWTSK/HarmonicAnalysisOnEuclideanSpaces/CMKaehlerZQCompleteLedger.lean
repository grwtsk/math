/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMKaehlerZQGaugeFullReturn
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMKaehlerZQResidueLinks
import Mathlib.Tactic

/-!
# Complete Kähler Z→Q and ORIGINAL integer/residue-gauge graph

Retain the initial integral differential and its rational image,
the actual integral polarized coordinate lattice, ALL original integer
source entries and the complete gauged parity/additive residue packet.
The integer-to-sector projection is deliberately NONINJECTIVE; the
entire original packet is kept separately, and all class equalities
are proved by summing its original signed integer entries.

The positive complex Hilbert coordinate norm is not the coherent
signed original arithmetic pickupEnergy. Full source readout requires
the contragredient detector; the original cross terms remain.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQCompleteLedger

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQResidueLinks
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugeFullReturn
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.RiemannHypothesis.CCC

/-- Recover original parity and additive nonunit residue from the
FULL integer label without using a quotient to identify its source. -/
def sourceSector (d : ℕ) [NeZero d] {j : ℕ} (n : IntegerLabel j) :
    Sector d :=
  (⟨n.val % 2, Nat.mod_lt _ (by norm_num)⟩, classCoordinate d n.val)

/-- The original integer packet is aggregated into ALL original classes. -/
def aggregateFullPacket (j d : ℕ) [NeZero d]
    (x : FullIntegerPacket j) : SectorPacket d :=
  WithLp.toLp 2 (fun ra : Sector d =>
    ∑ n : IntegerLabel j,
      if n.val % 2 = ra.1.val ∧ classCoordinate d n.val = ra.2
      then x n else 0)

@[simp] theorem aggregateFullPacket_apply (j d : ℕ) [NeZero d]
    (x : FullIntegerPacket j) (ra : Sector d) :
    aggregateFullPacket j d x ra =
      ∑ n : IntegerLabel j,
        if n.val % 2 = ra.1.val ∧ classCoordinate d n.val = ra.2
        then x n else 0 := rfl

/-- Casting first from the original integer mu(n) into Q and then into C
does not change the ORIGINAL real source response. -/
theorem originalComplexResponse_source (j : ℕ) (t : ℝ)
    (n : IntegerLabel j) :
    originalComplexResponse j t n =
      (moebiusReal n.val * pickupResponse n.val t : ℂ) := by
  unfold originalComplexResponse rationalMobius integerMobius moebiusReal
  push_cast
  rfl

/-- Actual source exactness: all full integer labels reproduce the
unaltered signed classes in the complete finite parity/residue packet. -/
theorem aggregateFullPacket_original (j d : ℕ) [NeZero d] (t : ℝ) :
    aggregateFullPacket j d (fullOriginalPacket j t) =
      originalSectorPacket j d t := by
  apply PiLp.ext
  intro ra
  rw [aggregateFullPacket_apply]
  simp only [fullOriginalPacket, PiLp.toLp_apply]
  simp_rw [originalComplexResponse_source]
  rw [Finset.sum_attach]
  unfold classWave
  push_cast
  rfl

/-- Use the SAME U(1) sector phase on EVERY original integer label,
with its original tag, including nonunit, parity and zero symbols. -/
def gaugeIntegerPacket (d : ℕ) [NeZero d] {j : ℕ}
    (g : Gauge d) (x : FullIntegerPacket j) : FullIntegerPacket j :=
  WithLp.toLp 2 (fun n => g.phase (sourceSector d n) * x n)

@[simp] theorem gaugeIntegerPacket_apply (d : ℕ) [NeZero d] {j : ℕ}
    (g : Gauge d) (x : FullIntegerPacket j) (n : IntegerLabel j) :
    gaugeIntegerPacket d g x n = g.phase (sourceSector d n) * x n := rfl

/-- No original labelled Hilbert energy is changed by a U(1) rephasing. -/
theorem gaugeIntegerPacket_norm_sq (d : ℕ) [NeZero d] {j : ℕ}
    (g : Gauge d) (x : FullIntegerPacket j) :
    ‖gaugeIntegerPacket d g x‖ ^ 2 = ‖x‖ ^ 2 := by
  rw [EuclideanSpace.norm_sq_eq, EuclideanSpace.norm_sq_eq]
  apply Finset.sum_congr rfl
  intro n _
  simp [gaugeIntegerPacket_apply, norm_mul, g.phase_unit]

/-- Gauge then aggregate is EXACTLY aggregate then gauge. This is the
actual source comparison, not a postulated sector-array relationship. -/
theorem aggregateFullPacket_gauge (j d : ℕ) [NeZero d]
    (g : Gauge d) (x : FullIntegerPacket j) :
    aggregateFullPacket j d (gaugeIntegerPacket d g x) =
      gaugePacket d g (aggregateFullPacket j d x) := by
  apply PiLp.ext
  intro ra
  rw [aggregateFullPacket_apply, aggregateFullPacket_apply]
  simp only [gaugeIntegerPacket_apply, gaugePacket, PiLp.toLp_apply]
  rw [← Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hc : n.val % 2 = ra.1.val ∧ classCoordinate d n.val = ra.2
  · have heq : sourceSector d n = ra := by
      apply Prod.ext
      · apply Fin.ext
        exact hc.1
      · exact hc.2
    simp [hc, heq]
  · simp [hc]

/-- A mixed source ledger retains genuine differential, its rational image,
chosen integral polarized coordinates, original full integer array, ALL
gauged sectors, and every ordered link. -/
structure WholeSource (A : Type*) [CommRing A] [Algebra ℚ A]
    (g d j : ℕ) where
  differentialIntegral : DifferentialZ A
  differentialRational : DifferentialQ A
  polarizedIntegral : IntegralPolarizedLattice g
  polarizedComplex : EuclideanSpace ℂ (Fin g)
  originalInteger : FullIntegerPacket j
  gaugedInteger : FullIntegerPacket j
  gaugedSectors : SectorPacket d
  sectorLinks : Links d

/-- Do not infer any unspecified geometric identification between a
Kähler differential and an integral polarized period lattice. They are
both independently retained with their actual maps. -/
def originalWholeSource (A : Type*) [CommRing A] [Algebra ℚ A]
    (g d j : ℕ) [NeZero d]
    (ω : DifferentialZ A) (v : IntegralPolarizedLattice g)
    (U : Links d) (γ : Gauge d) (t : ℝ) :
    WholeSource A g d j where
  differentialIntegral := ω
  differentialRational := differentialZtoQ A ω
  polarizedIntegral := v
  polarizedComplex := complexLatticeCoordinate v
  originalInteger := fullOriginalPacket j t
  gaugedInteger := gaugeIntegerPacket d γ (fullOriginalPacket j t)
  gaugedSectors := gaugePacket d γ (originalSectorPacket j d t)
  sectorLinks := gaugeLinks d γ U

/-- The complete gauged sector is exactly the aggregation of the complete
gauged ORIGINAL integer source, with all labels still present. -/
theorem wholeSource_sector_exact (A : Type*) [CommRing A] [Algebra ℚ A]
    (g d j : ℕ) [NeZero d]
    (ω : DifferentialZ A) (v : IntegralPolarizedLattice g)
    (U : Links d) (γ : Gauge d) (t : ℝ) :
    (originalWholeSource A g d j ω v U γ t).gaugedSectors =
      aggregateFullPacket j d
        (originalWholeSource A g d j ω v U γ t).gaugedInteger := by
  change gaugePacket d γ (originalSectorPacket j d t) =
    aggregateFullPacket j d (gaugeIntegerPacket d γ (fullOriginalPacket j t))
  rw [aggregateFullPacket_gauge, aggregateFullPacket_original]

/-- The exact original signed coherent waveform is recovered by the
inverse-phase detector, not by the positive sector Hilbert norm. -/
theorem wholeSource_signed_readout (A : Type*) [CommRing A] [Algebra ℚ A]
    (g d j : ℕ) [NeZero d]
    (ω : DifferentialZ A) (v : IntegralPolarizedLattice g)
    (U : Links d) (γ : Gauge d) (t : ℝ) :
    (detector d γ (originalWholeSource A g d j ω v U γ t).gaugedSectors).re =
      completeWave j d t := by
  exact compensated_original j d γ t

/-- The old signed time integral is still exactly pickupEnergy. No
classwise positivity or unproved all-rate bound is introduced. -/
theorem wholeSource_pickupEnergy (A : Type*) [CommRing A] [Algebra ℚ A]
    (g d j : ℕ) [NeZero d]
    (ω : DifferentialZ A) (v : IntegralPolarizedLattice g)
    (U : Links d) (γ : Gauge d) :
    pickupEnergy (dyadicTime j) =
      ∫ t in (0 : ℝ)..dyadicTime j,
        ((detector d γ
          (originalWholeSource A g d j ω v U γ t).gaugedSectors).re) ^ 2 := by
  exact compensated_original_energy j d γ

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQCompleteLedger
