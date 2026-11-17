/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Data.Fintype.Pigeonhole
import Mathlib.Data.Set.Finite.Range
import Mathlib.Dynamics.PeriodicPts.Defs
import Mathlib.Tactic

/-!
# Safety certificates for deterministic orbits

An invariant describes safe states, contains the initial state, and survives each
transition. Induction gives safety at every iterate. Conversely, the orbit itself
is an invariant when all iterates are safe. This converse assumes the safety
proposition and supplies no independent proof of it.

The finite carrier checker checks initial membership, transition closure, and
safety of every listed state. Its certificate exists exactly when the orbit is
safe and has finite range. A successor orbit gives a safe counterexample to
unrestricted finite-carrier completeness. Exact repetition of a state in a safe
prefix provides another sufficient condition. The resulting period reduces
each time after the repetition to an earlier time. The finite-type bound counts
full states on which the transition and bad-state predicate depend.

`finite_prefix_agreement_with_delayed_failure` exhibits two orbits with identical
observed states and the same bad-state predicate, one safe forever and the other
reaching the bad state immediately after the observed prefix. For a machine with
an unbounded tape, any use of the finite-state criterion requires a proof about
the full orbit or a separately proved safety-preserving abstraction.
-/

set_option autoImplicit false

open Function

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.OrbitSafetyCertificate

variable {State : Type*}

/-- No bad state occurs among the full configurations from time zero through `bound`. -/
def SafeThrough (step : State → State) (start : State) (bad : State → Prop) (bound : ℕ) : Prop :=
  ∀ n ≤ bound, ¬ bad (step^[n] start)

/-- No bad state occurs anywhere on the full orbit. -/
def AlwaysSafe (step : State → State) (start : State) (bad : State → Prop) : Prop :=
  ∀ n : ℕ, ¬ bad (step^[n] start)

/-- Initialization, forward closure, and exclusion of the bad states. -/
def IsSafetyInvariant (step : State → State) (start : State) (bad : State → Prop)
    (carrier : Set State) : Prop :=
  start ∈ carrier ∧ Set.MapsTo step carrier carrier ∧ ∀ state ∈ carrier, ¬ bad state

theorem IsSafetyInvariant.alwaysSafe {step : State → State} {start : State}
    {bad : State → Prop} {carrier : Set State}
    (certificate : IsSafetyInvariant step start bad carrier) : AlwaysSafe step start bad :=
  fun n => certificate.2.2 _ (certificate.2.1.iterate n certificate.1)

/-- The exact orbit is the canonical invariant obtained from the desired safety proposition. -/
theorem AlwaysSafe.orbitInvariant {step : State → State} {start : State} {bad : State → Prop}
    (safe : AlwaysSafe step start bad) :
    IsSafetyInvariant step start bad (Set.range fun n : ℕ => step^[n] start) := by
  refine ⟨⟨0, rfl⟩, ?_, ?_⟩
  · rintro _ ⟨n, rfl⟩
    exact ⟨n + 1, iterate_succ_apply' step n start⟩
  · rintro _ ⟨n, rfl⟩
    exact safe n

theorem alwaysSafe_iff_exists_invariant (step : State → State) (start : State)
    (bad : State → Prop) :
    AlwaysSafe step start bad ↔ ∃ carrier : Set State, IsSafetyInvariant step start bad carrier :=
  ⟨fun safe => ⟨_, safe.orbitInvariant⟩, fun ⟨_, certificate⟩ => certificate.alwaysSafe⟩

/-- Executable with decidable equality and a supplied decision procedure for `bad`. -/
def checkCarrier [DecidableEq State] (step : State → State) (start : State)
    (bad : State → Prop) [DecidablePred bad] (carrier : Finset State) : Bool :=
  decide (start ∈ carrier ∧ ∀ state ∈ carrier, step state ∈ carrier ∧ ¬ bad state)

theorem checkCarrier_eq_true_iff [DecidableEq State] (step : State → State) (start : State)
    (bad : State → Prop) [DecidablePred bad] (carrier : Finset State) :
    checkCarrier step start bad carrier = true ↔ IsSafetyInvariant step start bad ↑carrier := by
  simp only [checkCarrier, decide_eq_true_eq, IsSafetyInvariant, Set.MapsTo,
    Finset.mem_coe, ← forall_and]

theorem checkCarrier_sound [DecidableEq State] (step : State → State) (start : State)
    (bad : State → Prop) [DecidablePred bad] {carrier : Finset State}
    (accepted : checkCarrier step start bad carrier = true) : AlwaysSafe step start bad :=
  ((checkCarrier_eq_true_iff step start bad carrier).mp accepted).alwaysSafe

/-- Completeness of this checker for safe orbits with finite range. -/
theorem exists_accepted_carrier_iff [DecidableEq State] (step : State → State) (start : State)
    (bad : State → Prop) [DecidablePred bad] :
    (∃ carrier : Finset State, checkCarrier step start bad carrier = true) ↔
      AlwaysSafe step start bad ∧ (Set.range fun n : ℕ => step^[n] start).Finite := by
  constructor
  · rintro ⟨carrier, accepted⟩
    have cert := (checkCarrier_eq_true_iff step start bad carrier).mp accepted
    refine ⟨cert.alwaysSafe, carrier.finite_toSet.subset ?_⟩
    rintro _ ⟨n, rfl⟩
    exact cert.2.1.iterate n cert.1
  · rintro ⟨safe, finiteOrbit⟩
    refine ⟨finiteOrbit.toFinset, (checkCarrier_eq_true_iff step start bad _).mpr ?_⟩
    simpa only [Set.Finite.coe_toFinset] using safe.orbitInvariant

/-- A repeated full state closes the safe prefix into a periodic tail. -/
theorem alwaysSafe_of_repeated_state {step : State → State} {start : State} {bad : State → Prop}
    {i j : ℕ} (before : i < j) (repeated : step^[i] start = step^[j] start)
    (prefixSafe : SafeThrough step start bad j) : AlwaysSafe step start bad := by
  have periodic : IsPeriodicPt step (j - i) (step^[i] start) := by
    change step^[j - i] (step^[i] start) = step^[i] start
    rw [← iterate_add_apply, Nat.sub_add_cancel before.le]
    exact repeated.symm
  intro n
  by_cases early : n < i
  · exact prefixSafe n (early.le.trans before.le)
  let k := (n - i) % (j - i)
  have reduced : k < j - i := Nat.mod_lt _ (Nat.sub_pos_of_lt before)
  have sameState : step^[k + i] start = step^[n] start := by
    calc
      step^[k + i] start = step^[k] (step^[i] start) := iterate_add_apply ..
      _ = step^[n - i] (step^[i] start) := periodic.iterate_mod_apply _
      _ = step^[n] start := by rw [← iterate_add_apply, Nat.sub_add_cancel (Nat.le_of_not_gt early)]
  rw [← sameState]
  exact prefixSafe (k + i) (by omega)

/-- A full finite configuration space supplies a uniform time bound by pigeonhole. -/
theorem alwaysSafe_iff_safeThrough_card [Fintype State] (step : State → State) (start : State)
    (bad : State → Prop) :
    AlwaysSafe step start bad ↔ SafeThrough step start bad (Fintype.card State) := by
  refine ⟨fun safe n _ => safe n, fun safe => ?_⟩
  obtain ⟨i, j, different, repeated⟩ := Fintype.exists_ne_map_eq_of_card_lt
    (fun k : Fin (Fintype.card State + 1) => step^[k.val] start) (by simp)
  have differentValues : i.val ≠ j.val := fun eq => different (Fin.ext eq)
  rcases lt_or_gt_of_ne differentValues with before | before
  · exact alwaysSafe_of_repeated_state before repeated
      (fun n hn => safe n (hn.trans (Nat.le_of_lt_succ j.isLt)))
  · exact alwaysSafe_of_repeated_state before repeated.symm
      (fun n hn => safe n (hn.trans (Nat.le_of_lt_succ i.isLt)))

private theorem iterate_succ_from_zero (n : ℕ) : Nat.succ^[n] 0 = n := by
  induction n with
  | zero => rfl
  | succ n ih => rw [iterate_succ_apply', ih]

/-- The stage counter tracks every test at its exact natural-number index. -/
theorem alwaysSafe_natSucc_iff (bad : ℕ → Prop) :
    AlwaysSafe Nat.succ 0 bad ↔ ∀ n : ℕ, ¬ bad n := by
  simp only [AlwaysSafe, iterate_succ_from_zero]

/-- The literal natural-number stage counter escapes every finite carrier. -/
theorem no_accepted_carrier_for_successor (bad : ℕ → Prop) [DecidablePred bad] :
    ¬ ∃ carrier : Finset ℕ, checkCarrier Nat.succ 0 bad carrier = true := by
  intro accepted
  have finiteOrbit := ((exists_accepted_carrier_iff Nat.succ 0 bad).mp accepted).2
  have injective : Injective (fun n : ℕ => Nat.succ^[n] 0) := by
    intro a b equalImages
    simpa only [iterate_succ_from_zero] using equalImages
  exact Set.infinite_range_of_injective injective finiteOrbit

/-- An infinite orbit can be safe and still escape every finite candidate carrier. -/
theorem infinite_safe_orbit_without_accepted_carrier :
    AlwaysSafe Nat.succ 0 (fun _ => False) ∧
      ¬ ∃ carrier : Finset ℕ, checkCarrier Nat.succ 0 (fun _ => False) carrier = true :=
  ⟨fun _ bad => bad, no_accepted_carrier_for_successor _⟩

private theorem iterate_saturating (cap n : ℕ) :
    (fun state : ℕ => min (state + 1) cap)^[n] 0 = min n cap := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [iterate_succ_apply', ih]
      omega

/-- The first contrary state can be delayed beyond any specified prefix. -/
theorem finite_prefix_agreement_with_delayed_failure (bound : ℕ) :
    ∃ safeStep failingStep : ℕ → ℕ,
      (∀ n ≤ bound, safeStep^[n] 0 = failingStep^[n] 0) ∧
      AlwaysSafe safeStep 0 (· = bound + 1) ∧
      SafeThrough failingStep 0 (· = bound + 1) bound ∧
      failingStep^[bound + 1] 0 = bound + 1 := by
  refine ⟨fun s => min (s + 1) bound, fun s => min (s + 1) (bound + 1), ?_, ?_, ?_, ?_⟩
  · intro n hn
    rw [iterate_saturating, iterate_saturating, Nat.min_eq_left hn,
      Nat.min_eq_left (hn.trans (Nat.le_succ _))]
  · intro n
    rw [iterate_saturating]
    omega
  · intro n hn
    rw [iterate_saturating]
    omega
  · rw [iterate_saturating, min_self]

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.OrbitSafetyCertificate
