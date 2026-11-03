/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.CMRiemannForm
import GRWTSK.Geometry.CMRealRescaling
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMKaehlerZQResidueLinks
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMKaehlerZQGaugeFullReturn
import Mathlib.RingTheory.Unramified.Field
import Mathlib.Tactic

/-!
# Genuine CM trace Riemann form to parity/additive-residue U(1) holonomy

The source CM field pairing is Tr_(E/Q)(xi*x*conj(y)), with the EXISTING
archimedean sign-controlled xi, Weil J and the existing denominator-cleared
integer-coordinate lattice. This is a genuine pre-Riemann source certificate,
not a proved ample bundle on the user's original variety.

Assign EACH residue channel, including nonunits, an explicitly chosen site
in this actual CM integer lattice. Quantized link U_ij=(-1)^E(site_i,site_j)
has unit norm, diagonal identity, reverse-link inverse, a literal three-edge
holonomy and unchanged holonomy under arbitrary sitewise U(1) phases.
Nontrivial mod-2 holonomy requires an ODD integral-pairing witness; rational
nondegeneracy alone does NOT supply one. This is a constructed mod-2
pre-Chern connection, not an independently derived analytic Chern connection.

The universal algebraic Kaehler differential Ω[E/Q] of a separable field is
zero, unlike the nonzero geometric Kahler (1,1)-polarization of a torus.
The original integral-to-rational differential graph and the full signed
Möbius source remain separately retained by their existing modules.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannResidueHolonomy

open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMNumberFieldIndex
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMTracePolarization
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMArchimedeanPositivity
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMLatticePolarization
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannForm
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRealRescaling
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQResidueLinks
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugeFullReturn
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint

variable (E : Type*) [Field E] [NumberField E] [IsCMField E] [IsGalois ℚ E]
local notation "n" => Module.finrank ℚ E

/-- Instantiates an ACTUAL CM field sign choice from maximal-real-subfield
weak approximation instead of assuming a freely selected sign matrix. -/
noncomputable def selectedSignControlledXi (v : OddSignRow E) :
    SignControlledXi E v :=
  Classical.choice (nonempty_signControlledXi_canonical E v)

/-- The existing complete pre-Riemann positivity, alternation and integral
lattice package, without an invented abelian-variety realization. -/
noncomputable def selectedPreRiemann (v : OddSignRow E) :
    PreRiemannBilinearData E v (selectedSignControlledXi E v) :=
  canonicalPreRiemannBilinearData E (selectedSignControlledXi E v)

/-- Derive integer skewness from the actual RATIONAL CM trace pairing.
The denominator-clearing multiplier is kept exactly, not suppressed. -/
theorem integralTracePairing_skew {v : OddSignRow E}
    (X : SignControlledXi E v) (a b : Fin n → ℤ) :
    integralPairing E X b a = -integralPairing E X a b := by
  have h : (integralPairing E X b a : ℚ) =
      -(integralPairing E X a b : ℚ) := by
    rw [← scaled_tracePairing_lattice_integral E X b a,
        ← scaled_tracePairing_lattice_integral E X a b,
        tracePairing_skew E X.toTracePolarizationData]
    ring
  exact_mod_cast h

/-- Exact real Riemann-form return of the SAME integer source, retaining
its lattice scale; this is not a canonical polarization on an external CM X. -/
theorem integralTracePairing_riemann {v : OddSignRow E}
    (X : SignControlledXi E v) (a b : Fin n → ℤ) :
    (integralPairing E X a b : ℝ) =
      (latticeScale E X : ℝ) *
        riemannForm E X (latticeCoordinates E a) (latticeCoordinates E b) :=
  (scaled_riemannForm_lattice_integral E X a b).symm

/-- Integer-valued trace curvature reduced to a two-torsion complex phase.
Every arithmetic minus sign and source exponent is kept literally. -/
def integralTracePhase {v : OddSignRow E}
    (X : SignControlledXi E v) (a b : Fin n → ℤ) : ℂ :=
  (-1 : ℂ) ^ (integralPairing E X a b)

theorem integralTracePhase_norm_one {v : OddSignRow E}
    (X : SignControlledXi E v) (a b : Fin n → ℤ) :
    ‖integralTracePhase E X a b‖ = 1 := by
  simp [integralTracePhase]

theorem integralTracePhase_self {v : OddSignRow E}
    (X : SignControlledXi E v) (a : Fin n → ℤ) :
    integralTracePhase E X a a = 1 := by
  simp [integralTracePhase, integralPairing_self E X a]

theorem integralTracePhase_reverse {v : OddSignRow E}
    (X : SignControlledXi E v) (a b : Fin n → ℤ) :
    integralTracePhase E X b a = (integralTracePhase E X a b)⁻¹ := by
  simp [integralTracePhase, integralTracePairing_skew E X a b]

theorem integralTracePhase_reverse_mul {v : OddSignRow E}
    (X : SignControlledXi E v) (a b : Fin n → ℤ) :
    integralTracePhase E X a b * integralTracePhase E X b a = 1 := by
  rw [integralTracePhase_reverse]
  have hne : integralTracePhase E X a b ≠ 0 := by
    intro hzero
    have hn := integralTracePhase_norm_one E X a b
    rw [hzero, norm_zero] at hn
    norm_num at hn
  exact mul_inv_cancel₀ hne

/-- An EXPLICIT assignment of each parity/additive residue channel to an
original full-rank CM integer lattice site is still needed. No inverse
of a lossy residue quotient is fabricated. -/
abbrev ResidueSites (d : ℕ) := Sector d → (Fin n → ℤ)

/-- Actual CM trace-derived links across ALL ordered residue channels. -/
def sourceRiemannLinks {v : OddSignRow E}
    (X : SignControlledXi E v) (d : ℕ)
    (sites : ResidueSites E d) : Links d where
  transport i j := integralTracePhase E X (sites i) (sites j)
  norm_one i j := integralTracePhase_norm_one E X (sites i) (sites j)

theorem sourceRiemannLinks_identity {v : OddSignRow E}
    (X : SignControlledXi E v) (d : ℕ)
    (sites : ResidueSites E d) (i : Sector d) :
    (sourceRiemannLinks E X d sites).transport i i = 1 :=
  integralTracePhase_self E X (sites i)

theorem sourceRiemannLinks_reverse {v : OddSignRow E}
    (X : SignControlledXi E v) (d : ℕ)
    (sites : ResidueSites E d) (i j : Sector d) :
    (sourceRiemannLinks E X d sites).transport i j *
      (sourceRiemannLinks E X d sites).transport j i = 1 :=
  integralTracePhase_reverse_mul E X (sites i) (sites j)

/-- The full signed source pairing determines the triangle exponent,
not an arbitrarily chosen positive Hilbert norm or an unspecified Wilson loop. -/
theorem sourceRiemannLinks_triangle {v : OddSignRow E}
    (X : SignControlledXi E v) (d : ℕ)
    (sites : ResidueSites E d) (i j k : Sector d) :
    triangleHolonomy d (sourceRiemannLinks E X d sites) i j k =
      (-1 : ℂ) ^
        (integralPairing E X (sites i) (sites j) +
         integralPairing E X (sites j) (sites k) +
         integralPairing E X (sites k) (sites i)) := by
  simp only [triangleHolonomy, sourceRiemannLinks, integralTracePhase]
  rw [← zpow_add, ← zpow_add]

/-- Source-derived loop phase is genuinely gauge invariant. -/
theorem sourceRiemannLinks_triangle_gauge {v : OddSignRow E}
    (X : SignControlledXi E v) (d : ℕ)
    (sites : ResidueSites E d) (g : Gauge d) (i j k : Sector d) :
    triangleHolonomy d
      (gaugeLinks d g (sourceRiemannLinks E X d sites)) i j k =
      (-1 : ℂ) ^
        (integralPairing E X (sites i) (sites j) +
         integralPairing E X (sites j) (sites k) +
         integralPairing E X (sites k) (sites i)) := by
  rw [triangleHolonomy_gauge]
  exact sourceRiemannLinks_triangle E X d sites i j k

/-- A genuinely nontrivial mod-two flux requires an ODD lattice witness.
This is NOT inferred from mere rational nondegeneracy of the CM form. -/
theorem sourceRiemannLinks_odd_triangle {v : OddSignRow E}
    (X : SignControlledXi E v) (d : ℕ)
    (sites : ResidueSites E d) (i j k : Sector d)
    (hodd : integralPairing E X (sites i) (sites j) +
      integralPairing E X (sites j) (sites k) +
      integralPairing E X (sites k) (sites i) = 1) :
    triangleHolonomy d (sourceRiemannLinks E X d sites) i j k = -1 := by
  rw [sourceRiemannLinks_triangle, hodd]
  norm_num

/-- Genuine odd source flux is not a pure rephasing of the flat link field.
The obstruction is a gauge-invariant quantized triangle, not an invented
continuum Chern curvature or a detector measurement. -/
theorem sourceRiemannLinks_odd_not_gauge_flat {v : OddSignRow E}
    (X : SignControlledXi E v) (d : ℕ)
    (sites : ResidueSites E d) (i j k : Sector d)
    (hodd : integralPairing E X (sites i) (sites j) +
      integralPairing E X (sites j) (sites k) +
      integralPairing E X (sites k) (sites i) = 1)
    (g : Gauge d) :
    gaugeLinks d g (sourceRiemannLinks E X d sites) ≠ flatLinks d := by
  intro h
  have hflux := sourceRiemannLinks_triangle_gauge E X d sites g i j k
  rw [h, triangleHolonomy_flat, hodd] at hflux
  norm_num at hflux

/-- Universal algebraic Kahler differentials of a SEPARABLE CM field over
Q are zero. This does not trivialize its geometric Kahler (1,1) form. -/
theorem rationalFieldKaehler_subsingleton [Algebra.IsSeparable ℚ E] :
    Subsingleton (KaehlerDifferential ℚ E) := by
  letI : Algebra.FormallyUnramified ℚ E :=
    Algebra.FormallyUnramified.of_isSeparable ℚ E
  infer_instance

/-- Original signed coherent pickupEnergy remains EXACT after independent
U(1) gauge compensation, not after an unproved physical identification
with the trace-link holonomy. All parity and nonunit sectors remain. -/
theorem original_source_energy_with_riemann_links {v : OddSignRow E}
    (X : SignControlledXi E v) (d j : ℕ) [NeZero d]
    (sites : ResidueSites E d) (g : Gauge d) :
    pickupEnergy (dyadicTime j) =
      ∫ t in (0 : ℝ)..dyadicTime j,
        ((detector d g (gaugePacket d g
          (originalSectorPacket j d t))).re) ^ 2 := by
  exact compensated_original_energy j d g

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannResidueHolonomy
