/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.ComputerScience.TheoryOfComputing.AnalysisOfAlgorithmsAndProblemComplexity.Riemann95PrimeMachine

set_option autoImplicit false

/-!
# Calibrated tape readout for the prime-addressed Riemann95 machine

The numeric prime address and signed head position are supplied exactly.
Each observed tape cell has an affine rational calibration with a strict
half-gap error bound. To recover depth `d` after `n` native instructions,
calibrated samples are needed for depth `d + n` at input.
-/

namespace GRWTSK.ComputerScience.Riemann95PrimeMachine

structure BitCalibration where
  bias : ℚ
  gain : ℚ

def BitCalibration.signal (a : BitCalibration) (b : Fin 2) : ℚ :=
  a.bias + a.gain * (b.val : ℚ)

def BitCalibration.Accurate (a : BitCalibration) (sample : ℚ) (b : Fin 2) : Prop :=
  |sample - a.signal b| < a.gain / 2

def BitCalibration.decode (a : BitCalibration) (sample : ℚ) : Fin 2 :=
  if sample < a.bias + a.gain / 2 then 0 else 1

theorem BitCalibration.decode_of_accurate {a : BitCalibration} {sample : ℚ} {b : Fin 2}
    (h : a.Accurate sample b) : a.decode sample = b := by
  rcases abs_lt.mp h with ⟨lower, upper⟩
  fin_cases b
  · simp [BitCalibration.signal] at upper
    change (if sample < a.bias + a.gain / 2 then (0 : Fin 2) else 1) = 0
    rw [ite_eq_left (by linarith)]
  · simp [BitCalibration.signal] at lower
    change (if sample < a.bias + a.gain / 2 then (0 : Fin 2) else 1) = 1
    rw [ite_eq_right (by linarith)]

/-- The exact midpoint is on the boundary of both bit error intervals. -/
theorem BitCalibration.midpoint_error (a : BitCalibration) (positive : 0 < a.gain)
    (b : Fin 2) : |(a.bias + a.gain / 2) - a.signal b| = a.gain / 2 := by
  fin_cases b
  · simp only [BitCalibration.signal]
    change |(a.bias + a.gain / 2) - (a.bias + a.gain * 0)| = a.gain / 2
    rw [abs_of_nonneg (by linarith)]
    ring
  · simp only [BitCalibration.signal]
    change |(a.bias + a.gain / 2) - (a.bias + a.gain * 1)| = a.gain / 2
    rw [abs_of_nonpos (by linarith)]
    ring

/-- With a closed half-gap error bound even an arbitrary decoder is ambiguous. -/
theorem BitCalibration.no_closed_half_gap_decoder (a : BitCalibration) (positive : 0 < a.gain)
    (decode : ℚ → Fin 2) :
    ¬ ∀ (sample : ℚ) (b : Fin 2), |sample - a.signal b| ≤ a.gain / 2 → decode sample = b := by
  intro correct
  have zero := correct _ 0 (a.midpoint_error positive 0).le
  have one := correct _ 1 (a.midpoint_error positive 1).le
  exact (by decide : (0 : Fin 2) ≠ 1) (zero.symm.trans one)

structure TapeChannels (depth : ℕ) (α : Type) where
  scanned : α
  left : Fin depth → α
  right : Fin depth → α

structure TapeReadout (depth : ℕ) where
  prime : ℕ
  position : ℤ
  cells : TapeChannels depth ℚ

/-- The observed metadata and cell samples describe a prefix of the exact tape. -/
def ReadoutAgrees {window depth : ℕ} (calibration : TapeChannels depth BitCalibration)
    (observed : TapeReadout depth) (c : Configuration window) : Prop :=
  observed.prime = c.address.val ∧ observed.position = c.position ∧
    calibration.scanned.Accurate observed.cells.scanned c.scanned ∧
    (∀ i : Fin depth, (calibration.left i).Accurate (observed.cells.left i) ((c.left[i.val]?).getD 0)) ∧
    (∀ i : Fin depth, (calibration.right i).Accurate (observed.cells.right i) ((c.right[i.val]?).getD 0))

/-- The ideal samples generated from an exact configuration. -/
def idealTapeReadout {window depth : ℕ} (calibration : TapeChannels depth BitCalibration)
    (c : Configuration window) : TapeReadout depth :=
  ⟨c.address.val, c.position,
    ⟨calibration.scanned.signal c.scanned,
      fun i => (calibration.left i).signal ((c.left[i.val]?).getD 0),
      fun i => (calibration.right i).signal ((c.right[i.val]?).getD 0)⟩⟩

theorem idealTapeReadout_agrees {window depth : ℕ}
    (calibration : TapeChannels depth BitCalibration) (c : Configuration window)
    (scanned : 0 < calibration.scanned.gain) (left : ∀ i, 0 < (calibration.left i).gain)
    (right : ∀ i, 0 < (calibration.right i).gain) :
    ReadoutAgrees calibration (idealTapeReadout calibration c) c := by
  refine ⟨rfl, rfl, ?_, ?_, ?_⟩
  · simpa [idealTapeReadout, BitCalibration.Accurate] using half_pos scanned
  · intro i
    simpa [idealTapeReadout, BitCalibration.Accurate] using half_pos (left i)
  · intro i
    simpa [idealTapeReadout, BitCalibration.Accurate] using half_pos (right i)

/-- Reject invalid numeric addresses. Reconstruct the sampled cells in tape order. -/
def decodeTapeReadout (window : ℕ) {depth : ℕ} (calibration : TapeChannels depth BitCalibration)
    (observed : TapeReadout depth) : Option (Configuration window) :=
  (checkAddress window observed.prime).map fun address =>
    ⟨address, observed.position, calibration.scanned.decode observed.cells.scanned,
      List.ofFn (fun i => (calibration.left i).decode (observed.cells.left i)),
      List.ofFn (fun i => (calibration.right i).decode (observed.cells.right i))⟩

theorem decodeTapeReadout_eq_none_iff (window : ℕ) {depth : ℕ}
    (calibration : TapeChannels depth BitCalibration) (observed : TapeReadout depth) :
    decodeTapeReadout window calibration observed = none ↔ ¬ InWindow window observed.prime := by
  by_cases valid : InWindow window observed.prime <;> simp [decodeTapeReadout, checkAddress, valid]

theorem decodeTapeReadout_tapeAgrees {window depth : ℕ}
    {calibration : TapeChannels depth BitCalibration} {observed : TapeReadout depth}
    {c : Configuration window} (h : ReadoutAgrees calibration observed c) :
    ∃ recovered, decodeTapeReadout window calibration observed = some recovered ∧
      TapeAgrees depth c recovered := by
  rcases h with ⟨prime, position, scanned, left, right⟩
  have address : checkAddress window observed.prime = some c.address := by
    rw [prime, checkAddress, dite_eq_left c.address.property]
  rw [decodeTapeReadout, address, Option.map_some]
  refine ⟨_, rfl, rfl, position.symm,
    (BitCalibration.decode_of_accurate scanned).symm, ?_, ?_⟩
  · intro i hi
    change (c.left[i]?).getD 0 =
      ((List.ofFn fun j => (calibration.left j).decode (observed.cells.left j))[i]?).getD 0
    rw [List.getElem?_ofFn, dite_eq_left hi, Option.getD_some]
    exact (BitCalibration.decode_of_accurate (left ⟨i, hi⟩)).symm
  · intro i hi
    change (c.right[i]?).getD 0 =
      ((List.ofFn fun j => (calibration.right j).decode (observed.cells.right j))[i]?).getD 0
    rw [List.getElem?_ofFn, dite_eq_left hi, Option.getD_some]
    exact (BitCalibration.decode_of_accurate (right ⟨i, hi⟩)).symm

/-- Outer absence rejects the address. Inner absence means that fewer than
`n` native instructions can be executed from the reconstructed tape. -/
def runFromReadout (window n depth : ℕ) (calibration : TapeChannels (n + depth) BitCalibration)
    (observed : TapeReadout (n + depth)) : Option (Option (Configuration window)) :=
  (decodeTapeReadout window calibration observed).map (run n)

/-- The full native run and the run from calibrated samples agree at the
retained depth, including whether the requested number of steps is possible. -/
theorem runFromReadout_agrees {window depth n : ℕ}
    {calibration : TapeChannels (n + depth) BitCalibration} {observed : TapeReadout (n + depth)}
    {c : Configuration window} (h : ReadoutAgrees calibration observed c) :
    ∃ recovered, runFromReadout window n depth calibration observed = some recovered ∧
      Option.Rel (TapeAgrees depth) (run n c) recovered := by
  obtain ⟨decoded, decode, near⟩ := decodeTapeReadout_tapeAgrees h
  rw [Nat.add_comm n depth] at near
  exact ⟨run n decoded, by simp only [runFromReadout, decode, Option.map_some], run_tapeAgrees n near⟩

theorem runFromReadout_eq_some_none_iff {window depth n : ℕ}
    {calibration : TapeChannels (n + depth) BitCalibration} {observed : TapeReadout (n + depth)}
    {c : Configuration window} (h : ReadoutAgrees calibration observed c) :
    runFromReadout window n depth calibration observed = some none ↔ run n c = none := by
  obtain ⟨recovered, computed, agrees⟩ := runFromReadout_agrees h
  rw [computed]
  generalize run n c = exactRun at agrees ⊢
  cases agrees <;> simp

/-- A terminal state is reached exactly when some finite step budget fails. -/
theorem eval_dom_iff_exists_run_eq_none {window : ℕ} (c : Configuration window) :
    (StateTransition.eval step c).Dom ↔ ∃ n, run n c = none := by
  constructor
  · intro dom
    obtain ⟨stop, member⟩ := Part.dom_iff_mem.mp dom
    obtain ⟨path, terminal⟩ := StateTransition.mem_eval.mp member
    refine Relation.ReflTransGen.head_induction_on path ?_ ?_
    · exact ⟨1, by simp [run, terminal]⟩
    · intro a b first _ ih
      obtain ⟨n, absent⟩ := ih
      exact ⟨n + 1, by rw [run, show step a = some b from first, Option.bind_some, absent]⟩
  · rintro ⟨n, absent⟩
    induction n generalizing c with
    | zero => simp [run] at absent
    | succ n ih =>
      cases first : step c with
      | none =>
        exact Part.dom_iff_mem.mpr ⟨c, StateTransition.mem_eval.mpr ⟨.refl, first⟩⟩
      | some next =>
        have reach : StateTransition.Reaches step c next := Relation.ReflTransGen.single first
        rw [StateTransition.reaches_eval reach]
        exact ih next (by simpa [run, first] using absent)

/-- A family of calibrated samples of the blank start detects exactly native
halting. Each budget has its own input depth, with exact metadata throughout. -/
theorem halts_iff_exists_readout_failure (window : ℕ)
    (calibration : (n : ℕ) → TapeChannels n BitCalibration)
    (observed : (n : ℕ) → TapeReadout n)
    (accurate : ∀ n, ReadoutAgrees (calibration n) (observed n) (blank window)) :
    Halts window ↔ ∃ n, runFromReadout window n 0 (calibration n) (observed n) = some none := by
  rw [Halts, eval_dom_iff_exists_run_eq_none]
  exact exists_congr fun n => (runFromReadout_eq_some_none_iff (accurate n)).symm

/-- Apply the pinned Cryptids halting theorem to the conditional readout. -/
theorem exists_readout_failure_iff_not_RH (window : ℕ)
    (calibration : (n : ℕ) → TapeChannels n BitCalibration)
    (observed : (n : ℕ) → TapeReadout n)
    (accurate : ∀ n, ReadoutAgrees (calibration n) (observed n) (blank window)) :
    (∃ n, runFromReadout window n 0 (calibration n) (observed n) = some none) ↔
      ¬ RiemannHypothesis :=
  (halts_iff_exists_readout_failure window calibration observed accurate).symm.trans
    (halts_iff_not_RH window)

end GRWTSK.ComputerScience.Riemann95PrimeMachine
