/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.Combinatorics.GraphTheory.ComplexProbeSoficReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.QuarticWeilSourceComparison
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilSourceComparisonObstructions

/-!
# A certified sofic word from the actual quartic zeta source to a Weil model

Reuse ProbeSoficSystem, WordPath, CertifiedTrace, and the existing quartic and
Weil definitions. There are three function-valued stages and two labels. The
ONE chronological word [analytic, finite] is fixed before the boundary point
and unit phase. Its probes are Re(conj(u)*F(s)) for every boundary point s and
every unit phase u. Uniform real-duality bounds give the full complex norm;
no finite mesh, finite set of phases, or separate word per probe is substituted.

The first certified edge is supplied by the actual Euler--Maclaurin source
bound. The second still requires the actual finite mismatch |A_N-P|<=delta.
The exact path allowance is E(R,N)+delta, not twice their maximum. It returns
the original source comparison and the existing boundary certificate with
the full inverse-growth budget (E+delta)*(level+2)^d<=1/4.

This constructs the previously proposed graph adapter; it does not construct
universal finite-model comparisons. The all-region RH consumer below retains
its coverage, analytic regularity, contraction and finite-mismatch premises.
The probe return is real duality plus finite error telescoping; the direct
triangle-inequality proof in QuarticWeilSourceComparison is a corroborating
route sharing the SAME two source estimates, not an independent RH proof.

Baseline: math e90b10114023c691744f1f6c2b5583850126a31b. Human mathematical
direction: grwtsk contributors; AI-assisted source inspection and candidate
construction. Novelty NOT_ASSESSED. Compilation, fresh kernel checking,
transitive axiom auditing and independent external analytical review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open Set

namespace GRWTSK.NumberTheory.Conditional.SoficWeilSourceComparison

open GRWTSK.Analysis.Division
open GRWTSK.Analysis.GeometricProduct
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ProbeSoficYoneda
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ComplexProbeSoficReturn

inductive Stage
  | source | approximation | model
  deriving DecidableEq, Fintype

inductive Hop
  | analytic | finite
  deriving DecidableEq, Fintype

/-- These are the only two certified edges, retaining their actual order. -/
inductive ChainEdge : Stage → Hop → Stage → Prop
  | analytic : ChainEdge .source .analytic .approximation
  | finite : ChainEdge .approximation .finite .model

def chainSandwich : LabeledSandwich Stage Hop where
  lower := ChainEdge
  middle := ChainEdge
  upper := ChainEdge
  lower_le_middle := fun edge => edge
  middle_le_upper := fun edge => edge

def boundaryPoint (U : Set ℂ) := {s : ℂ // s ∈ frontier U}

/-- The functions are exactly the earlier genuine source and spectral model. -/
def observation (N : ℕ) (as : List ℂ) (parameter : ℂ → ℂ) : Stage → ℂ → ℂ
  | .source => riemannZeta
  | .approximation => QuarticApproximation.approximation4 N
  | .model => fun s => factorProduct as (parameter s)

private theorem analytic_edge_bound (N : ℕ) (U : Set ℂ) (R : ℝ)
    (contained : closure U ⊆ rightCriticalStrip)
    (size : ∀ s ∈ frontier U, ‖s‖ ≤ R) (s : boundaryPoint U) :
    ‖riemannZeta s.1 - QuarticApproximation.approximation4 N s.1‖ ≤
      QuarticApproximation.radiusBudget R N := by
  have strip := contained (frontier_subset_closure s.2)
  exact QuarticApproximation.source_radius_bound N s.1 (by linarith [strip.1])
    (strip_ne_one strip.2) (size s.1 s.2)

/-- An actual finite graph with all boundary/phase observations, not a search score. -/
def chainSystem (N : ℕ) (as : List ℂ) (parameter : ℂ → ℂ)
    (U : Set ℂ) (R delta : ℝ)
    (contained : closure U ⊆ rightCriticalStrip)
    (size : ∀ s ∈ frontier U, ‖s‖ ≤ R)
    (finiteComparison : ∀ s ∈ frontier U,
      ‖QuarticApproximation.approximation4 N s - factorProduct as (parameter s)‖ ≤ delta) :
    ProbeSoficSystem Stage Hop (boundaryPoint U × UnitPhase) :=
  ofNormBounds (Point := boundaryPoint U) chainSandwich
    (fun stage point => observation N as parameter stage point.1)
    (fun _ _ hop _ => match hop with
      | .analytic => QuarticApproximation.radiusBudget R N
      | .finite => delta)
    (by
      intro point source target hop edge
      cases hop with
      | analytic => exact (norm_nonneg _).trans (analytic_edge_bound N U R contained size point)
      | finite => exact (norm_nonneg _).trans (finiteComparison point.1 point.2))
    (by
      intro point source target hop edge
      cases edge with
      | analytic => exact analytic_edge_bound N U R contained size point
      | finite => exact finiteComparison point.1 point.2)

/-- A single word serves every probe in the common infinite observation family. -/
theorem chain_word : WordPath ChainEdge .source [.analytic, .finite] .model :=
  WordPath.cons ChainEdge.analytic (WordPath.cons ChainEdge.finite (WordPath.nil .model))

/-- Explicit trace construction: the two independently established costs add exactly. -/
theorem chain_trace (N : ℕ) (as : List ℂ) (parameter : ℂ → ℂ)
    (U : Set ℂ) (R delta : ℝ)
    (contained : closure U ⊆ rightCriticalStrip)
    (size : ∀ s ∈ frontier U, ‖s‖ ≤ R)
    (finiteComparison : ∀ s ∈ frontier U,
      ‖QuarticApproximation.approximation4 N s - factorProduct as (parameter s)‖ ≤ delta)
    (probe : boundaryPoint U × UnitPhase) :
    ∃ defect : ℝ,
      CertifiedTrace ((chainSystem N as parameter U R delta contained size finiteComparison).toScalar probe)
        .source [.analytic, .finite] .model defect
          (QuarticApproximation.radiusBudget R N + delta) := by
  let M := chainSystem N as parameter U R delta contained size finiteComparison
  have trace := CertifiedTrace.cons (M := M.toScalar probe) ChainEdge.analytic
    (CertifiedTrace.cons (M := M.toScalar probe) ChainEdge.finite
      (CertifiedTrace.nil (M := M.toScalar probe) Stage.model))
  refine ⟨_, ?_⟩
  simpa only [M, chainSystem, ofNormBounds, ProbeSoficSystem.toScalar, add_zero] using trace

/-- Unit-phase separation returns the full norm, without a factor from splitting components. -/
theorem source_comparison (N : ℕ) (as : List ℂ) (parameter : ℂ → ℂ)
    (U : Set ℂ) (R delta : ℝ)
    (contained : closure U ⊆ rightCriticalStrip)
    (size : ∀ s ∈ frontier U, ‖s‖ ≤ R)
    (finiteComparison : ∀ s ∈ frontier U,
      ‖QuarticApproximation.approximation4 N s - factorProduct as (parameter s)‖ ≤ delta) :
    ∀ s ∈ frontier U, ‖riemannZeta s - factorProduct as (parameter s)‖ ≤
      QuarticApproximation.radiusBudget R N + delta := by
  let M := chainSystem N as parameter U R delta contained size finiteComparison
  have returned := trace_budget M
    (fun stage (point : boundaryPoint U) => observation N as parameter stage point.1)
    (by intro probe stage; rfl)
    (source := Stage.source) (target := Stage.model) (word := [Hop.analytic, Hop.finite])
    (B := fun _ => QuarticApproximation.radiusBudget R N + delta)
    (by
      intro point phase
      obtain ⟨defect, trace⟩ :=
        chain_trace N as parameter U R delta contained size finiteComparison (point, phase)
      exact ⟨defect, QuarticApproximation.radiusBudget R N + delta, trace, le_rfl⟩)
  intro s hs
  exact returned ⟨s, hs⟩

/-- Reuse the original residual supplier and keep its complete inverse-growth term. -/
theorem source_residual (N level : ℕ) (as : List ℂ) (parameter : ℂ → ℂ)
    (U : Set ℂ) (R delta : ℝ)
    (contained : closure U ⊆ rightCriticalStrip)
    (size : ∀ s ∈ frontier U, ‖s‖ ≤ R)
    (finiteComparison : ∀ s ∈ frontier U,
      ‖QuarticApproximation.approximation4 N s - factorProduct as (parameter s)‖ ≤ delta)
    (contractive : ∀ s ∈ frontier U, ∀ a ∈ as, ‖a * parameter s‖ ≤ ratio level) :
    ∀ s ∈ frontier U,
      ‖residual (riemannZeta s) (familyApproximation as level (parameter s)) 1‖ ≤
        1 / 4 + (QuarticApproximation.radiusBudget R N + delta) *
          ((level : ℝ) + 2) ^ as.length := by
  intro s hs
  exact GRWTSK.Analysis.GeometricProduct.source_residual_bound as level (parameter s)
    (riemannZeta s) (contractive s hs)
    (source_comparison N as parameter U R delta contained size finiteComparison s hs)

/-- The finite graph supplies the earlier boundary-certificate interface unchanged. -/
def boundaryCertificate (N level : ℕ) (as : List ℂ) (parameter : ℂ → ℂ)
    (U : Set ℂ) (R delta : ℝ)
    (contained : closure U ⊆ rightCriticalStrip)
    (regular : DiffContOnCl ℂ parameter U)
    (size : ∀ s ∈ frontier U, ‖s‖ ≤ R)
    (contractive : ∀ s ∈ frontier U, ∀ a ∈ as, ‖a * parameter s‖ ≤ ratio level)
    (finiteComparison : ∀ s ∈ frontier U,
      ‖QuarticApproximation.approximation4 N s - factorProduct as (parameter s)‖ ≤ delta)
    (budget : (QuarticApproximation.radiusBudget R N + delta) *
      ((level : ℝ) + 2) ^ as.length ≤ 1 / 4) :
    Boundary.Certificate riemannZeta U :=
  transferredCertificate riemannZeta parameter as level U
    (QuarticApproximation.radiusBudget R N + delta)
    (differentiableOn_zeta_rightStrip.mono contained).diffContOnCl regular
    contractive (source_comparison N as parameter U R delta contained size finiteComparison) budget

/-- Actual nonvanishing is returned only after the existing bounded-region consumer. -/
theorem nonzero_on_closure (N level : ℕ) (as : List ℂ) (parameter : ℂ → ℂ)
    (U : Set ℂ) (R delta : ℝ)
    (bounded : Bornology.IsBounded U)
    (contained : closure U ⊆ rightCriticalStrip)
    (regular : DiffContOnCl ℂ parameter U)
    (size : ∀ s ∈ frontier U, ‖s‖ ≤ R)
    (contractive : ∀ s ∈ frontier U, ∀ a ∈ as, ‖a * parameter s‖ ≤ ratio level)
    (finiteComparison : ∀ s ∈ frontier U,
      ‖QuarticApproximation.approximation4 N s - factorProduct as (parameter s)‖ ≤ delta)
    (budget : (QuarticApproximation.radiusBudget R N + delta) *
      ((level : ℝ) + 2) ^ as.length ≤ 1 / 4) {s : ℂ} (inside : s ∈ closure U) :
    riemannZeta s ≠ 0 :=
  (boundaryCertificate N level as parameter U R delta contained regular size contractive
    finiteComparison budget).nonzero bounded inside

/-- The certified graph preserves the earlier genuine-source sign obstruction.
No singleton model on this rectangle acquires a quarter-budget route for free. -/
theorem height_six_singleton_budget_lower (N level : ℕ) (a : ℂ)
    (parameter : ℂ → ℂ) (delta : ℝ)
    (contractive : ∀ s ∈ frontier QuarticSeed.region,
      ‖a * parameter s‖ ≤ ratio level)
    (finiteComparison : ∀ s ∈ frontier QuarticSeed.region,
      ‖QuarticApproximation.approximation4 N s - factorProduct [a] (parameter s)‖ ≤ delta) :
    1 ≤ (QuarticApproximation.radiusBudget 7 N + delta) * ((level : ℝ) + 2) := by
  apply QuarticWeilObstruction.height_six_singleton_comparison_budget a parameter level contractive
  exact source_comparison N [a] parameter QuarticSeed.region 7 delta
    QuarticSeed.closure_in_strip
    (fun s hs => QuarticWeilComparison.height_six_closure_radius (frontier_subset_closure hs))
    finiteComparison

universe u

/-- All-region return: a finite word per region precedes all its boundary probes.
The finite comparison and its uniform budget remain explicitly quantified. -/
theorem rh_of_graph_model_envelopes {I : Type u}
    (regions : I → Set ℂ) (coefficients : I → List ℂ)
    (parameter : I → ℂ → ℂ) (level cutoff : I → ℕ) (radius delta : I → ℝ)
    (bounded : ∀ i, Bornology.IsBounded (regions i))
    (contained : ∀ i, closure (regions i) ⊆ rightCriticalStrip)
    (regular : ∀ i, DiffContOnCl ℂ (parameter i) (regions i))
    (coverage : ∀ s ∈ rightCriticalStrip, ∃ i, s ∈ regions i)
    (size : ∀ i, ∀ s ∈ frontier (regions i), ‖s‖ ≤ radius i)
    (contractive : ∀ i, ∀ s ∈ frontier (regions i), ∀ a ∈ coefficients i,
      ‖a * parameter i s‖ ≤ ratio (level i))
    (finiteComparison : ∀ i, ∀ s ∈ frontier (regions i),
      ‖QuarticApproximation.approximation4 (cutoff i) s -
        factorProduct (coefficients i) (parameter i s)‖ ≤ delta i)
    (budget : ∀ i, (QuarticApproximation.radiusBudget (radius i) (cutoff i) + delta i) *
      ((level i : ℝ) + 2) ^ (coefficients i).length ≤ 1 / 4) :
    _root_.RiemannHypothesis := by
  apply rh_of_weil_model_envelopes regions coefficients parameter level
    (fun i => QuarticApproximation.radiusBudget (radius i) (cutoff i) + delta i)
    bounded contained regular coverage contractive
  · intro i
    exact source_comparison (cutoff i) (coefficients i) (parameter i)
      (regions i) (radius i) (delta i) (contained i) (size i) (finiteComparison i)
  · exact budget

end GRWTSK.NumberTheory.Conditional.SoficWeilSourceComparison
