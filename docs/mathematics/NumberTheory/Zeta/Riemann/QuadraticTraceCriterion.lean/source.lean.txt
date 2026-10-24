/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors, GRL-RH-1 / 0.4.0.
Formalization assistance: OpenAI Codex. Mathlib retains upstream authorship/license. -/
import GRWTSK.Algebra.Polynomial.ConjugateQuartic
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions
import Mathlib.Topology.Order.Basic

/-!
# A signed quartic-trace reformulation of the exact Mathlib RH target

This is an equivalence and a conditional consumer. No source functional,
nonnegativity supplier, orbit-isolation theorem or multiplicity claim is supplied.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann

open GRWTSK.RiemannHypothesis GRWTSK.Polynomial.ConjugateQuartic
open Filter Topology

/-- The open positivity premise, on exactly the existing nontrivial-zero domain. -/
def QuadraticTraceNonnegative : Prop :=
  ∀ s : ℂ, NontrivialZetaZero s → 0 ≤ witnessTrace (s.re - 1 / 2) s.im

theorem riemannHypothesis_iff_quadraticTraceNonnegative :
    _root_.RiemannHypothesis ↔ QuadraticTraceNonnegative := by
  constructor
  · intro h s hs
    apply (witnessTrace_nonneg_iff _ _).mpr
    have := h s hs.1 hs.2.1 hs.2.2
    linarith
  · intro h s hz ht hp
    have := (witnessTrace_nonneg_iff _ _).mp (h s ⟨hz, ht, hp⟩)
    linarith

/-- An actual positive source with a vanishing extraction error would suffice.
Every source identity, positivity assertion and limit remains a hypothesis. -/
theorem riemannHypothesis_of_trace_extraction
    (hextract : ∀ s : ℂ, NontrivialZetaZero s →
      ∃ (W weight error : ℕ → ℝ) (L : ℝ),
        0 < L ∧
        (∀ n, W n = weight n * witnessTrace (s.re - 1 / 2) s.im + error n) ∧
        (∀ n, 0 ≤ W n) ∧
        Tendsto weight atTop (𝓝 L) ∧ Tendsto error atTop (𝓝 0)) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_iff_quadraticTraceNonnegative.mpr
  intro s hs
  obtain ⟨W, weight, error, L, hL, heq, hW, hw, he⟩ := hextract s hs
  have hlim : Tendsto W atTop (𝓝 (L * witnessTrace (s.re - 1 / 2) s.im)) := by
    simp_rw [funext heq]
    simpa using (hw.mul_const (witnessTrace (s.re - 1 / 2) s.im)).add he
  have hnonneg : 0 ≤ L * witnessTrace (s.re - 1 / 2) s.im :=
    ge_of_tendsto hlim (Eventually.of_forall hW)
  exact (mul_nonneg_iff_of_pos_left hL).mp hnonneg

end GRWTSK.NumberTheory.Zeta.Riemann
