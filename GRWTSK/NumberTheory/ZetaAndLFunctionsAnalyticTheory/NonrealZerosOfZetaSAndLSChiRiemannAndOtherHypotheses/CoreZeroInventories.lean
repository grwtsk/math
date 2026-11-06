/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.CompactZeroInventory
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CriticalStripCores
import Mathlib.NumberTheory.LSeries.ZetaZeros

/-!
# Complete source inventories on arbitrary RH and Dirichlet-GRH cores

The actual upstream zeta and L-function have a nonzero value at two. They are
analytic on the connected punctured plane C\{1}. The compact-inventory theorem
therefore constructs a complete finite zero set on EVERY existing core, with
no assumption of RH, GRH, simplicity or a numerical zero list.

The construction is noncomputable and does not decide that these finite sets
are empty. The last equivalences identify exactly the still-unsupplied claim:
all right-core inventories empty is RH; all off-core inventories empty for
every positive modulus and character is Dirichlet GRH. Existence and completeness
of inventories do not prove their emptiness. Nothing is renamed to evade this.

The circle consumers retain the full analytic multiplicities. The source
nonvanishing at two and the connectedness theorem are reused, not inferred
from a zero list or assumed certificate. The principal pole is excluded by
actual domain inclusion. Imprimitive characters are not discarded.

AI-assisted source. Upstream nonvanishing, analytic order, and topology retain
Mathlib authorship/license. Compilation, kernel checking, transitive axiom audit
and independent review: NOT_RUN. No theorem-level novelty claim.
-/

set_option autoImplicit false
noncomputable section
open Set Metric
open scoped BigOperators

namespace GRWTSK.NumberTheory.Conditional.SourceInventories

open GRWTSK.Analysis.ComplexAnalysis.CompactZeroInventory
open GRWTSK.Analysis.ComplexAnalysis

/-- Both sources are compared on the same connected domain, with the pole removed. -/
def poleComplement : Set ℂ := {1}ᶜ

def zetaContext : AnalyticContext riemannZeta poleComplement where
  analytic := analyticOn_riemannZeta
  connected := isConnected_compl_singleton_of_one_lt_rank (by simp) 1
  anchor := 2
  anchor_mem := by norm_num [poleComplement]
  anchor_nonzero := riemannZeta_ne_zero_of_one_le_re (by norm_num)

def characterContext {N : ℕ} [NeZero N] (χ : DirichletCharacter ℂ N) :
    AnalyticContext χ.LFunction poleComplement where
  analytic := by
    apply DifferentiableOn.analyticOnNhd _ isOpen_compl_singleton
    intro s hs
    exact (χ.differentiableAt_LFunction s (Or.inl hs)).differentiableWithinAt
  connected := isConnected_compl_singleton_of_one_lt_rank (by simp) 1
  anchor := 2
  anchor_mem := by norm_num [poleComplement]
  anchor_nonzero := χ.LFunction_ne_zero_of_one_le_re (Or.inr (by norm_num)) (by norm_num)

theorem rightCore_avoids_pole (n : ℕ) : rightCore n ⊆ poleComplement := by
  intro s hs
  exact strip_ne_one (rightCore_subset n hs).2

theorem offCore_avoids_pole (n : ℕ) : offCore n ⊆ poleComplement := by
  intro s hs
  exact strip_ne_one (offCore_subset n hs).2.1

/-- All actual zeros on the compact core, including its boundary. -/
def zetaCore (n : ℕ) : Finset ℂ :=
  zetaContext.zeros (rightCore n) (rightCore_isCompact n) (rightCore_avoids_pole n)

def characterCore {N : ℕ} [NeZero N] (χ : DirichletCharacter ℂ N) (n : ℕ) : Finset ℂ :=
  (characterContext χ).zeros (offCore n) (offCore_isCompact n) (offCore_avoids_pole n)

@[simp] theorem mem_zetaCore (n : ℕ) (s : ℂ) :
    s ∈ zetaCore n ↔ s ∈ rightCore n ∧ riemannZeta s = 0 :=
  zetaContext.mem_zeros _ _ _ s

@[simp] theorem mem_characterCore {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N) (n : ℕ) (s : ℂ) :
    s ∈ characterCore χ n ↔ s ∈ offCore n ∧ χ.LFunction s = 0 :=
  (characterContext χ).mem_zeros _ _ _ s

/-- Completeness and finite analytic orders are supplied together at every core index. -/
theorem complete_character_inventory {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N) (n : ℕ) :
    (∀ s : ℂ, s ∈ characterCore χ n ↔ s ∈ offCore n ∧ χ.LFunction s = 0) ∧
    ∀ s ∈ characterCore χ n,
      0 < analyticOrderNatAt χ.LFunction s ∧
      analyticOrderAt χ.LFunction s = (analyticOrderNatAt χ.LFunction s : ℕ∞) := by
  refine ⟨mem_characterCore χ n, ?_⟩
  intro s hs
  obtain ⟨inside, zero⟩ := (mem_characterCore χ n s).mp hs
  exact ⟨(characterContext χ).positive_order s (offCore_avoids_pole n inside) zero,
    (characterContext χ).actual_order s (offCore_avoids_pole n inside)⟩

theorem zetaCore_empty_iff (n : ℕ) :
    zetaCore n = ∅ ↔ ∀ s ∈ rightCore n, riemannZeta s ≠ 0 :=
  zetaContext.zeros_empty_iff _ _ _

theorem characterCore_empty_iff {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N) (n : ℕ) :
    characterCore χ n = ∅ ↔ ∀ s ∈ offCore n, χ.LFunction s ≠ 0 :=
  (characterContext χ).zeros_empty_iff _ _ _

/-- This equivalence does not construct the empty inventories. -/
theorem rh_iff_all_zetaCore_empty :
    _root_.RiemannHypothesis ↔ ∀ n : ℕ, zetaCore n = ∅ := by
  rw [rh_iff_nonzero_rightStrip]
  constructor
  · intro nonzero n
    exact (zetaCore_empty_iff n).mpr (fun s hs => nonzero s (rightCore_subset n hs))
  · intro empty s hs
    obtain ⟨n, hn⟩ := exists_rightCore hs
    exact (zetaCore_empty_iff n).mp (empty n) s hn

/-- No same-character reflection or finite conductor cutoff is smuggled into GRH. -/
theorem criticalLine_iff_all_characterCore_empty {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N) :
    DirichletCriticalLine χ ↔ ∀ n : ℕ, characterCore χ n = ∅ := by
  rw [critical_line_iff_nonzero_offStrip]
  constructor
  · intro nonzero n
    exact (characterCore_empty_iff χ n).mpr
      (fun s hs => nonzero s (offCore_subset n hs))
  · intro empty s hs
    obtain ⟨n, hn⟩ := exists_offCore hs
    exact (characterCore_empty_iff χ n).mp (empty n) s hn

theorem grh_iff_all_characterCore_empty :
    DirichletGRH ↔ ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N) (n : ℕ),
      characterCore χ n = ∅ := by
  constructor
  · intro h N hN χ
    exact (criticalLine_iff_all_characterCore_empty χ).mp (h N χ)
  · intro h N hN χ
    exact (criticalLine_iff_all_characterCore_empty χ).mpr (h N χ)

/-- A finite complete explicit zero formula for the actual Dirichlet source.
The contour must avoid zeros and the pole; those are geometric hypotheses,
not an assumption that the interior has no zeros. -/
theorem character_circle_formula {N : ℕ} [NeZero N]
    (χ : DirichletCharacter ℂ N) (c : ℂ) (r : ℝ) (positive : 0 < r)
    (contained : closedBall c r ⊆ poleComplement)
    (boundary : ∀ z ∈ sphere c r, χ.LFunction z ≠ 0)
    (w : ℂ → ℂ) (hw : AnalyticOnNhd ℂ w (closedBall c r)) :
    CircleIntegrable (fun z => logDeriv χ.LFunction z * w z) c r ∧
    (∮ z in C(c, r), logDeriv χ.LFunction z * w z) =
      (∑ a ∈ (characterContext χ).zeros (closedBall c r)
        (isCompact_closedBall c r) contained,
        (analyticOrderNatAt χ.LFunction a : ℂ) * w a) * FinitePrincipalPartCircle.period :=
  (characterContext χ).weighted_circle_formula c r positive contained boundary w hw

end GRWTSK.NumberTheory.Conditional.SourceInventories
