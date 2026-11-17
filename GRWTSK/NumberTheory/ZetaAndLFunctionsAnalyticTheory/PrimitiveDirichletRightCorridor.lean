/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRightStripWitnessReturn

/-!
# A right-corridor reduction for Dirichlet GRH

An upper bound on the real parts of primitive nonprincipal strip zeros
lets the remaining nonvanishing proof or Weil witness construction work
on a half-open corridor. The upper endpoint belongs to the corridor.
The ordinary L-function, the inverse-character reflection and the
primitive-to-imprimitive return are those of the existing Weil route.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open GRWTSK.NumberTheory.Conditional

/-- A real-part ceiling for zeros of every primitive nonprincipal L-function
in the open critical strip. -/
def PrimitiveStripZeroUpperBound (σ : ℝ) : Prop :=
  ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q),
    χ.IsPrimitive → χ ≠ 1 → ∀ s : ℂ, 0 < s.re → s.re < 1 →
      χ.LFunction s = 0 → s.re ≤ σ

/-- Consume a strict half-plane theorem stated for the exact ordinary
L-function with the principal pole excluded. -/
theorem primitiveStripZeroUpperBound_of_halfPlane {σ : ℝ}
    (hzeroFree : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q) (s : ℂ),
      σ < s.re → ¬ (χ = 1 ∧ s = 1) → χ.LFunction s ≠ 0) :
    PrimitiveStripZeroUpperBound σ := by
  intro q hq χ _ hn s _ _ hz
  exact le_of_not_gt (fun hs => hzeroFree q χ s hs (fun h => hn h.1) hz)

/-- A zero-free supplier on a specified subset of the residual right strip. -/
def PrimitiveRightCorridorZeroFreeOn (σ : ℝ) (region : ℕ → ℂ → Prop) : Prop :=
  ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q),
    χ.IsPrimitive → χ ≠ 1 → ∀ s : ℂ, region q s → 1 / 2 < s.re → s.re ≤ σ →
      s.re < 1 → χ.LFunction s ≠ 0

/-- The entire part of the right half of the critical strip left by a
strict external zero-free half-plane. -/
abbrev PrimitiveRightCorridorZeroFree (σ : ℝ) : Prop :=
  PrimitiveRightCorridorZeroFreeOn σ (fun _ _ => True)

/-- The three regions partition the primitive residual corridor. The
boundary heights belong to the finite head. -/
theorem primitiveRightCorridorZeroFree_of_conductor_height_cover {σ : ℝ}
    (Q : ℕ) (H : ℕ → ℝ)
    (head : PrimitiveRightCorridorZeroFreeOn σ (fun q s => q ≤ Q ∧ |s.im| ≤ H q))
    (heightTail : PrimitiveRightCorridorZeroFreeOn σ (fun q s => q ≤ Q ∧ H q < |s.im|))
    (conductorTail : PrimitiveRightCorridorZeroFreeOn σ (fun q _ => Q < q)) :
    PrimitiveRightCorridorZeroFree σ := by
  intro q hq χ hp hn s _ hhalf hσ hlt
  by_cases hQ : q ≤ Q
  · by_cases hH : |s.im| ≤ H q
    · exact head q χ hp hn s ⟨hQ, hH⟩ hhalf hσ hlt
    · exact heightTail q χ hp hn s ⟨hQ, lt_of_not_ge hH⟩ hhalf hσ hlt
  · exact conductorTail q χ hp hn s (lt_of_not_ge hQ) hhalf hσ hlt

/-- The height schedule can be chosen separately for each primitive
nonprincipal character. Strict window bounds still cover every ordinate
when the heights are cofinal. -/
theorem primitiveRightCorridorZeroFree_of_characterwise_cofinal_heights {σ : ℝ}
    (localCover : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q),
      χ.IsPrimitive → χ ≠ 1 → ∃ H : ℕ → ℝ,
        (∀ T : ℝ, ∃ n : ℕ, T < H n) ∧
        ∀ (n : ℕ) (s : ℂ), |s.im| < H n → 1 / 2 < s.re → s.re ≤ σ →
          s.re < 1 → χ.LFunction s ≠ 0) :
    PrimitiveRightCorridorZeroFree σ := by
  intro q hq χ hp hn s _ hhalf hσ hlt
  obtain ⟨H, hcofinal, hlocal⟩ := localCover q χ hp hn
  obtain ⟨n, hnHeight⟩ := hcofinal |s.im|
  exact hlocal n s hnHeight hhalf hσ hlt

/-- RH supplies the primitive principal case. The corridor and upper bound
exclude the right case, and reflection excludes the left case for the
inverse character. -/
theorem dirichletGRH_iff_rh_and_primitive_right_corridor {σ : ℝ}
    (hbound : PrimitiveStripZeroUpperBound σ) :
    DirichletGRH ↔ (_root_.RiemannHypothesis ∧ PrimitiveRightCorridorZeroFree σ) := by
  constructor
  · intro h
    refine ⟨grh_implies_rh h, ?_⟩
    intro q hq χ _ _ s _ hs _ hlt hz
    have hline := h q χ s (by linarith) hlt hz
    exact (ne_of_gt hs) hline
  · rintro ⟨hRH, hcorridor⟩
    apply dirichletGRH_of_rh_and_primitive_rightStrip hRH
    intro q hq χ hp hn s hs hlt hz
    exact hcorridor q χ hp hn s trivial hs (hbound q χ hp hn s (by linarith) hlt hz) hlt hz

/-- The actual negative Weil test, with its domain restricted to the
residual right corridor. -/
def PrimitiveRightCorridorNegativeWitness (σ : ℝ) : Prop :=
  ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (s : ℂ),
    1 / 2 < s.re → s.re ≤ σ → s.re < 1 → χ.LFunction s = 0 →
      ∃ (T : ℝ) (f : ℝ → ℝ), Admissible χ T f ∧
        primitiveArithmeticValue χ hp hn T (liftReal f) < 0

/-- A corridor witness feeds the existing full right-strip consumer
whenever the same source's zeros satisfy the upper bound. -/
theorem primitiveRightStripNegativeWitness_of_corridor {σ : ℝ}
    (hbound : PrimitiveStripZeroUpperBound σ)
    (hwitness : PrimitiveRightCorridorNegativeWitness σ) :
    PrimitiveRightStripNegativeWitness := by
  intro q hq χ hp hn s hhalf hlt hz
  exact hwitness q χ hp hn s hhalf (hbound q χ hp hn s (by linarith) hlt hz) hlt hz

/-- The original Weil stages and the corridor witness imply full Dirichlet
GRH given RH and the zero upper bound. -/
theorem dirichletGRH_of_rh_and_corridor_weil {σ : ℝ}
    (hRH : _root_.RiemannHypothesis)
    (hbound : PrimitiveStripZeroUpperBound σ)
    (hwitness : PrimitiveRightCorridorNegativeWitness σ)
    (hsmall : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q)
      (hp : χ.IsPrimitive) (hn : χ ≠ 1), SmallConductorStages χ hp hn) :
    DirichletGRH :=
  dirichletGRH_of_rh_and_rightStrip_witness hRH
    (primitiveRightStripNegativeWitness_of_corridor hbound hwitness) hsmall

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
