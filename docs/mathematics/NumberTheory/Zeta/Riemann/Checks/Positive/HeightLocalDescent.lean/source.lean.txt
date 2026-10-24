/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripHeightDescent

set_option autoImplicit false

/-!
# Exact-type source fixtures for height-local atlas repairs

These are Lean source fixtures, not execution results. No Lean/Lake evaluation or
kernel audit is implied by their presence. They must be replayed at the exact source
revision with their transitive imports. The checks retain the conditions on cover,
all heights, shell extension, and the distinction between paths and their existence.
-/

namespace GRWTSK.RiemannHypothesis.HeightLocalDescentChecks

open CriticalStripHeightDescent

section Paths

variable {ι A X H : Type*} [Ring A] [AddCommGroup H] [Module ℂ H]
variable (atlas : CriticalStripAtlas ι A X H) (i j k : ι)

example : Nonempty (VerticalPath atlas i i) :=
  ⟨VerticalPath.refl i⟩

example (p : Nonempty (VerticalPath atlas i j))
    (q : Nonempty (VerticalPath atlas j k)) :
    Nonempty (VerticalPath atlas i k) :=
  VerticalPath.nonempty_trans p q

end Paths

example : ZetaCommutatorRoot.localProfile.status = .necessary :=
  ZetaCommutatorRoot.localProfile_status

example : (ZetaCommutatorRoot.RootStatement → _root_.RiemannHypothesis) ↔
    _root_.RiemannHypothesis :=
  ZetaCommutatorRoot.rootStatement_implies_rh_iff

example (N : ℕ) : (windowProfile N).status = .necessary :=
  windowProfile_status N

example : allWindowsProfile.status = .equivalent :=
  allWindowsProfile_status

example (N : ℕ) : WindowRH (N + 1) ↔ WindowRH N ∧ ShellRH N :=
  window_succ_iff N

example (hbase : WindowRH 0) (extend : ∀ N : ℕ, WindowRH N → ShellRH N) :
    _root_.RiemannHypothesis :=
  rh_of_base_and_shell_extension hbase extend

example (levels : ℕ → ℕ) (B : ℕ) (hbounded : ∀ n, levels n ≤ B) :
    ¬ (∀ N : ℕ, ∃ n : ℕ, N ≤ levels n) :=
  bounded_levels_not_cofinal levels B hbounded

example : ¬ Function.Injective ZetaCommutatorRoot.root.heightAt :=
  root_height_not_injective

example : ¬ (∃ f : ℂ →+* ZetaCommutatorRoot.Operator,
    ∀ z : ℂ, f z = ZetaCommutatorRoot.coordinateOperator z) :=
  no_coordinate_ringHom

example (chart : NonvacuousHolomorphicChartMap) : IsOpen chart.map.domain :=
  chart.domain_isOpen

end GRWTSK.RiemannHypothesis.HeightLocalDescentChecks
