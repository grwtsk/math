# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CheckedPoleJet

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64a511b0d114f6f7d8aa83cfba33256c23053d80` · SHA-256 `6ce02881f1ced6da1affbabb2967ced7c3b0acfee86276d627dd129558520508`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.CheckedIntegerPower
import GRWTSK.NumberTheory.Zeta.Riemann.RationalJetStateFold

set_option autoImplicit false

/-!
# Checked power witnesses through the complete ordered normalized-source jet

The packet supplies successor states ONLY. Every base, resolution, logarithm and
initial state is fixed by the original source input. Every accepted leaf feeds
both ordered prefixes; the actual last leaf is reused in the endpoint correction.
No supplied final value, derivative, radius, prefix state or PASS bit is accepted.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CheckedPoleJet

open GRWTSK.Algebra.BigOperators.IndexedStateFold
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic
open RationalNewtonDisk (magnitude)
open CriticalStripHeightDescent

/-- One list of successor states per positive base, in the original order. -/
abbrev Packet := List (List IntegerDyadicSquare.State)

/-- Two prefixes and the last accepted power; this state is computed, not supplied. -/
abbrev Accum := (Ball × Ball) × Ball

def initial : Accum :=
  ((RationalEndpointJet.point zero, RationalEndpointJet.point zero),
    RationalEndpointJet.point zero)

/-- EXACT old rounded parentheses. k is the actual positive base. -/
def advance (p : RationalPoleValue.Parameters) (k : ℕ) (v : Ball) (a : Accum) : Accum :=
  ((ballAdd p.bits a.1.1 v,
    ballAdd p.bits a.1.2
      (ballScale p.bits (sub zero one) (ballMul p.bits (RationalPoleValue.logs p k) v))), v)

def referenceStep (c : Coordinates) (p : RationalPoleValue.Parameters) (j : ℕ)
    (a : Accum) : Accum := advance p (j+1) (RationalPoleValue.powers c p (j+1)) a

def referenceState (c : Coordinates) (p : RationalPoleValue.Parameters) (j : ℕ) : Accum :=
  (RationalEndpointJet.prefix p.bits (RationalPoleValue.logs p) (RationalPoleValue.powers c p) j,
    if j = 0 then RationalEndpointJet.point zero else RationalPoleValue.powers c p j)

theorem reference_zero (c : Coordinates) (p : RationalPoleValue.Parameters) :
    referenceState c p 0 = initial := rfl

theorem reference_succ (c : Coordinates) (p : RationalPoleValue.Parameters) (j : ℕ) :
    referenceStep c p j (referenceState c p j) = referenceState c p (j+1) := by
  simp [referenceStep, advance, referenceState, RationalEndpointJet.prefix]

theorem run_reference (c : Coordinates) (p : RationalPoleValue.Parameters) (n : ℕ) :
    run (referenceStep c p) 0 n initial = referenceState c p n := by
  simpa only [reference_zero, Nat.zero_add] using
    run_spec (referenceStep c p) (referenceState c p) (reference_succ c p) 0 n

/-- Exact lengths at both levels: n remaining bases, each with its fixed square count.
The absolute cursor is not reset when a prefix is followed by another piece. -/
def scan (c : Coordinates) (p : RationalPoleValue.Parameters) :
    ℕ → ℕ → Accum → Packet → Option Accum
  | _, 0, a, [] => some a
  | _, 0, _, _ :: _ => none
  | _, _+1, _, [] => none
  | j, n+1, a, row :: rest =>
    match CheckedIntegerPower.evaluate c ((j+1 : ℕ) : ℚ)
        (RationalPoleValue.resolution p (j+1)) row with
    | none => none
    | some v => scan c p (j+1) n (advance p (j+1) v a) rest

/-- Every output field is the original ordered recurrence, not just a valid ball. -/
theorem scan_refines {c : Coordinates} {p : RationalPoleValue.Parameters}
    {j n : ℕ} {a out : Accum} {rows : Packet}
    (h : scan c p j n a rows = some out) :
    out = run (referenceStep c p) j n a := by
  induction n generalizing j a rows with
  | zero => cases rows <;> simp_all [scan, run]
  | succ n ih =>
    cases rows with
    | nil => simp [scan] at h
    | cons row rest =>
      cases hv : CheckedIntegerPower.evaluate c ((j+1 : ℕ) : ℚ)
          (RationalPoleValue.resolution p (j+1)) row with
      | none => simp [scan, hv] at h
      | some v =>
        have he : RationalPoleValue.powers c p (j+1) = v :=
          ((RationalPowerValue.evaluate_eq_some_iff _ _ _ _).mp
            (CheckedIntegerPower.evaluate_refines hv)).2
        have hs : scan c p (j+1) n (advance p (j+1) v a) rest = some out := by
          simpa only [scan, hv] using h
        have hr := ih hs
        rw [← he] at hr
        simpa only [run, referenceStep] using hr

/-- Extra outer records cannot be discarded; every consumed inner chain has its full length. -/
theorem scan_shape {c : Coordinates} {p : RationalPoleValue.Parameters}
    {j n : ℕ} {a out : Accum} {rows : Packet}
    (h : scan c p j n a rows = some out) :
    rows.length = n ∧ ∀ row ∈ rows, row.length = p.squarings := by
  induction n generalizing j a rows with
  | zero => cases rows <;> simp_all [scan]
  | succ n ih =>
    cases rows with
    | nil => simp [scan] at h
    | cons row rest =>
      cases hv : CheckedIntegerPower.evaluate c ((j+1 : ℕ) : ℚ)
          (RationalPoleValue.resolution p (j+1)) row with
      | none => simp [scan, hv] at h
      | some v =>
        have hs : scan c p (j+1) n (advance p (j+1) v a) rest = some out := by
          simpa only [scan, hv] using h
        obtain ⟨hlen,hrows⟩ := ih hs
        have hrow : row.length = p.squarings := CheckedIntegerPower.accepted_length hv
        refine ⟨by simp [hlen],?_⟩
        intro x hx
        rcases List.mem_cons.mp hx with hsame | hx
        · subst x; exact hrow
        · exact hrows x hx

/-- Every admitted original sequence admits actual witnesses. This is not an
assertion that any external packet, serialized report or claimed seed is correct. -/
theorem scan_complete (c : Coordinates) (p : RationalPoleValue.Parameters) (j n : ℕ)
    (a : Accum)
    (hg : ∀ i, j ≤ i → i < j+n →
      RationalPowerValue.check c ((i+1 : ℕ) : ℚ) (RationalPoleValue.resolution p (i+1)) = true) :
    ∃ rows, scan c p j n a rows = some (run (referenceStep c p) j n a) := by
  induction n generalizing j a with
  | zero => exact ⟨[],rfl⟩
  | succ n ih =>
    have hc := hg j le_rfl (by omega)
    have hp : RationalPowerValue.evaluate c ((j+1 : ℕ) : ℚ)
        (RationalPoleValue.resolution p (j+1)) = some (RationalPoleValue.powers c p (j+1)) :=
      (RationalPowerValue.evaluate_eq_some_iff _ _ _ _).mpr ⟨hc,rfl⟩
    obtain ⟨row,hr⟩ := (CheckedIntegerPower.exists_rows_iff _ _ _ _).mpr hp
    have hg' : ∀ i, j+1 ≤ i → i < (j+1)+n →
        RationalPowerValue.check c ((i+1 : ℕ) : ℚ) (RationalPoleValue.resolution p (i+1)) = true := by
      intro i hlo hhi
      exact hg i (by omega) (by omega)
    obtain ⟨rest,hs⟩ := ih (j+1) (advance p (j+1) (RationalPoleValue.powers c p (j+1)) a) hg'
    refine ⟨row :: rest,?_⟩
    simpa only [scan, hr, run, referenceStep] using hs

/-- The actual LAST checked base is used twice in the old finishing formula.
It is neither omitted nor replaced by a second independently labeled record. -/
def finish (c : Coordinates) (p : RationalPoleValue.Parameters) (a : Accum) : Ball × Ball :=
  let coeff := RationalPoleNormalizedJet.coefficientJet c p.cutoff (p.extraCorrections+1)
  let d := sub c one
  (ballAdd p.bits (ballScale p.bits d a.1.1) (ballScale p.bits coeff.1 a.2),
    ballAdd p.bits (ballAdd p.bits a.1.1 (ballScale p.bits d a.1.2))
      (ballMul p.bits a.2
        (ballAdd p.bits (RationalEndpointJet.point coeff.2)
          (ballScale p.bits (sub zero coeff.1) (RationalPoleValue.logs p p.cutoff)))))

theorem finish_reference (c : Coordinates) (p : RationalPoleValue.Parameters) (hN : 1 ≤ p.cutoff) :
    finish c p (referenceState c p p.cutoff) = RationalPoleValue.finiteJet c p := by
  have hn : p.cutoff ≠ 0 := by omega
  simp only [finish, referenceState, if_neg hn, RationalPoleValue.finiteJet,
    RationalPoleNormalizedJet.assemble]

/-- Keep the original full source guard. The packet cannot edit it. -/
def finite (c : Coordinates) (p : RationalPoleValue.Parameters) (rows : Packet) : Option (Ball × Ball) :=
  if RationalPoleValue.check c p then
    (scan c p 0 p.cutoff initial rows).map (finish c p)
  else none

theorem finite_refines {c : Coordinates} {p : RationalPoleValue.Parameters}
    {rows : Packet} {f : Ball × Ball} (h : finite c p rows = some f) :
    RationalPoleValue.check c p = true ∧ RationalPoleValue.finiteJet c p = f := by
  by_cases hc : RationalPoleValue.check c p = true
  · cases hs : scan c p 0 p.cutoff initial rows with
    | none => simp [finite, hc, hs] at h
    | some a =>
      have hf : finish c p a = f := by simpa [finite, hc, hs] using h
      have ha := (scan_refines hs).trans (run_reference c p p.cutoff)
      rw [ha, finish_reference c p ((RationalPoleValue.check_iff_valid _ _).mp hc).2.1] at hf
      exact ⟨hc,hf⟩
  · simp [finite, hc] at h

theorem finite_shape {c : Coordinates} {p : RationalPoleValue.Parameters}
    {rows : Packet} {f : Ball × Ball} (h : finite c p rows = some f) :
    rows.length = p.cutoff ∧ ∀ row ∈ rows, row.length = p.squarings := by
  have hc := (finite_refines h).1
  cases hs : scan c p 0 p.cutoff initial rows with
  | none => simp [finite, hc, hs] at h
  | some a => exact scan_shape hs

/-- Exact existence equivalence with the old guarded finite jet, excluding vacuity. -/
theorem exists_finite_iff (c : Coordinates) (p : RationalPoleValue.Parameters) (f : Ball × Ball) :
    (∃ rows, finite c p rows = some f) ↔
      RationalPoleValue.check c p = true ∧ RationalPoleValue.finiteJet c p = f := by
  constructor
  · rintro ⟨rows,h⟩; exact finite_refines h
  · rintro ⟨hc,hf⟩
    have hv := (RationalPoleValue.check_iff_valid _ _).mp hc
    obtain ⟨rows,hs⟩ := scan_complete c p 0 p.cutoff initial (by
      intro i _ hi
      exact hv.2.2 (i+1) (Finset.mem_Icc.mpr ⟨by omega,by omega⟩))
    refine ⟨rows,?_⟩
    simp only [finite, hc, if_true, hs, Option.map_some, run_reference,
      finish_reference c p hv.2.1, hf]

/-- Exactly the previous actual-source errors, curvature, minimum slope and strict test. -/
def fromFinite (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters)
    (f : Ball × Ball) : RationalJetStateFold.PatchState :=
  let v := RationalPoleNormalizedJet.sourceBall c p.cutoff p.extraCorrections f.1
  let d : Ball := ⟨f.2.mid, f.2.rad + RationalPoleJet.uniformError c S p / S⟩
  let slope := min (RationalPolePatch.slopeBound c R S)
    (magnitude d.mid + d.rad + RationalJetPolePatch.curvature c R S * R)
  let rad := v.rad + slope * R
  ⟨v, d, rad, decide (RationalPoleJet.check c S p = true ∧ 0 ≤ R ∧ R < S ∧
    0 ≤ v.rad ∧ rad < RationalPolePatch.sampleLower v.mid)⟩

theorem fromFinite_reference (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) :
    fromFinite c R S p (RationalPoleValue.finiteJet c p) =
      RationalJetStateFold.reference c R S p := by
  calc
    _ = RationalJetStateFold.patch c R S p := by
      simp only [fromFinite, RationalJetStateFold.patch, RationalJetStateFold.finiteJet_eq]
    _ = _ := RationalJetStateFold.patch_eq c R S p

def evaluate (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters)
    (rows : Packet) : Option RationalJetStateFold.PatchState :=
  (finite c p rows).map (fromFinite c R S p)

theorem evaluate_refines {c : Coordinates} {R S : ℚ} {p : RationalPoleValue.Parameters}
    {rows : Packet} {q : RationalJetStateFold.PatchState}
    (h : evaluate c R S p rows = some q) :
    RationalPoleValue.check c p = true ∧ q = RationalJetStateFold.reference c R S p := by
  cases hf : finite c p rows with
  | none => simp [evaluate, hf] at h
  | some f =>
    have hq : fromFinite c R S p f = q := by simpa [evaluate, hf] using h
    obtain ⟨hc,he⟩ := finite_refines hf
    refine ⟨hc,?_⟩
    rw [← hq, ← he, fromFinite_reference]

/-- Finite-jet validity is NOT nonvanishing: the original strict test must pass. -/
def checkPatch (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters)
    (rows : Packet) : Option RationalJetStateFold.PatchState :=
  match evaluate c R S p rows with
  | none => none
  | some q => if q.accepted then some q else none

theorem checkPatch_refines {c : Coordinates} {R S : ℚ} {p : RationalPoleValue.Parameters}
    {rows : Packet} {q : RationalJetStateFold.PatchState}
    (h : checkPatch c R S p rows = some q) :
    q = RationalJetStateFold.reference c R S p ∧ RationalJetPolePatch.check c R S p = true := by
  cases he : evaluate c R S p rows with
  | none => simp [checkPatch, he] at h
  | some x =>
    by_cases hx : x.accepted = true
    · have hq : x = q := by simpa [checkPatch,he,hx] using h
      subst x
      have hr := (evaluate_refines he).2
      refine ⟨hr,?_⟩
      simpa only [hr,RationalJetStateFold.reference] using hx
    · simp [checkPatch,he,hx] at h

/-- The full jet route admits a witness for every original passing patch. -/
theorem exists_patch_iff (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters) :
    (∃ rows q, checkPatch c R S p rows = some q) ↔ RationalJetPolePatch.check c R S p = true := by
  constructor
  · rintro ⟨rows,q,h⟩; exact (checkPatch_refines h).2
  · intro h
    have hj := ((RationalJetPolePatch.check_iff _ _ _ _).mp h).1
    have hc := ((RationalPoleJet.check_iff _ _ _).mp hj).1
    obtain ⟨rows,hf⟩ := (exists_finite_iff c p (RationalPoleValue.finiteJet c p)).mpr ⟨hc,rfl⟩
    refine ⟨rows,RationalJetStateFold.reference c R S p,?_⟩
    simp only [checkPatch, evaluate, hf, Option.map_some, fromFinite_reference,
      RationalJetStateFold.reference, h, if_true]

/-- Actual F and F' semantics still come from the old, uniformly sourced jet theorem. -/
theorem checkPatch_jet_sound {c : Coordinates} {R S : ℚ} {p : RationalPoleValue.Parameters}
    {rows : Packet} {q : RationalJetStateFold.PatchState}
    (h : checkPatch c R S p rows = some q) :
    Holds q.value (poleNormalizedZeta (toComplex c)) ∧
    Holds q.derivative (deriv poleNormalizedZeta (toComplex c)) := by
  obtain ⟨rfl,hc⟩ := checkPatch_refines h
  exact RationalPoleJet.jet_sound (((RationalJetPolePatch.check_iff _ _ _ _).mp hc).1)

end GRWTSK.RiemannHypothesis.CheckedPoleJet
```
