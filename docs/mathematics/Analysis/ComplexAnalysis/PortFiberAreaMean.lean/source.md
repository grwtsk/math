# Complete source: GRWTSK.Interfaces.PortFiberAreaMean

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d05421754eb13396ae2cb363b80bd070dd9a0c86` · SHA-256 `71a8ea24f5a5fcd00764aff753b843981c2158e5e73d1e40c6b2d8a75961ebc2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.PortFiberMeasureTransfer
import GRWTSK.Analysis.Complex.HolomorphicAreaMean

/-!
# Isolated area-mean and local square-integral supplier

All integrals below use complex Lebesgue area. This leaf supplies the local analytic
estimate, not an assumed change of measure, a global area-quotient evaluation, or
an automatic comparison to any arithmetic measure. Historical dispositions are retained.
-/

namespace GRWTSK.Interfaces.PortFiberAreaMean

open MeasureTheory Metric Set
open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.Logic.SimultaneousProofPortfolio
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle
open GRWTSK.Analysis.Complex.HolomorphicAreaMean

noncomputable section

def schemaVersion : String := "PortFiberAreaMean/1"

inductive AddedIndex
  | polarBinding
  | diskMean
  | finiteSquare
  | areaEstimate
  | sectionBinding
  | parameterBoundaries
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .polarBinding => ∀ (f : ℂ → ℂ) (R : ℝ),
      (∫ z in closedBall (0 : ℂ) R, f z) =
        ∫ p : ℝ × ℝ in Ioc 0 R ×ˢ Ioo (-Real.pi) Real.pi,
          p.1 • f (Complex.polarCoord.symm p)
  | .diskMean => ∀ (f : ℂ → ℂ) (c : ℂ) (R : ℝ), 0 < R →
      DifferentiableOn ℂ f (closedBall c R) →
      (∫ z in closedBall c R, f z) = (Real.pi * R ^ 2) • f c
  | .finiteSquare => ∀ (f : ℂ → ℂ) (c : ℂ) (R : ℝ),
      DifferentiableOn ℂ f (closedBall c R) →
      IntegrableOn (fun z => f z * f z) (closedBall c R) ∧
        IntegrableOn (fun z => ‖f z‖ ^ 2) (closedBall c R)
  | .areaEstimate => ∀ (f : ℂ → ℂ) (c : ℂ) (R : ℝ), 0 < R →
      DifferentiableOn ℂ f (closedBall c R) →
      (Real.pi * R ^ 2) * ‖f c‖ ^ 2 ≤ ∫ z in closedBall c R, ‖f z‖ ^ 2
  | .sectionBinding => ∀ (ι : Type) (D : IndexedDomainCover ι)
      (W : CircleWindow D.X) (hOpen : D.IsOpenCover)
      (s : BundleSection (Cocycle.identity D) hOpen),
      (Real.pi * W.radius ^ 2) * ‖s.value W.centerPoint‖ ^ 2 ≤
        ∫ z in closedBall W.center W.radius, ‖ambientRepresentative D.X s.value z‖ ^ 2
  | .parameterBoundaries =>
      (Complex.I * Complex.I ≠ (‖Complex.I‖ ^ 2 : ℂ)) ∧
      ¬ (‖(1 : ℂ)‖ ^ 2 ≤ (Real.pi * (0 : ℝ) ^ 2)⁻¹ *
        (∫ _z in closedBall (0 : ℂ) 0, ‖(1 : ℂ)‖ ^ 2))

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | polarBinding => intro f R; exact integral_closedBall_zero_polar f R
  | diskMean => intro f c R hR hf; exact integral_closedBall hR hf
  | finiteSquare => intro f c R hf; exact square_integrable hf
  | areaEstimate => intro f c R hR hf; exact norm_sq_le_areaIntegral hR hf
  | sectionBinding => intro ι D W hOpen s; exact window_bundleSection_area_bound W hOpen s
  | parameterBoundaries =>
      exact ⟨GRWTSK.Analysis.Complex.HolomorphicAreaMean.Fixtures.complex_square_ne_norm_square,
        GRWTSK.Analysis.Complex.HolomorphicAreaMean.Fixtures.zero_radius_not_normalized⟩

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Interfaces.PortFiberMeasureTransfer.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Interfaces.PortFiberMeasureTransfer.PreviousIndex
  GRWTSK.Interfaces.PortFiberMeasureTransfer.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Interfaces.PortFiberMeasureTransfer.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Interfaces.PortFiberMeasureTransfer.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Interfaces.PortFiberAreaMean
```
