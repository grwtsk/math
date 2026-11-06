/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.Combinatorics.GraphTheory.DyadicSoficInterface
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.SoficWeilSourceComparison

/-!
# Dyadic probe return to the actual zeta/Weil residual interface

The common dyadic interface also carries complex analytic observations. One
certified word of length 2^depth is fixed before every boundary point and unit
phase. Proved edge allowances pathError*2^(-depth) sum to pathError. The initial
comparison with ACTUAL riemannZeta separately pays initialError; the terminal
observation is required to be the EXISTING factorProduct at its actual parameter.
Thus the complete source error is initialError+pathError, before multiplication
by the existing inverse-growth factor (level+2)^d.

DyadicHeatRefinement.complete_source_error_dyadic can supply an initial
comparison when a genuine finite synthesis, complete source tail, heat bias,
noise and basis evaluation bound have been identified. It does not identify a
thermal steering observation with zeta, and no such identification is assumed
from shared graph vocabulary. Quantum steering and arithmetic use the same
typed quantitative interface with separate source maps and return hypotheses.

Primary proof: reuse the dyadic all-unit-phase word theorem, the existing
two-stage source-error inequality, and the original Weil residual/certificate
constructors. The source anchor, finite-model calibration, contraction and
uniform numerical allowances remain explicit. No all-region cover, unconditional
RH/GRH, quantum channel, engine net-work theorem or vanishing budget is claimed.
Human direction: grwtsk contributors; AI-assisted candidate construction.
Novelty NOT_ASSESSED. Compilation, fresh kernel replay, transitive axiom audit
and independent external mathematical review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set

namespace GRWTSK.NumberTheory.Conditional.DyadicWeilProbeReturn

open GRWTSK.Analysis.Division
open GRWTSK.Analysis.GeometricProduct
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ProbeSoficYoneda
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ComplexProbeSoficReturn
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DyadicSoficInterface
open GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.DyadicHeatRefinement
open SoficWeilSourceComparison (boundaryPoint)

universe u v

/-- Initial source comparison, dyadic transport and actual terminal calibration
are three distinct, explicitly consumed facts. -/
theorem source_comparison
    {Vertex : Type u} {Label : Type v} (U : Set ℂ)
    (M : ProbeSoficSystem Vertex Label (boundaryPoint U × UnitPhase))
    (observation : Vertex → boundaryPoint U → ℂ)
    (hvalue : ∀ (p : boundaryPoint U × UnitPhase) (vertex : Vertex),
      M.value p vertex = phaseReadout p.2 (observation vertex p.1))
    (depth : ℕ) {source target : Vertex} {word : List Label}
    (as : List ℂ) (parameter : ℂ → ℂ) (initialError pathError : ℝ)
    (path : WordPath M.sandwich.lower source word target)
    (length : word.length = 2 ^ depth)
    (initialReturn : ∀ s : boundaryPoint U,
      ‖riemannZeta s.1 - observation source s‖ ≤ initialError)
    (modelReturn : ∀ s : boundaryPoint U,
      observation target s = factorProduct as (parameter s.1))
    (edgeBound : ∀ (p : boundaryPoint U × UnitPhase) {s t : Vertex} {label : Label},
      M.sandwich.lower s label t →
        M.allowance p s label t ≤ pathError * dyadicStep depth) :
    ∀ s ∈ frontier U, ‖riemannZeta s - factorProduct as (parameter s)‖ ≤
      initialError + pathError := by
  have graphReturn := dyadic_complex_error_bound M observation hvalue depth
    (ε := fun _ => pathError) path length edgeBound
  intro s hs
  let point : boundaryPoint U := ⟨s, hs⟩
  have modelBound : ‖observation source point - factorProduct as (parameter s)‖ ≤
      pathError := by
    simpa only [modelReturn point] using graphReturn point
  exact Approximation.source_error_two_stages (initialReturn point) modelBound

/-- The old inverse norm and finite spectral multiplicities remain in the return. -/
theorem source_residual
    {Vertex : Type u} {Label : Type v} (U : Set ℂ)
    (M : ProbeSoficSystem Vertex Label (boundaryPoint U × UnitPhase))
    (observation : Vertex → boundaryPoint U → ℂ)
    (hvalue : ∀ (p : boundaryPoint U × UnitPhase) (vertex : Vertex),
      M.value p vertex = phaseReadout p.2 (observation vertex p.1))
    (depth level : ℕ) {source target : Vertex} {word : List Label}
    (as : List ℂ) (parameter : ℂ → ℂ) (initialError pathError : ℝ)
    (path : WordPath M.sandwich.lower source word target)
    (length : word.length = 2 ^ depth)
    (initialReturn : ∀ s : boundaryPoint U,
      ‖riemannZeta s.1 - observation source s‖ ≤ initialError)
    (modelReturn : ∀ s : boundaryPoint U,
      observation target s = factorProduct as (parameter s.1))
    (edgeBound : ∀ (p : boundaryPoint U × UnitPhase) {s t : Vertex} {label : Label},
      M.sandwich.lower s label t →
        M.allowance p s label t ≤ pathError * dyadicStep depth)
    (contractive : ∀ s ∈ frontier U, ∀ a ∈ as, ‖a * parameter s‖ ≤ ratio level) :
    ∀ s ∈ frontier U,
      ‖residual (riemannZeta s) (familyApproximation as level (parameter s)) 1‖ ≤
        1 / 4 + (initialError + pathError) * ((level : ℝ) + 2) ^ as.length := by
  intro s hs
  exact GRWTSK.Analysis.GeometricProduct.source_residual_bound as level (parameter s)
    (riemannZeta s) (contractive s hs)
    (source_comparison U M observation hvalue depth as parameter initialError pathError
      path length initialReturn modelReturn edgeBound s hs)

/-- Actual boundary certificate; graph refinement never waives the strict source budget. -/
def boundaryCertificate
    {Vertex : Type u} {Label : Type v} (U : Set ℂ)
    (M : ProbeSoficSystem Vertex Label (boundaryPoint U × UnitPhase))
    (observation : Vertex → boundaryPoint U → ℂ)
    (hvalue : ∀ (p : boundaryPoint U × UnitPhase) (vertex : Vertex),
      M.value p vertex = phaseReadout p.2 (observation vertex p.1))
    (depth level : ℕ) {source target : Vertex} {word : List Label}
    (as : List ℂ) (parameter : ℂ → ℂ) (initialError pathError : ℝ)
    (path : WordPath M.sandwich.lower source word target)
    (length : word.length = 2 ^ depth)
    (initialReturn : ∀ s : boundaryPoint U,
      ‖riemannZeta s.1 - observation source s‖ ≤ initialError)
    (modelReturn : ∀ s : boundaryPoint U,
      observation target s = factorProduct as (parameter s.1))
    (edgeBound : ∀ (p : boundaryPoint U × UnitPhase) {s t : Vertex} {label : Label},
      M.sandwich.lower s label t →
        M.allowance p s label t ≤ pathError * dyadicStep depth)
    (contained : closure U ⊆ rightCriticalStrip)
    (regular : DiffContOnCl ℂ parameter U)
    (contractive : ∀ s ∈ frontier U, ∀ a ∈ as, ‖a * parameter s‖ ≤ ratio level)
    (budget : (initialError + pathError) * ((level : ℝ) + 2) ^ as.length ≤ 1 / 4) :
    Boundary.Certificate riemannZeta U :=
  transferredCertificate riemannZeta parameter as level U (initialError + pathError)
    (differentiableOn_zeta_rightStrip.mono contained).diffContOnCl regular contractive
    (source_comparison U M observation hvalue depth as parameter initialError pathError
      path length initialReturn modelReturn edgeBound) budget

end GRWTSK.NumberTheory.Conditional.DyadicWeilProbeReturn
