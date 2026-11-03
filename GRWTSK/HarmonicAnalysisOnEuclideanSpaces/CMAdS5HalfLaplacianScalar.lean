/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMDiscreteRSBoundaryBulk
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Tactic

/-!
# A nontrivial bulk scalar field solving an independently specified AdS5 PDE

In the Euclidean Poincare patch with metric ds²=L²(dx₁²+...+dx₄²+dz²)/z²,
choose the scalar mass m² L² = -15/4 (within the AdS5 BF bound -4).
For Phi=z^(3/2) u, the exact pointwise operator identity is

  L²(Box_AdS5 - m²) Phi = z^(7/2) (u_zz + Delta_4 u).

The first theorem below is its ALGEBRAIC second-jet identity, using r=sqrt(z)
and z=r²; it does not pretend that a jet is a derivative certificate.
The explicit NONZERO Fourier boundary mode
  u_k(x,z)=exp(-k*z) cos(k*x₀)
solves the 5-dimensional half-space Laplace equation for k>=0, and hence the
bulk Klein-Gordon equation after multiplication by z^(3/2). Its rescaled
Dirichlet boundary data are cos(k*x₀) and its negative radial derivative is
k*cos(k*x₀), the |D|=(-Delta_4)^(1/2) Fourier eigenvalue. This is a genuine
free-field benchmark with *selected* scalar mass, NOT an RS-brane boundary-
condition derivation, a general Schwartz Poisson extension, a proof of the
full conformal Kelvin law, or a CERN/CM/Moebius identification.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdS5HalfLaplacianScalar

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMDiscreteRSBoundaryBulk

/-- Dimensionless geometric mass; if the AdS radius is L, then m²=-15/(4L²). -/
def scalarMassSquaredTimesRadiusSquared : ℝ := -(15 / 4)

/-- A second jet, with the full FOUR-dimensional tangential Laplacian.
The derivative slots must be independently justified for a concrete field. -/
structure HalfSpaceScalarJet where
  value : ℝ
  radialFirst : ℝ
  radialSecond : ℝ
  boundaryLaplacian : ℝ

/-- z=r² and Phi=r³ u. The following are the exact chain/product rule jets
when the four jet slots are actual partial derivatives of u. -/
def bulkPhi (r : ℝ) (u : HalfSpaceScalarJet) : ℝ := r ^ 3 * u.value

def bulkPhiRadialFirst (r : ℝ) (u : HalfSpaceScalarJet) : ℝ :=
  (3 / 2 : ℝ) * r * u.value + r ^ 3 * u.radialFirst

def bulkPhiRadialSecond (r : ℝ) (u : HalfSpaceScalarJet) : ℝ :=
  (3 / 4 : ℝ) / r * u.value + 3 * r * u.radialFirst +
    r ^ 3 * u.radialSecond

def bulkPhiBoundaryLap (r : ℝ) (u : HalfSpaceScalarJet) : ℝ :=
  r ^ 3 * u.boundaryLaplacian

/-- L² (Box_g - m²) for the selected scalar field and metric, evaluated on
actual derivatives if the supplied jet does describe a differentiable field. -/
def adS5ScalarResidualJet (r : ℝ) (u : HalfSpaceScalarJet) : ℝ :=
  r ^ 4 * (bulkPhiRadialSecond r u + bulkPhiBoundaryLap r u) -
    3 * r ^ 2 * bulkPhiRadialFirst r u +
    (15 / 4 : ℝ) * bulkPhi r u

/-- Exact cancellation of the potential and first-radial-derivative terms.
No assumed physical dynamics, no numerical approximation and no delta source. -/
theorem adS5ScalarResidualJet_eq (r : ℝ) (hr : r ≠ 0)
    (u : HalfSpaceScalarJet) :
    adS5ScalarResidualJet r u =
      r ^ 7 * (u.radialSecond + u.boundaryLaplacian) := by
  unfold adS5ScalarResidualJet bulkPhiRadialSecond
    bulkPhiBoundaryLap bulkPhiRadialFirst bulkPhi
  field_simp [hr]
  ring

/-- The actual exponentially decaying real 4D boundary Fourier mode. -/
def halfSpaceFourierMode (k : ℝ) (x : BoundaryR4) (z : ℝ) : ℝ :=
  Real.exp (-k * z) * Real.cos (k * x 0)

/-- Its analytical second-jet values. These derivative identifications are
checked below for the first radial derivative; all four boundary directions
are explicit, with only direction zero nonconstant. -/
def fourierModeJet (k : ℝ) (x : BoundaryR4) (z : ℝ) :
    HalfSpaceScalarJet where
  value := halfSpaceFourierMode k x z
  radialFirst := -k * halfSpaceFourierMode k x z
  radialSecond := k ^ 2 * halfSpaceFourierMode k x z
  boundaryLaplacian := -(k ^ 2) * halfSpaceFourierMode k x z

/-- Exact free five-dimensional Laplace cancellation for a real mode. -/
theorem fourierModeJet_harmonic (k : ℝ) (x : BoundaryR4) (z : ℝ) :
    (fourierModeJet k x z).radialSecond +
      (fourierModeJet k x z).boundaryLaplacian = 0 := by
  simp [fourierModeJet]

/-- Exact AdS5 Klein-Gordon residual of that REAL Fourier mode at every
positive radial height. -/
theorem fourierMode_adS5_residual_zero (k : ℝ)
    (p : WarpedBulkPoint) :
    adS5ScalarResidualJet (Real.sqrt p.z)
      (fourierModeJet k p.x p.z) = 0 := by
  rw [adS5ScalarResidualJet_eq _ (ne_of_gt (Real.sqrt_pos.2 p.z_pos))]
  rw [fourierModeJet_harmonic]
  ring

/-- The rescaled AdS Dirichlet data are the actual boundary Fourier mode. -/
theorem fourierMode_dirichlet_trace (k : ℝ) (x : BoundaryR4) :
    halfSpaceFourierMode k x 0 = Real.cos (k * x 0) := by
  simp [halfSpaceFourierMode]

/-- Dirichlet-to-Neumann trace with the physical outward normal -partial_z:
the |D| eigenvalue is k for nonnegative k, not an arbitrary scale factor. -/
theorem fourierMode_DtN_trace (k : ℝ) (x : BoundaryR4) :
    -(fourierModeJet k x 0).radialFirst = k * Real.cos (k * x 0) := by
  simp [fourierModeJet, halfSpaceFourierMode]

/-- The radial derivative is genuinely the derivative of the concrete mode,
not just a syntactically assigned jet coordinate. -/
theorem fourierMode_hasDerivAt_radial (k : ℝ) (x : BoundaryR4)
    (z : ℝ) :
    HasDerivAt (fun q : ℝ => halfSpaceFourierMode k x q)
      ((fourierModeJet k x z).radialFirst) z := by
  have hlinear : HasDerivAt (fun q : ℝ => -k * q) (-k) z := by
    convert (hasDerivAt_id z).const_mul (-k) using 1 <;> ring
  have hexp := (Real.hasDerivAt_exp (-k * z)).comp z hlinear
  have hmode := hexp.mul_const (Real.cos (k * x 0))
  simpa [halfSpaceFourierMode, fourierModeJet, mul_comm, mul_left_comm, mul_assoc] using hmode

/-- A finite packet preserves all FOUR-dimensional boundary directions and
is a genuine finite sum of independently labelled normal modes. -/
def finiteFourierPacket {N : ℕ}
    (waveNumbers amplitudes : Fin N → ℝ)
    (x : BoundaryR4) (z : ℝ) : ℝ :=
  ∑ i : Fin N, amplitudes i * halfSpaceFourierMode (waveNumbers i) x z

/-- No boundary values are interpolated, invented or averaged: the exact
finite packet returns its specified finite Fourier boundary data. -/
theorem finiteFourierPacket_dirichlet_trace {N : ℕ}
    (waveNumbers amplitudes : Fin N → ℝ) (x : BoundaryR4) :
    finiteFourierPacket waveNumbers amplitudes x 0 =
      ∑ i : Fin N, amplitudes i * Real.cos (waveNumbers i * x 0) := by
  simp [finiteFourierPacket, fourierMode_dirichlet_trace]

/-- The full packet has a pointwise Laplace-harmonic second jet by linearity.
This is an ALGEBRAIC jet result until analytic differentiation of the finite
sum has been checked in Lean. -/
def finiteFourierPacketJet {N : ℕ}
    (waveNumbers amplitudes : Fin N → ℝ)
    (x : BoundaryR4) (z : ℝ) : HalfSpaceScalarJet where
  value := finiteFourierPacket waveNumbers amplitudes x z
  radialFirst := ∑ i : Fin N,
    amplitudes i * (fourierModeJet (waveNumbers i) x z).radialFirst
  radialSecond := ∑ i : Fin N,
    amplitudes i * (fourierModeJet (waveNumbers i) x z).radialSecond
  boundaryLaplacian := ∑ i : Fin N,
    amplitudes i * (fourierModeJet (waveNumbers i) x z).boundaryLaplacian

theorem finiteFourierPacketJet_harmonic {N : ℕ}
    (waveNumbers amplitudes : Fin N → ℝ)
    (x : BoundaryR4) (z : ℝ) :
    (finiteFourierPacketJet waveNumbers amplitudes x z).radialSecond +
      (finiteFourierPacketJet waveNumbers amplitudes x z).boundaryLaplacian = 0 := by
  simp only [finiteFourierPacketJet, ← Finset.sum_add_distrib]
  apply Finset.sum_eq_zero
  intro i _
  have h := fourierModeJet_harmonic (waveNumbers i) x z
  calc
    amplitudes i * (fourierModeJet (waveNumbers i) x z).radialSecond +
        amplitudes i * (fourierModeJet (waveNumbers i) x z).boundaryLaplacian =
      amplitudes i * ((fourierModeJet (waveNumbers i) x z).radialSecond +
        (fourierModeJet (waveNumbers i) x z).boundaryLaplacian) := by ring
    _ = 0 := by rw [h, mul_zero]

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdS5HalfLaplacianScalar
