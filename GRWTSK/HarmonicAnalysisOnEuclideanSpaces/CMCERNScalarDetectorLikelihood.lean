/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMAdS5HalfLaplacianScalar
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMCenteredResidueWaypointDeployment
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral
import Mathlib.Tactic

/-!
# CERN event-level detector contract, units, uncertainty and background baseline

The LHCb Masterclass D0 candidate sample (record 401) is a REAL, selected
mass/lifetime sample, not a neutral Bs flavour-tagged oscillation sample.
It supplies candidate mass, decay time, pT and impact parameter (log scale)
through the appropriate experimental export. NO CERN event rows were read
when creating this source and NO experimental coupling has been fitted.

An independently justified detector-to-boundary measurement dictionary,
selection/acceptance correction, resolution model, and background probability
must be supplied before these densities can be used for a physical inference.
The source's original 4D boundary field, full integer labels, arithmetic
Mobius mu, CM Betti class and physical mass have DIFFERENT mathematical types.
The model is an explicit, source-backed baseline *template*, not a physics
claim that Mobius coefficients are particle decay amplitudes.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMCERNScalarDetectorLikelihood

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdS5HalfLaplacianScalar
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMCenteredResidueWaypointDeployment

/-- Physical event variables. In particular decayTimePs is measured proper
time in picoseconds, NOT a dimensionless logarithmic Mobius birth time. -/
structure D0Candidate where
  eventKey : String
  massMeV : ℝ
  decayTimePs : ℝ
  transverseMomentumGeV : ℝ
  log10ImpactParameterMm : ℝ
  detectorSampleId : String

/-- Explicit positive physical-time conversion, NOT a fitted identification
between the measured particle and an arithmetic source. -/
structure ProperTimeCalibration where
  tau0Ps : ℝ
  tau0Ps_pos : 0 < tau0Ps

def dimensionlessProperTime (C : ProperTimeCalibration)
    (e : D0Candidate) : ℝ := e.decayTimePs / C.tau0Ps

/-- Standard idealized Gaussian signal mass density before experimental
selection, reconstruction and finite fit-window normalization. -/
def gaussianSignalMassDensity (mean sigma massMeV : ℝ) : ℝ :=
  Real.exp (-((massMeV - mean) ^ 2) / (2 * sigma ^ 2)) /
    (sigma * Real.sqrt (2 * Real.pi))

theorem gaussianSignalMassDensity_nonneg (mean sigma massMeV : ℝ)
    (hsigma : 0 < sigma) :
    0 ≤ gaussianSignalMassDensity mean sigma massMeV := by
  unfold gaussianSignalMassDensity
  positivity

/-- Exponential proper-time benchmark for the D0 lifetime after taking
positive-time support, before selection or finite-window conditioning. -/
def exponentialLifetimeDensity (lifetimePs timePs : ℝ) : ℝ :=
  if timePs < 0 then 0 else Real.exp (-timePs / lifetimePs) / lifetimePs

theorem exponentialLifetimeDensity_nonneg (lifetimePs timePs : ℝ)
    (hlife : 0 < lifetimePs) :
    0 ≤ exponentialLifetimeDensity lifetimePs timePs := by
  unfold exponentialLifetimeDensity
  split_ifs <;> positivity

/-- A deliberately simple finite mass-interval background: it is not an
endorsement of that shape as the full LHCb detector background model. -/
def uniformMassBackground (low high massMeV : ℝ) : ℝ :=
  if low ≤ massMeV ∧ massMeV ≤ high then (high - low)⁻¹ else 0

theorem uniformMassBackground_nonneg (low high massMeV : ℝ)
    (hlo : low < high) : 0 ≤ uniformMassBackground low high massMeV := by
  unfold uniformMassBackground
  split_ifs <;> positivity

/-- Explicit two-component mass/time PDF used ONLY as a baseline candidate.
Its causal-time dependence is an experimental exponential, NOT the
arithmetic Mobius pickupResponse. -/
def basicD0Mixture (signalFraction meanMass massSigma lifetimePs
    backgroundLifetimePs lowMass highMass : ℝ) (e : D0Candidate) : ℝ :=
  signalFraction *
      gaussianSignalMassDensity meanMass massSigma e.massMeV *
        exponentialLifetimeDensity lifetimePs e.decayTimePs +
    (1 - signalFraction) *
      uniformMassBackground lowMass highMass e.massMeV *
        exponentialLifetimeDensity backgroundLifetimePs e.decayTimePs

theorem basicD0Mixture_nonneg
    (signalFraction meanMass massSigma lifetimePs backgroundLifetimePs
      lowMass highMass : ℝ) (e : D0Candidate)
    (hf0 : 0 ≤ signalFraction) (hf1 : signalFraction ≤ 1)
    (hsigma : 0 < massSigma) (hlife : 0 < lifetimePs)
    (hbglife : 0 < backgroundLifetimePs) (hmass : lowMass < highMass) :
    0 ≤ basicD0Mixture signalFraction meanMass massSigma lifetimePs
      backgroundLifetimePs lowMass highMass e := by
  unfold basicD0Mixture
  have hms := gaussianSignalMassDensity_nonneg meanMass massSigma e.massMeV hsigma
  have hts := exponentialLifetimeDensity_nonneg lifetimePs e.decayTimePs hlife
  have hmb := uniformMassBackground_nonneg lowMass highMass e.massMeV hmass
  have htb := exponentialLifetimeDensity_nonneg backgroundLifetimePs e.decayTimePs hbglife
  have hfb : 0 ≤ 1 - signalFraction := by linarith
  positivity

/-- What MUST be supplied by an external experiment/field model before a
holographic measurement can be assigned an actual detector probability.
None of these maps is inferred from the formal 4D lattice coordinates. -/
structure IndependentMeasurementBridge where
  calibration : ProperTimeCalibration
  boundarySiteForEvent : D0Candidate → BoundaryLattice4
  selectionAcceptance : D0Candidate → ℝ
  acceptance_nonneg : ∀ e, 0 ≤ selectionAcceptance e
  detectorTimeResolutionPs : D0Candidate → ℝ
  resolution_pos : ∀ e, 0 < detectorTimeResolutionPs e
  /-- Direct empirically justified field-to-observable response is required. -/
  fieldToDetectorDensity : (BoundaryR4 → ℝ) → D0Candidate → ℝ
  density_nonneg : ∀ f e, 0 ≤ fieldToDetectorDensity f e
  sourceMetadata : String

/-- The boundary source field enters the explicitly supplied measurement
bridge, not a silently invented numerical calibration. -/
def candidateFieldDensity (B : IndependentMeasurementBridge)
    (field : BoundaryR4 → ℝ) (e : D0Candidate) : ℝ :=
  B.fieldToDetectorDensity field e

theorem candidateFieldDensity_nonneg (B : IndependentMeasurementBridge)
    (field : BoundaryR4 → ℝ) (e : D0Candidate) :
    0 ≤ candidateFieldDensity B field e := B.density_nonneg field e

/-- An actual source-bound comparison needs BOTH the independent experiment
and the standard baseline density at the SAME candidate and in the SAME units.
The signed residual is an observable to be FIT, not set to zero by definition. -/
def measuredDensityResidual (B : IndependentMeasurementBridge)
    (field : BoundaryR4 → ℝ) (e : D0Candidate)
    (signalFraction meanMass massSigma lifetimePs backgroundLifetimePs
      lowMass highMass : ℝ) : ℝ :=
  candidateFieldDensity B field e -
    basicD0Mixture signalFraction meanMass massSigma lifetimePs
      backgroundLifetimePs lowMass highMass e

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMCERNScalarDetectorLikelihood
