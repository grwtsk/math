/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.PersistentChannels

/-!
# Reception windows and questions that remain available

A reception window is a predicate on natural-number times. Access after any
finite readiness time is equivalent to cofinality of that predicate, not to a
uniform deadline. This isolates the mathematical difference between a retained
question and one that disappears before an answer can be formed.

Reuse: persistent output and exact eventual serial composition come from
`PersistentChannels`; no second partial-channel semantics is introduced.
The primary construction chooses a window time beyond issue, readiness, and
publication. The reverse implication extracts its finite publication witness.

Cofinality is a premise about opportunities. It is not inferred from storage,
and `Receivable` does not assert actual delivery, a scheduler's fairness, or a
person's ability to respond. Finite deadlines and missing windows are explicit
counterexamples. Independent review and all Lean verification: NOT_RUN.
Target: Lean v4.34.1; only existing standard-library modules are imported.
-/

namespace GRWTSK.Logic.Communication.Window

open Channel
open Channel.Time

universe u v w

variable {α : Type u} {β : Type v} {γ : Type w}

/-- The times at which a receiver has an opportunity to access a result. -/
abbrev Window := Nat → Prop

/-- The window has an opportunity at or beyond every finite threshold. -/
def Cofinal (window : Window) : Prop :=
  ∀ threshold, ∃ t, threshold ≤ t ∧ window t

/-- Issue and readiness must both precede the same available opportunity. -/
def Accessible (window : Window) (issued ready : Nat) : Prop :=
  ∃ t, issued ≤ t ∧ ready ≤ t ∧ window t

/-- Cofinality is the exact condition for accessibility at every readiness time. -/
theorem accessible_for_all_iff (window : Window) (issued : Nat) :
    (∀ ready, Accessible window issued ready) ↔ Cofinal window := by
  constructor
  · intro h threshold
    obtain ⟨t, _, hready, hw⟩ := h threshold
    exact ⟨t, hready, hw⟩
  · intro h ready
    obtain ⟨t, ht, hw⟩ := h (max issued ready)
    exact ⟨t, by omega, by omega, hw⟩

/-- Keeping a question available from its issue time is a cofinal window. -/
theorem retained_cofinal (issued : Nat) : Cofinal (fun t => issued ≤ t) := by
  intro threshold
  exact ⟨max issued threshold, by omega, by omega⟩

/-- Enlarging a reception window cannot remove an existing opportunity. -/
theorem accessible_mono {small large : Window}
    (included : ∀ t, small t → large t) {issued ready : Nat}
    (h : Accessible small issued ready) : Accessible large issued ready := by
  obtain ⟨t, hi, hr, hw⟩ := h
  exact ⟨t, hi, hr, included t hw⟩

/-- A bounded window necessarily excludes a sufficiently late finite response. -/
theorem bounded_window_excludes {window : Window} (deadline issued : Nat)
    (bounded : ∀ t, window t → t ≤ deadline) :
    ¬ Accessible window issued (deadline + 1) := by
  intro h
  obtain ⟨t, _, hr, hw⟩ := h
  have ht := bounded t hw
  omega

/-- A publication and a reception opportunity coexist at the witness time. -/
def Receivable (trace : Trace α β) (window : Window)
    (x : α) (issued ready : Nat) : Prop :=
  ∃ t y, issued ≤ t ∧ ready ≤ t ∧ window t ∧ trace t x = some y

/-- Receivability never manufactures a publication witness. -/
theorem eventually_of_receivable {trace : Trace α β} {window : Window}
    {x : α} {issued ready : Nat}
    (h : Receivable trace window x issued ready) : Eventually trace x := by
  obtain ⟨t, y, _, _, _, hy⟩ := h
  exact ⟨t, y, hy⟩

/-- Persistence synchronizes publication with a later accessible opportunity. -/
theorem receivable_of_eventually {trace : Trace α β} {window : Window}
    (persistent : Persistent trace) (cofinal : Cofinal window)
    {x : α} (eventual : Eventually trace x) (issued ready : Nat) :
    Receivable trace window x issued ready := by
  obtain ⟨s, y, hs⟩ := eventual
  obtain ⟨t, ht, hw⟩ := cofinal (max s (max issued ready))
  exact ⟨t, y, by omega, by omega, hw,
    persistent s t (by omega) x y hs⟩

/-- Under the exact persistence and window premises, no further loss occurs. -/
theorem receivable_iff_eventually {trace : Trace α β} {window : Window}
    (persistent : Persistent trace) (cofinal : Cofinal window)
    (x : α) (issued ready : Nat) :
    Receivable trace window x issued ready ↔ Eventually trace x :=
  ⟨eventually_of_receivable,
    fun h => receivable_of_eventually persistent cofinal h issued ready⟩

/-- End-to-end access has an exact intermediate-stage characterization. -/
theorem serial_receivable_iff {f : Trace α β} {g : Trace β γ} {window : Window}
    (hf : Persistent f) (hg : Persistent g) (hw : Cofinal window)
    (x : α) (issued ready : Nat) :
    Receivable (fun t => serial (f t) (g t)) window x issued ready ↔
      ∃ y, (∃ t, f t x = some y) ∧ Eventually g y :=
  (receivable_iff_eventually (persistent_serial hf hg) hw x issued ready).trans
    (eventual_serial_iff hf hg x)

/-- Persistent publication alone says nothing about an absent reception window. -/
theorem retention_without_opportunity_is_insufficient :
    ∃ trace : Trace Unit Unit,
      Persistent trace ∧ Eventually trace () ∧
        ¬ Receivable trace (fun _ => False) () 0 0 := by
  refine ⟨delayed (fun _ => 0) (fun _ => ()),
    delayed_persistent _ _, delayed_eventually _ _ (), ?_⟩
  intro h
  obtain ⟨_, _, _, _, impossible, _⟩ := h
  exact impossible

end GRWTSK.Logic.Communication.Window
