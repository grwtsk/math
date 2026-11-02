/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.

SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. Additive mathematical source only.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.ResidueCircleWaveHilbert
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicSignedResidueWaveform
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.InnerProductSpace.l2Space
import Mathlib.Tactic

/-!
# Actual signed pickup as a finite Hilbert packet with coherent readout

At each existing dyadic inventory j and positive additive modulus d, retain
both parities and ALL classes a : ZMod (d*d). The original real causal
Möbius sign and response live INSIDE the packet coordinates; no absolute
value, primitive-unit cutoff, replacement weight or unproved sample is used.

The positive Euclidean Hilbert norm of the class packet is NOT the signed
pickup energy. The latter is the square of the COHERENT readout, which
contains all ordered pair terms (including parity 01 and 10). Its exact
physical-time integral is the preexisting `pickupEnergy (dyadicTime j)`.

A single finite packet embeds into a genuine complete l2 sum over all stage
indices. This is *not* a proof that the complete family of unweighted
pickup packets belongs to that sum; the family-wide summability obligation
must be established separately, and an all-rate upper bound is NOT proved.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert

open scoped BigOperators
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.RiemannHypothesis.CCC

variable (d : ℕ) [NeZero d]

/-- The concrete finite positive-metric Hilbert fiber with one coordinate
for each literal parity and additive residue class. Nonunits are present. -/
abbrev SignedPacketFiber := EuclideanSpace ℝ (Fin 2 × ZMod (d * d))

/-- A fiber of original causal signed coefficients, *before squaring*. -/
def signedPacket (j : ℕ) (u : ℝ) : SignedPacketFiber d :=
  WithLp.toLp 2 (fun i : Fin 2 × ZMod (d * d) =>
    classWave j d i.1.val i.2 u)

@[simp] theorem signedPacket_apply (j : ℕ) (u : ℝ)
    (i : Fin 2 × ZMod (d * d)) :
    signedPacket d j u i = classWave j d i.1.val i.2 u := rfl

/-- The source readout sums ALL classes before the energy square. -/
def coherentReadout (x : SignedPacketFiber d) : ℝ :=
  ∑ r : Fin 2, ∑ a : ZMod (d * d), x (r, a)

/-- Coherent readout is exactly the repository's original completeWave. -/
theorem coherentReadout_signedPacket (j : ℕ) (u : ℝ) :
    coherentReadout d (signedPacket d j u) = completeWave j d u := by
  change (∑ r : Fin 2, ∑ a : ZMod (d * d), classWave j d r.val a u) =
    ∑ r ∈ Finset.range 2, ∑ a : ZMod (d * d), classWave j d r a u
  simp [Fin.sum_univ_two, Finset.sum_range_succ]

/-- The original signed fixed inventory is unchanged by the Hilbert packet. -/
theorem coherentReadout_eq_originalFixedWave (j : ℕ) (u : ℝ) :
    coherentReadout d (signedPacket d j u) = originalFixedWave j u := by
  rw [coherentReadout_signedPacket, completeWave_eq_originalFixedWave]

/-- The original causal waveform is the same coherent readout at EVERY time
in its closed dyadic window, not just at selected sampling endpoints. -/
theorem wholePickup_eq_coherentReadout (j : ℕ) {u : ℝ}
    (hu : 0 ≤ u) (huT : u ≤ dyadicTime j) :
    wholePickup u = coherentReadout d (signedPacket d j u) := by
  rw [wholePickup_eq_completeWave j d hu huT,
    coherentReadout_signedPacket]

/-- The positive Hilbert norm is exactly the DIAGONAL class energy.
It is not the original coherent signed arithmetic energy. -/
theorem signedPacket_hilbert_norm_sq (j : ℕ) (u : ℝ) :
    ‖signedPacket d j u‖ ^ 2 =
      ∑ r : Fin 2, ∑ a : ZMod (d * d),
        (classWave j d r.val a u) ^ 2 := by
  rw [EuclideanSpace.real_norm_sq_eq]
  change (∑ i : Fin 2 × ZMod (d * d),
      (classWave j d i.1.val i.2 u) ^ 2) = _
  exact Fintype.sum_prod_type _

/-- The coherent signed scalar square contains ALL FOUR parity-pair
channels and all ordered residue pairs. No positive classwise estimate
or orthogonalization is inserted. -/
theorem coherentReadout_square_full_pairs (x : SignedPacketFiber d) :
    (coherentReadout d x) ^ 2 =
      ∑ r : Fin 2, ∑ s : Fin 2,
        ∑ a : ZMod (d * d), ∑ b : ZMod (d * d),
          x (r, a) * x (s, b) := by
  unfold coherentReadout
  rw [pow_two, Finset.sum_mul_sum]
  apply Finset.sum_congr rfl
  intro r _
  apply Finset.sum_congr rfl
  intro s _
  rw [Finset.sum_mul_sum]

/-- Exact return to the ORIGINAL real causal energy, not a surrogate
Euclidean norm or a single residue-sector variance. -/
theorem pickupEnergy_eq_coherent_packet_integral (j : ℕ) :
    pickupEnergy (dyadicTime j) =
      ∫ u in (0 : ℝ)..dyadicTime j,
        (coherentReadout d (signedPacket d j u)) ^ 2 := by
  calc
    pickupEnergy (dyadicTime j) = completeResidueEnergy j d :=
      (completeResidueEnergy_eq_pickupEnergy j d).symm
    _ = _ := by
      unfold completeResidueEnergy
      apply intervalIntegral.integral_congr
      intro u _
      rw [coherentReadout_signedPacket]

/-- The SAME original physical-time energy can be written as the
full double ordered class-pair integral. -/
theorem pickupEnergy_eq_complete_ordered_pair_integral (j : ℕ) :
    pickupEnergy (dyadicTime j) =
      ∫ u in (0 : ℝ)..dyadicTime j,
        (∑ r : Fin 2, ∑ s : Fin 2,
          ∑ a : ZMod (d * d), ∑ b : ZMod (d * d),
            signedPacket d j u (r, a) * signedPacket d j u (s, b)) := by
  rw [pickupEnergy_eq_coherent_packet_integral d j]
  apply intervalIntegral.integral_congr
  intro u _
  exact coherentReadout_square_full_pairs d (signedPacket d j u)

/-- Coherent readout is additive on the genuine real finite Hilbert
fiber; this is not an isometry and does not make class energies additive. -/
theorem coherentReadout_add (x y : SignedPacketFiber d) :
    coherentReadout d (x + y) =
      coherentReadout d x + coherentReadout d y := by
  simp [coherentReadout, Finset.sum_add_distrib]

/-- Every source packet's coherent scalar readout retains both the
selected closed algebraic span and its full orthogonal complement. -/
theorem coherentReadout_algebraic_residual (cycles : Set (SignedPacketFiber d))
    (x : SignedPacketFiber d) :
    coherentReadout d x =
      coherentReadout d (algebraicProjection cycles x) +
        coherentReadout d (residualProjection cycles x) := by
  have hr := congrArg (coherentReadout d) (complete_reconstruction cycles x)
  rw [coherentReadout_add] at hr
  exact hr.symm

/-- Hilbert orthogonality of P and Q does not erase the SIGNED scalar
cross term after the non-isometric coherent readout. -/
theorem coherentReadout_square_algebraic_residual
    (cycles : Set (SignedPacketFiber d)) (x : SignedPacketFiber d) :
    (coherentReadout d x) ^ 2 =
      (coherentReadout d (algebraicProjection cycles x)) ^ 2 +
      (coherentReadout d (residualProjection cycles x)) ^ 2 +
      2 * coherentReadout d (algebraicProjection cycles x) *
        coherentReadout d (residualProjection cycles x) := by
  rw [coherentReadout_algebraic_residual]
  ring

/-- The unchanged Möbius waveform splits into algebraic and residual
Hilbert coordinates, while the readout retains both channels. -/
theorem wholePickup_eq_algebraic_add_residual_readout
    (cycles : Set (SignedPacketFiber d)) (j : ℕ) {u : ℝ}
    (hu : 0 ≤ u) (huT : u ≤ dyadicTime j) :
    wholePickup u =
      coherentReadout d (algebraicProjection cycles (signedPacket d j u)) +
      coherentReadout d (residualProjection cycles (signedPacket d j u)) := by
  exact (wholePickup_eq_coherentReadout d j hu huT).trans
    (coherentReadout_algebraic_residual d cycles (signedPacket d j u))

/-- Crucial source-exact Hilbert projection identity: the original real
pickup energy includes the signed cross term between the COHERENT readouts
of the two orthogonal Hilbert components. -/
theorem pickupEnergy_eq_algebraic_residual_mixed_integral
    (cycles : Set (SignedPacketFiber d)) (j : ℕ) :
    pickupEnergy (dyadicTime j) =
      ∫ u in (0 : ℝ)..dyadicTime j,
        ((coherentReadout d
            (algebraicProjection cycles (signedPacket d j u))) ^ 2 +
          (coherentReadout d
            (residualProjection cycles (signedPacket d j u))) ^ 2 +
          2 * coherentReadout d
            (algebraicProjection cycles (signedPacket d j u)) *
              coherentReadout d
                (residualProjection cycles (signedPacket d j u))) := by
  rw [pickupEnergy_eq_coherent_packet_integral d j]
  apply intervalIntegral.integral_congr
  intro u _
  exact coherentReadout_square_algebraic_residual d cycles
    (signedPacket d j u)

/-- Real finite Hilbert fibers can be placed at exact stages in a
COMPLETE l2 Hilbert sum. The sum does not presuppose full-family energy. -/
abbrev SignedAllStageHilbert := lp (fun _ : ℕ => SignedPacketFiber d) 2

/-- The j-th injection uses a genuine single-scale Hilbert coordinate. -/
def liftAtStage (j : ℕ) (x : SignedPacketFiber d) :
    SignedAllStageHilbert d := lp.single 2 j x

@[simp] theorem liftAtStage_at (j : ℕ) (x : SignedPacketFiber d) :
    liftAtStage d j x j = x := by
  simp [liftAtStage]

/-- Exact retrieval recovers all signed residue coefficients of the
j-th source packet from its complete-Hilbert stage embedding. -/
theorem recover_signed_packet_from_stage (j : ℕ) (u : ℝ) :
    (liftAtStage d j (signedPacket d j u)) j = signedPacket d j u := by
  simp

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert
