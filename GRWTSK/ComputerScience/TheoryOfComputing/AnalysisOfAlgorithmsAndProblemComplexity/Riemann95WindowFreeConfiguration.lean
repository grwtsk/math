/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.Riemann95PrimeMachine

/-!
# Recovering a Riemann95 configuration without a separate window field

The count of smaller primes recovers the address window. The pointed tape
and absolute head position remain explicit fields of the packet.
-/

set_option autoImplicit false

namespace GRWTSK.ComputerScience.Riemann95PrimeMachine

structure RawConfiguration where
  prime : ℕ
  position : ℤ
  scanned : Fin 2
  left : List (Fin 2)
  right : List (Fin 2)

def packConfiguration (c : Σ window, Configuration window) : RawConfiguration :=
  ⟨c.2.address.val, c.2.position, c.2.scanned, c.2.left, c.2.right⟩

/-- Recover the window from the numeric prime and keep the literal tape. -/
def unpackConfiguration (raw : RawConfiguration) : Option (Σ window, Configuration window) :=
  let window := Nat.count Nat.Prime raw.prime / 95
  (checkAddress window raw.prime).map fun address =>
    ⟨window, ⟨address, raw.position, raw.scanned, raw.left, raw.right⟩⟩

theorem window_eq_rank_div {window : ℕ} (a : Address window) :
    Nat.count Nat.Prime a.val / 95 = window := by
  have h := a.property.2
  omega

theorem control_eq_rank_mod {window : ℕ} (a : Address window) :
    (decodeAddress a).val = Nat.count Nat.Prime a.val % 95 := by
  change Nat.count Nat.Prime a.val - 95 * window = _
  have h := a.property.2
  omega

@[simp] theorem unpack_packConfiguration (c : Σ window, Configuration window) :
    unpackConfiguration (packConfiguration c) = some c := by
  rcases c with ⟨w, a, pos, bit, left, right⟩
  simp only [packConfiguration, unpackConfiguration]
  have hw := window_eq_rank_div a
  generalize Nat.count Nat.Prime a.val / 95 = v at hw ⊢
  subst v
  have ha : checkAddress w a.val = some a := by
    rw [checkAddress, dite_eq_left a.property]
  rw [ha, Option.map_some]

/-- A numeric packet is admitted exactly for ordinary primes. -/
theorem unpackConfiguration_eq_none_iff (raw : RawConfiguration) :
    unpackConfiguration raw = none ↔ ¬ raw.prime.Prime := by
  let r := Nat.count Nat.Prime raw.prime
  have hr : 95 * (r / 95) ≤ r ∧ r < 95 * (r / 95) + 95 := by omega
  have valid : InWindow (r / 95) raw.prime ↔ raw.prime.Prime :=
    ⟨fun h => h.1, fun h => ⟨h, hr.1, hr.2⟩⟩
  change (checkAddress (r / 95) raw.prime).map _ = none ↔ _
  by_cases hp : raw.prime.Prime
  · rw [checkAddress, dite_eq_left (valid.mpr hp)]
    simp [hp]
  · rw [checkAddress, dite_eq_right (fun h => hp (valid.mp h))]
    simp [hp]

/-- A missing outer result rejects malformed input. A missing inner result
records a native halt before the requested number of successful instructions. -/
def runRawConfiguration (n : ℕ) (raw : RawConfiguration) :
    Option (Option RawConfiguration) :=
  (unpackConfiguration raw).map fun c =>
    (run n c.2).map fun result => packConfiguration ⟨c.1, result⟩

theorem runRawConfiguration_pack (n : ℕ) (c : Σ window, Configuration window) :
    runRawConfiguration n (packConfiguration c) =
      some ((run n c.2).map fun result => packConfiguration ⟨c.1, result⟩) := by
  simp [runRawConfiguration]

theorem runRawConfiguration_eq_none_iff (n : ℕ) (raw : RawConfiguration) :
    runRawConfiguration n raw = none ↔ ¬ raw.prime.Prime := by
  unfold runRawConfiguration
  rw [Option.map_eq_none_iff, unpackConfiguration_eq_none_iff]

/-- Distinct typed configurations cannot collide, even when their windows differ. -/
theorem packConfiguration_injective : Function.Injective packConfiguration := by
  intro c d h
  have h' := congrArg unpackConfiguration h
  simpa using h'

end GRWTSK.ComputerScience.Riemann95PrimeMachine
