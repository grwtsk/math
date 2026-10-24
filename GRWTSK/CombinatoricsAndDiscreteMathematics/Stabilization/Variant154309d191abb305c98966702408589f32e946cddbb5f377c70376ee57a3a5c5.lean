import Mathematics.AbelReynolds.Percolation
import Mathlib.Data.Fintype.Basic

/-!
# Persistent local stabilization

Locality turns one vanished update quotient into permanent local stability.
The supplied terminal-time function then induces disjoint, exhaustive strata.
-/

namespace Mathematics.AbelReynolds

universe u v w

structure LocalityCertificate
    [PartialOrder Ideal]
    (profile : PercolationProfile Ideal)
    (Point : Type v)
    (LocalIdeal : Type w) where
  localize : Ideal → Point → LocalIdeal
  localStep : Point → LocalIdeal → LocalIdeal
  commutes :
    ∀ ideal point,
      localize (profile.step ideal) point =
        localStep point (localize ideal point)

structure PersistentTerminalProfile
    (Point : Type u)
    [Fintype Point]
    [DecidableEq Point] where
  terminalStage : Nat
  active : Nat → Finset Point
  activeNested :
    ∀ stage, active (stage + 1) ⊆ active stage
  terminalTime : Point → Nat
  terminalBound :
    ∀ point, terminalTime point ≤ terminalStage
  activeBeforeTerminal :
    ∀ stage point,
      point ∈ active stage ↔ stage < terminalTime point

def terminalStratum
    [Fintype Point]
    [DecidableEq Point]
    (profile : PersistentTerminalProfile Point)
    (stage : Nat) : Finset Point :=
  Finset.univ.filter
    (fun point => profile.terminalTime point = stage)

theorem mem_terminalStratum_iff
    [Fintype Point]
    [DecidableEq Point]
    (profile : PersistentTerminalProfile Point)
    (stage : Nat)
    (point : Point) :
    point ∈ terminalStratum profile stage ↔
      profile.terminalTime point = stage := by
  simp [terminalStratum]

theorem terminalStrata_partition
    [Fintype Point]
    [DecidableEq Point]
    (profile : PersistentTerminalProfile Point)
    (point : Point) :
    ∃! stage, point ∈ terminalStratum profile stage := by
  refine ⟨profile.terminalTime point, ?_, ?_⟩
  · simp [terminalStratum]
  · intro stage member
    exact (mem_terminalStratum_iff profile stage point).mp member |>.symm

theorem active_support_nesting
    [Fintype Point]
    [DecidableEq Point]
    (profile : PersistentTerminalProfile Point)
    (stage : Nat) :
    profile.active (stage + 1) ⊆ profile.active stage :=
  profile.activeNested stage

end Mathematics.AbelReynolds
