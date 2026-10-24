/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.RationalRoundedArithmetic
import GRWTSK.Analysis.ComplexAnalysis.RoundedLogPowerEvaluation

set_option autoImplicit false

/-!
# Data-only rational endpoint evaluation with derived admissibility

The endpoint q and exponent z are FIXED outside the schedule list. Schedules
contain only natural precision/reduction parameters, not output values or
claimed errors. Evaluation recomputes every rational intermediate, checks the
finite guards and final tolerance, and returns none on failure. Exact cast
identities connect the computation to the existing actual logPower theorem.
No byte parser, resource cap, external zero data or prime margin is supplied.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.RationalPowerEvaluation

open RationalRoundedArithmetic
open GRWTSK.Analysis.RealAnalysis.RationalLogEnclosure
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open GRWTSK.Analysis.ComplexAnalysis.FiniteExponentialEnclosure

/-- No proof fields and no freely assigned output or error. -/
structure Schedule where
  logExponent : ℕ
  logTerms : ℕ
  squarings : ℕ
  degree : ℕ
  bits : ℕ
  deriving DecidableEq, Repr

def mantissa (q : ℚ) (p : Schedule) : ℚ := q / scaleQ p.logExponent

def logLower (q : ℚ) (p : Schedule) : ℚ :=
  (p.logExponent : ℚ) * lower 2 p.logTerms + lower (mantissa q p) p.logTerms

def logWidth (q : ℚ) (p : Schedule) : ℚ :=
  (p.logExponent : ℚ) * width 2 p.logTerms + width (mantissa q p) p.logTerms

def logCenter (q : ℚ) (p : Schedule) : ℚ := logLower q p + logWidth q p / 2
def logError (q : ℚ) (p : Schedule) : ℚ := logWidth q p / 2

def argument (q : ℚ) (z : QComplex) (p : Schedule) : QComplex :=
  QComplex.smul (logCenter q p / scaleQ p.squarings) z

def radius (q : ℚ) (z : QComplex) (p : Schedule) : ℚ :=
  QComplex.rect z * |logCenter q p| / scaleQ p.squarings

def displacement (q : ℚ) (z : QComplex) (p : Schedule) : ℚ :=
  QComplex.rect z * logError q p / scaleQ p.squarings

def seed (q : ℚ) (z : QComplex) (p : Schedule) : QComplex :=
  QComplex.polynomial (argument q z p) p.degree

def seedError (q : ℚ) (z : QComplex) (p : Schedule) : ℚ :=
  let e := 2 * radius q z p ^ p.degree / (p.degree.factorial : ℚ)
  e + 2 * (QComplex.rect (seed q z p) + e) * displacement q z p

/-- A raw totalized computation alone is NOT a certified approximation. -/
def compute (q : ℚ) (z : QComplex) (p : Schedule) : State :=
  run p.bits (seed q z p) (seedError q z p) p.squarings

/-- Soundness guards are decidable rational inequalities, checked for raw data. -/
def Admissible (q : ℚ) (z : QComplex) (p : Schedule) : Prop :=
  1 ≤ mantissa q p ∧ 1 ≤ p.degree ∧ radius q z p ≤ 1 ∧ displacement q z p ≤ 1

instance (q : ℚ) (z : QComplex) (p : Schedule) : Decidable (Admissible q z p) := by
  unfold Admissible
  infer_instance

/-- Invalid schedules are rejected before the candidate is returned. The output
budget is recomputed, not compared with an untrusted declared error. -/
def evaluate (q : ℚ) (z : QComplex) (p : Schedule) (tolerance : ℚ) : Option State :=
  if Admissible q z p then
    let out := compute q z p
    if out.error ≤ tolerance then some out else none
  else none

/-- Pure checking of untrusted claimed output: BOTH components and the error
must equal the recomputation for this exact source and schedule. -/
def verify (q : ℚ) (z : QComplex) (p : Schedule) (tolerance : ℚ) (claimed : State) : Bool :=
  decide (evaluate q z p tolerance = some claimed)

/-- Every candidate concerns the SAME q and z; a list cannot switch sources. -/
def select (q : ℚ) (z : QComplex) (tolerance : ℚ) :
    List Schedule → Option (Schedule × State)
  | [] => none
  | p :: ps => match evaluate q z p tolerance with
    | some out => some (p, out)
    | none => select q z tolerance ps

/-- Checked arithmetic constructs the old exact endpoint identity. -/
noncomputable def toLogInput (q : ℚ) (p : Schedule) (hq : 1 ≤ mantissa q p) :
    DyadicInput (q : ℝ) :=
  DyadicInput.reduced q p.logExponent p.logTerms hq

@[simp] theorem toLogInput_center (q : ℚ) (p : Schedule) (hq : 1 ≤ mantissa q p) :
    (toLogInput q p hq).center = logCenter q p := rfl

@[simp] theorem toLogInput_error (q : ℚ) (p : Schedule) (hq : 1 ≤ mantissa q p) :
    (toLogInput q p hq).error = logError q p := rfl

/-- Proof-bearing semantic input is BUILT after raw guards pass. -/
noncomputable def toSpec (q : ℚ) (z : QComplex) (p : Schedule) (hp : Admissible q z p) :
    RoundedLogPowerEvaluation.PowerInput (q : ℝ) (QComplex.embed z) where
  base := {
    logarithm := toLogInput q p hp.1
    squarings := p.squarings
    degree := p.degree
    degree_pos := hp.2.1
    radius_guard := by
      change rectNorm (QComplex.embed z) * |(logCenter q p : ℝ)| /
        (2 : ℝ) ^ p.squarings ≤ 1
      have hr : (radius q z p : ℝ) ≤ 1 := by exact_mod_cast hp.2.2.1
      simpa [radius, scaleQ] using hr
    displacement_guard := by
      change rectNorm (QComplex.embed z) * (logError q p : ℝ) /
        (2 : ℝ) ^ p.squarings ≤ 1
      have hd : (displacement q z p : ℝ) ≤ 1 := by exact_mod_cast hp.2.2.2
      simpa [displacement, scaleQ] using hd }
  bits := p.bits

@[simp] theorem radius_refines (q : ℚ) (z : QComplex) (p : Schedule)
    (hp : Admissible q z p) :
    (radius q z p : ℝ) = (toSpec q z p hp).base.radius := by
  simp [radius, scaleQ, toSpec, ScaledLogPowerEvaluation.PowerInput.radius]

@[simp] theorem displacement_refines (q : ℚ) (z : QComplex) (p : Schedule)
    (hp : Admissible q z p) :
    (displacement q z p : ℝ) = (toSpec q z p hp).base.displacement := by
  simp [displacement, scaleQ, toSpec, ScaledLogPowerEvaluation.PowerInput.displacement]

@[simp] theorem seed_refines (q : ℚ) (z : QComplex) (p : Schedule)
    (hp : Admissible q z p) :
    QComplex.embed (seed q z p) = (toSpec q z p hp).seed := by
  rw [seed, QComplex.embed_polynomial]
  unfold RoundedLogPowerEvaluation.PowerInput.seed
  congr 1
  simp [argument, QComplex.embed_smul, toSpec, scaleQ, div_eq_mul_inv,
    mul_comm, mul_left_comm, mul_assoc]

@[simp] theorem seedError_refines (q : ℚ) (z : QComplex) (p : Schedule)
    (hp : Admissible q z p) :
    (seedError q z p : ℝ) = (toSpec q z p hp).seedError := by
  simp [seedError, RoundedLogPowerEvaluation.PowerInput.seedError, expRemainder,
    seed_refines q z p hp, radius_refines q z p hp, displacement_refines q z p hp,
    toSpec]

/-- This equality is stronger than just checking that two numerical intervals overlap. -/
theorem compute_refines (q : ℚ) (z : QComplex) (p : Schedule) (hp : Admissible q z p) :
    QComplex.embed (compute q z p).value = (toSpec q z p hp).value ∧
      ((compute q z p).error : ℝ) = (toSpec q z p hp).error := by
  have h := run_refines p.bits (seed q z p) (seedError q z p) p.squarings
  rw [seed_refines q z p hp, seedError_refines q z p hp] at h
  exact h

/-- Actual positive-axis power, with no caller-supplied log or exponential error. -/
theorem compute_sound (q : ℚ) (z : QComplex) (p : Schedule) (hp : Admissible q z p) :
    ‖logPower (q : ℝ) (QComplex.embed z) - QComplex.embed (compute q z p).value‖ ≤
      ((compute q z p).error : ℝ) := by
  rw [(compute_refines q z p hp).1, (compute_refines q z p hp).2]
  exact (toSpec q z p hp).sound

theorem evaluate_some_iff (q : ℚ) (z : QComplex) (p : Schedule) (tolerance : ℚ) (out : State) :
    evaluate q z p tolerance = some out ↔
      Admissible q z p ∧ (compute q z p).error ≤ tolerance ∧ compute q z p = out := by
  unfold evaluate
  split_ifs <;> simp_all

/-- Accepted rational output is exactly the value/error of a constructed
historical endpoint input, so downstream users need not trust a new kernel. -/
theorem accepted_refines (q : ℚ) (z : QComplex) (p : Schedule) (tolerance : ℚ) (out : State)
    (h : evaluate q z p tolerance = some out) :
    ∃ hp : Admissible q z p,
      QComplex.embed out.value = (toSpec q z p hp).value ∧
        (out.error : ℝ) = (toSpec q z p hp).error := by
  obtain ⟨hg, _, rfl⟩ := (evaluate_some_iff q z p tolerance out).mp h
  exact ⟨hg, compute_refines q z p hg⟩

/-- Failure means invalid guards OR an excessive COMPUTED bound, not impossibility. -/
theorem evaluate_none_iff (q : ℚ) (z : QComplex) (p : Schedule) (tolerance : ℚ) :
    evaluate q z p tolerance = none ↔
      ¬Admissible q z p ∨ tolerance < (compute q z p).error := by
  unfold evaluate
  split_ifs <;> simp_all

theorem evaluate_sound (q : ℚ) (z : QComplex) (p : Schedule) (tolerance : ℚ) (out : State)
    (h : evaluate q z p tolerance = some out) :
    ‖logPower (q : ℝ) (QComplex.embed z) - QComplex.embed out.value‖ ≤ (tolerance : ℝ) := by
  obtain ⟨hg, ht, rfl⟩ := (evaluate_some_iff q z p tolerance out).mp h
  exact (compute_sound q z p hg).trans (by exact_mod_cast ht)

theorem verify_iff (q : ℚ) (z : QComplex) (p : Schedule) (tolerance : ℚ) (out : State) :
    verify q z p tolerance out = true ↔
      Admissible q z p ∧ (compute q z p).error ≤ tolerance ∧ compute q z p = out := by
  simp only [verify, decide_eq_true_eq, evaluate_some_iff]

/-- A checked claimed error encloses the actual source and meets the target. -/
theorem verify_sound (q : ℚ) (z : QComplex) (p : Schedule) (tolerance : ℚ) (out : State)
    (h : verify q z p tolerance out = true) :
    ‖logPower (q : ℝ) (QComplex.embed z) - QComplex.embed out.value‖ ≤ (out.error : ℝ) ∧
      out.error ≤ tolerance := by
  obtain ⟨hg, ht, rfl⟩ := (verify_iff q z p tolerance out).mp h
  exact ⟨compute_sound q z p hg, ht⟩

/-- A successful selection retains both the actual schedule and its returned data. -/
theorem select_some (q : ℚ) (z : QComplex) (tolerance : ℚ) (ps : List Schedule)
    (p : Schedule) (out : State) (h : select q z tolerance ps = some (p, out)) :
    p ∈ ps ∧ evaluate q z p tolerance = some out := by
  induction ps with
  | nil => simp [select] at h
  | cons a as ih =>
      cases he : evaluate q z a tolerance with
      | none =>
          have hb := ih (by simpa [select, he] using h)
          exact ⟨List.mem_cons_of_mem a hb.1, hb.2⟩
      | some b =>
          have hab : (a, b) = (p, out) := Option.some.inj (by simpa [select, he] using h)
          have ha : a = p := congrArg Prod.fst hab
          have hb : b = out := congrArg Prod.snd hab
          subst p
          subst out
          exact ⟨by simp, he⟩

theorem select_none_iff (q : ℚ) (z : QComplex) (tolerance : ℚ) (ps : List Schedule) :
    select q z tolerance ps = none ↔ ∀ p ∈ ps, evaluate q z p tolerance = none := by
  induction ps with
  | nil => simp [select]
  | cons a as ih =>
      cases he : evaluate q z a tolerance <;> simp [select, he, ih]

theorem select_sound (q : ℚ) (z : QComplex) (tolerance : ℚ) (ps : List Schedule)
    (p : Schedule) (out : State) (h : select q z tolerance ps = some (p, out)) :
    p ∈ ps ∧ ‖logPower (q : ℝ) (QComplex.embed z) - QComplex.embed out.value‖ ≤
      (tolerance : ℝ) := by
  have hs := select_some q z tolerance ps p out h
  exact ⟨hs.1, evaluate_sound q z p tolerance out hs.2⟩

end GRWTSK.Analysis.ComplexAnalysis.RationalPowerEvaluation
