# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSchedulingIteration.Variant54029fd28814da85134c03af3ebc696196ca62df1a49c8c1b3c1eed8d875d22d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd4297f5c1e92ed890230f0dff30349d3e51976e` · SHA-256 `fcba1fd3b53034f5c15e7afd20611d32f90eda0266fcbfc303367cd3a7c84ee1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteAdditiveBudget.Variant77e0e3dadb44d6b0b670c9f972b68360d4add7f82ae95b51623c65324c86013f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"77e0e3dadb44d6b0b670c9f972b68360d4add7f82ae95b51623c65324c86013f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.FiniteAdditiveBudget.Variant77e0e3dadb44d6b0b670c9f972b68360d4add7f82ae95b51623c65324c86013f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"77e0e3dadb44d6b0b670c9f972b68360d4add7f82ae95b51623c65324c86013f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceSchedulingIteration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceSchedulingTransport

/-!
# Charged finite refinement and a native transport improvement

CSE-RH16-20261007. Research direction: grwtsk contributors.
Finite proof adapters: OpenAI Codex. Every localization, precision, return,
and inherited-state charge is retained. These elementary finite recurrences
are not an import of family 159's quantitative analytic iteration theorem.
The fixed arithmetic source and uniform all-real tail cap remain separate.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteAdditiveBudget.Variant77e0e3dadb44d6b0b670c9f972b68360d4add7f82ae95b51623c65324c86013f

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceSchedulingIteration

open scoped BigOperators
open SourceSchedulingTransport

/-- Complete additive finite budget, with every intermediate charge included. -/
theorem finite_additive_budget (state charge : ℕ → ℝ) (n : ℕ)
    (hstep : ∀ j < n, state (j + 1) ≤ state j + charge j) :
    state n ≤ state 0 + ∑ j ∈ Finset.range n, charge j := by
  revert hstep
  induction n with
  | zero => intro _hstep; simp
  | succ n ih =>
      intro hstep
      have hprev := ih (fun j hj => hstep j (by omega))
      have hlast := hstep n (by omega)
      rw [Finset.sum_range_succ]
      linarith

/-- A fixed per-step allowance bounds the whole finite run. -/
theorem finite_uniform_budget (state : ℕ → ℝ) (n : ℕ) (allowance : ℝ)
    (hstep : ∀ j < n, state (j + 1) ≤ state j + allowance) :
    state n ≤ state 0 + (n : ℝ) * allowance := by
  simpa using finite_additive_budget state (fun _ => allowance) n hstep

/-- The lower layer pays the higher layer's full forecast, without self-dependence. -/
theorem two_layer_triangular_budget (upper lower : ℕ → ℝ)
    (F : ℝ → ℝ) (n : ℕ) (a : ℝ) (ha : 0 ≤ a) (hF : Monotone F)
    (hupper : ∀ j < n, upper (j + 1) ≤ upper j + a)
    (hlower : ∀ j < n, lower (j + 1) ≤ lower j + F (upper j)) :
    upper n ≤ upper 0 + (n : ℝ) * a ∧
    lower n ≤ lower 0 + (n : ℝ) * F (upper 0 + (n : ℝ) * a) ∧
    (∑ j ∈ Finset.range n, F (upper j)) ≤
      (n : ℝ) * F (upper 0 + (n : ℝ) * a) := by
  have hforecast (j : ℕ) (hj : j < n) : upper j ≤ upper 0 + (n : ℝ) * a := by
    have hp := finite_uniform_budget upper j a (fun k hk => hupper k (by omega))
    have hcast : (j : ℝ) ≤ n := by exact_mod_cast hj.le
    have hmul := mul_le_mul_of_nonneg_right hcast ha
    linarith
  refine ⟨finite_uniform_budget upper n a hupper, ?_, ?_⟩
  · apply finite_uniform_budget lower n (F (upper 0 + (n : ℝ) * a))
    intro j hj
    exact (hlower j hj).trans (add_le_add le_rfl (hF (hforecast j hj)))
  · calc
      _ ≤ ∑ _j ∈ Finset.range n, F (upper 0 + (n : ℝ) * a) := by
        apply Finset.sum_le_sum
        intro j hj
        exact hF (hforecast j (Finset.mem_range.mp hj))
      _ = _ := by simp

/-- The complete charge includes the return and inherited constraints. -/
def chargedCost (precision localization returnCost inherited : ℕ → ℝ) (j : ℕ) : ℝ :=
  precision j + localization j + returnCost j + inherited j

/-- Total gain is usable only after the entire finite charge fits the budget. -/
theorem charged_refinement_gain
    (score gain precision localization returnCost inherited : ℕ → ℝ)
    (n : ℕ) (budget δ : ℝ)
    (_hcharges : ∀ j < n, 0 ≤ precision j ∧ 0 ≤ localization j ∧
      0 ≤ returnCost j ∧ 0 ≤ inherited j)
    (hstep : ∀ j < n, score (j + 1) ≤ score j - gain j +
      chargedCost precision localization returnCost inherited j)
    (hcost : (∑ j ∈ Finset.range n,
      chargedCost precision localization returnCost inherited j) ≤ budget)
    (hgain : budget + (n : ℝ) * δ ≤ ∑ j ∈ Finset.range n, gain j) :
    score n ≤ score 0 - (n : ℝ) * δ := by
  have hfinite := finite_additive_budget score
    (fun j => -gain j + chargedCost precision localization returnCost inherited j) n
    (by
      intro j hj
      calc
        _ ≤ score j - gain j + chargedCost precision localization returnCost inherited j :=
          hstep j hj
        _ = _ := by ring)
  simp only [Finset.sum_add_distrib, Finset.sum_neg_distrib] at hfinite
  linarith

/-- A charged refinement improves the actual final two-stage readout certificate. -/
theorem refined_two_stage_abs_le {ι : Type*} [Fintype ι]
    (c b d : ι → ℝ) (f g : ℝ → ℝ) (P Q : ℕ → ι → ι → ℝ)
    (gain precision localization returnCost inherited : ℕ → ℝ)
    (n : ℕ) (budget δ L : ℝ) (hL : 0 ≤ L)
    (hP : ∀ t ≤ n, ∀ i j, 0 ≤ P t i j)
    (hQ : ∀ t ≤ n, ∀ j k, 0 ≤ Q t j k)
    (hb : ∀ t ≤ n, ∀ i, b i = (∑ j, P t i j) - ∑ j, P t j i)
    (hr : ∀ t ≤ n, ∀ j,
      inducedDrift c d (P t) j = (∑ k, Q t j k) - ∑ k, Q t k j)
    (ht : ∀ i j, |f (c i) - f (c j) - (c i - c j) * g (c j)| ≤
      L * (c i - c j) ^ 2 / 2)
    (hg : ∀ j k, |g (c j) - g (c k)| ≤ L * |c j - c k|)
    (hcharges : ∀ j < n, 0 ≤ precision j ∧ 0 ≤ localization j ∧
      0 ≤ returnCost j ∧ 0 ≤ inherited j)
    (hstep : ∀ j < n, transportCost c (P (j + 1)) (Q (j + 1)) ≤
      transportCost c (P j) (Q j) - gain j +
        chargedCost precision localization returnCost inherited j)
    (hcost : (∑ j ∈ Finset.range n,
      chargedCost precision localization returnCost inherited j) ≤ budget)
    (hgain : budget + (n : ℝ) * δ ≤ ∑ j ∈ Finset.range n, gain j) :
    |readout c b d f g| ≤
      L * (transportCost c (P 0) (Q 0) - (n : ℝ) * δ) := by
  have hfinal := two_stage_abs_le c b d f g (P n) (Q n) L
    (hP n le_rfl) (hQ n le_rfl) (hb n le_rfl) (hr n le_rfl) ht hg
  have hdrop := charged_refinement_gain (fun j => transportCost c (P j) (Q j))
    gain precision localization returnCost inherited n budget δ hcharges hstep hcost hgain
  exact hfinal.trans (mul_le_mul_of_nonneg_left hdrop hL)

section CirculationFixture

/-- Exact coordinates for a complete two-atom example. -/
def fixtureCoordinate (i : Fin 2) : ℝ := if i = 0 then 0 else 2

def fixtureMass (i : Fin 2) : ℝ := if i = 0 then 1 else -1

def fixtureDerivative (i : Fin 2) : ℝ := if i = 0 then 2 else 0

def fixtureP (i j : Fin 2) : ℝ := if i = 0 ∧ j = 1 then 1 else 0

/-- Removing a two-way circulation changes no derivative marginal. -/
def fixtureQ (t : ℕ) (i j : Fin 2) : ℝ :=
  if i = 0 ∧ j = 1 then (if t = 0 then 3 else 2)
  else if i = 1 ∧ j = 0 then (if t = 0 then 1 else 0)
  else 0

theorem circulation_fixture_reconstruction (t : ℕ) :
    (∀ i, fixtureMass i = (∑ j, fixtureP i j) - ∑ j, fixtureP j i) ∧
    (∀ j, inducedDrift fixtureCoordinate fixtureDerivative fixtureP j =
      (∑ k, fixtureQ t j k) - ∑ k, fixtureQ t k j) := by
  constructor
  · intro i
    fin_cases i <;> norm_num [fixtureMass, fixtureP, Fin.sum_univ_two]
  · intro j
    fin_cases j <;> by_cases ht : t = 0 <;>
      norm_num [inducedDrift, fixtureCoordinate, fixtureDerivative,
        fixtureP, fixtureQ, ht, Fin.sum_univ_two]

theorem circulation_fixture_cost :
    transportCost fixtureCoordinate fixtureP (fixtureQ 0) = 10 ∧
    transportCost fixtureCoordinate fixtureP (fixtureQ 1) = 6 := by
  norm_num [transportCost, fixtureCoordinate, fixtureP, fixtureQ, Fin.sum_univ_two]

/-- This genuine refinement removes cost four while retaining both complete marginals. -/
theorem circulation_fixture_gain :
    transportCost fixtureCoordinate fixtureP (fixtureQ 1) =
      transportCost fixtureCoordinate fixtureP (fixtureQ 0) - 4 := by
  rw [circulation_fixture_cost.1, circulation_fixture_cost.2]
  norm_num

/-- Apply the actual circulation removal to the same complete native readout. -/
theorem circulation_fixture_readout_improved (f g : ℝ → ℝ) (L : ℝ)
    (_hL : 0 ≤ L)
    (ht : ∀ i j : Fin 2,
      |f (fixtureCoordinate i) - f (fixtureCoordinate j) -
        (fixtureCoordinate i - fixtureCoordinate j) * g (fixtureCoordinate j)| ≤
        L * (fixtureCoordinate i - fixtureCoordinate j) ^ 2 / 2)
    (hg : ∀ j k : Fin 2, |g (fixtureCoordinate j) - g (fixtureCoordinate k)| ≤
      L * |fixtureCoordinate j - fixtureCoordinate k|) :
    |readout fixtureCoordinate fixtureMass fixtureDerivative f g| ≤
      L * (transportCost fixtureCoordinate fixtureP (fixtureQ 0) - 4) := by
  have hP : ∀ i j : Fin 2, 0 ≤ fixtureP i j := by
    intro i j
    fin_cases i <;> fin_cases j <;> norm_num [fixtureP]
  have hQ : ∀ i j : Fin 2, 0 ≤ fixtureQ 1 i j := by
    intro i j
    fin_cases i <;> fin_cases j <;> norm_num [fixtureQ]
  have hfinal := two_stage_abs_le fixtureCoordinate fixtureMass fixtureDerivative
    f g fixtureP (fixtureQ 1) L hP hQ
    (circulation_fixture_reconstruction 1).1 (circulation_fixture_reconstruction 1).2 ht hg
  simpa only [circulation_fixture_gain] using hfinal

end CirculationFixture

end FormalResearch.RiemannHypothesis.SourceSchedulingIteration
```
