# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CriticalFrechet.Variant6c7e290e6ff91c01a5afb5116d382fac8a31a69c836f7ec529d92c482be0f4a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9568a86779af9ecff5f37daa002e7b426119f4c5` · SHA-256 `6c7e290e6ff91c01a5afb5116d382fac8a31a69c836f7ec529d92c482be0f4a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.DirichletGRH.WeightedSummatory
public import Surface.Core.DirichletGRH.CenteredPsi
import Mathlib.Tactic

/-!
# The countable critical Fréchet criterion

The intersection of the weighted spaces with exponents
`1 / 2 + 1 / r`, `r ≥ 1`, is the countable theorem-language model for the
critical Fréchet-type space.  This file proves that membership in that
countable intersection is equivalent to satisfying a weighted estimate for
every real exponent `1 / 2 + ε`, `ε > 0`.

This is only a membership predicate.  No topology, completeness instance,
Dirichlet-character estimate, or GRH statement is introduced here.
-/

public section

namespace Surface.Core.DirichletGRH

noncomputable section

/-- Membership in the countable projective intersection of weighted spaces
with exponents approaching `1 / 2` from the right. -/
@[expose]
def CriticalSummatoryFrechetMembership (F : ℕ → ℂ) : Prop :=
  ∀ r : ℕ, 1 ≤ r →
    HasWeightedSummatoryBound
      ((1 / 2 : ℝ) + 1 / (r : ℝ)) F

/-- The equivalent uncountable formulation using every positive real power
loss. -/
@[expose]
def CriticalSummatoryHalfPlusEpsilonMembership (F : ℕ → ℂ) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    HasWeightedSummatoryBound ((1 / 2 : ℝ) + ε) F

/-- Character-specialized half-plus-epsilon criterion for the centered
twisted Chebyshev function. -/
@[expose]
def CenteredTwistedPsiHalfPlusEpsilon
    {q : ℕ} (χ : DirichletCharacter ℂ q) : Prop :=
  CriticalSummatoryHalfPlusEpsilonMembership (centeredTwistedPsi χ)

/-- Character-specialized countable Fréchet membership. -/
@[expose]
def CenteredTwistedPsiCriticalFrechetMembership
    {q : ℕ} (χ : DirichletCharacter ℂ q) : Prop :=
  CriticalSummatoryFrechetMembership (centeredTwistedPsi χ)

/-- A countable critical-space bound supplies every positive real
half-plus-epsilon bound.  Archimedeanness chooses `r` with `1 / r < ε`, and
monotonicity of `x ^ σ` for `x ≥ 2` finishes the comparison. -/
@[surface_adapter, surface_published]
theorem criticalSummatoryFrechetMembership_implies_halfPlusEpsilon
    {F : ℕ → ℂ} (hF : CriticalSummatoryFrechetMembership F) :
    CriticalSummatoryHalfPlusEpsilonMembership F := by
  intro ε hε
  obtain ⟨n, hn⟩ := exists_nat_one_div_lt hε
  let r : ℕ := n + 1
  have hr : 1 ≤ r := by
    dsimp [r]
    omega
  have hreciprocal : 1 / (r : ℝ) ≤ ε := by
    apply le_of_lt
    simpa [r, Nat.cast_add, Nat.cast_one] using hn
  exact (hF r hr).mono_exponent (by linarith)

/-- Bounds at every positive real power loss specialize to the countable
sequence `ε = 1 / r`. -/
@[surface_adapter, surface_published]
theorem criticalSummatoryHalfPlusEpsilonMembership_implies_frechet
    {F : ℕ → ℂ} (hF : CriticalSummatoryHalfPlusEpsilonMembership F) :
    CriticalSummatoryFrechetMembership F := by
  intro r hr
  have hr_pos : 0 < (r : ℝ) := by
    exact_mod_cast (show 0 < r by omega)
  exact hF (1 / (r : ℝ)) (one_div_pos.mpr hr_pos)

/-- The countable Fréchet criterion is exactly equivalent to quantifying over
all real `ε > 0`. -/
@[surface_adapter, surface_published]
theorem criticalSummatoryFrechetMembership_iff_halfPlusEpsilon
    (F : ℕ → ℂ) :
    CriticalSummatoryFrechetMembership F ↔
      CriticalSummatoryHalfPlusEpsilonMembership F := by
  constructor
  · exact criticalSummatoryFrechetMembership_implies_halfPlusEpsilon
  · exact criticalSummatoryHalfPlusEpsilonMembership_implies_frechet

/-- Expanded form of the same equivalence, convenient for clients that do
not need the named half-plus-epsilon predicate. -/
@[surface_adapter, surface_published]
theorem criticalSummatoryFrechetMembership_iff_forall_pos
    (F : ℕ → ℂ) :
    CriticalSummatoryFrechetMembership F ↔
      ∀ ε : ℝ, 0 < ε →
        HasWeightedSummatoryBound ((1 / 2 : ℝ) + ε) F := by
  exact criticalSummatoryFrechetMembership_iff_halfPlusEpsilon F

/-- The countable and all-real-exponent formulations agree for every
centered Dirichlet-character summatory function. -/
@[surface_adapter, surface_published]
theorem centeredTwistedPsiCriticalFrechetMembership_iff_halfPlusEpsilon
    {q : ℕ} (χ : DirichletCharacter ℂ q) :
    CenteredTwistedPsiCriticalFrechetMembership χ ↔
      CenteredTwistedPsiHalfPlusEpsilon χ := by
  exact criticalSummatoryFrechetMembership_iff_halfPlusEpsilon
    (centeredTwistedPsi χ)

end

end Surface.Core.DirichletGRH
```
