# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.RationalZetaTranscript

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73656fd9a7ebe40dddd45ab82240df2e51defa6c` · SHA-256 `f0bafdfadc3729dc319c970fbfd9742a4f8739cea8aaf4611af05f6d84ca13f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.RationalZetaCenterEvaluation

set_option autoImplicit false

/-!
# Exact endpoint transcripts for the existing joint zeta verifier

A transcript is untrusted rational data. Every admitted record must equal the
original endpoint computation, with its original guards, at its original index.
Blocks organize these checks; assembly still sums over Fin N exactly once.
The separate terminal is never inferred from prefix coverage. Neither hashes
nor an aggregate equality can replace endpoint checks or coverage.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.RationalZetaTranscript

open scoped BigOperators
open GRWTSK.Analysis.Complex
open RationalRoundedArithmetic RationalZetaCenterEvaluation

/-- Only the three rational state fields; no proof or logarithm oracle. -/
structure Transcript (N : ℕ) where
  prefix : Fin N → State
  terminal : State

/-- The center, plan and exact source indices are external to the claimed data. -/
def canonicalTranscript (N : ℕ) (c : QComplex) (p : Plan N) : Transcript N where
  prefix := fun i => RationalPowerEvaluation.compute
    ((i.1 : ℚ) + 1) (sourceExponent c) (p.prefix i)
  terminal := RationalPowerEvaluation.compute (cutoffQ N) (sourceExponent c) p.terminal

/-- Guard and all three returned rational fields, not error-budget comparison alone. -/
def checkPrefix (N : ℕ) (c : QComplex) (p : Plan N) (t : Transcript N)
    (indices : Finset (Fin N)) : Bool :=
  decide (∀ i ∈ indices,
    RationalPowerEvaluation.Admissible ((i.1 : ℚ) + 1) (sourceExponent c) (p.prefix i) ∧
    RationalPowerEvaluation.compute ((i.1 : ℚ) + 1) (sourceExponent c) (p.prefix i) = t.prefix i)

def checkTerminal (N : ℕ) (c : QComplex) (p : Plan N) (t : Transcript N) : Bool :=
  decide (RationalPowerEvaluation.Admissible (cutoffQ N) (sourceExponent c) p.terminal ∧
    RationalPowerEvaluation.compute (cutoffQ N) (sourceExponent c) p.terminal = t.terminal)

def checkGeometry (N : ℕ) (c : QComplex) (p : Plan N) : Bool :=
  decide (0 < p.cauchyRadius ∧ p.cauchyRadius ≤ c.re ∧
    0 < QComplex.normSq (QComplex.sub c QComplex.one))

def recordLogValue (q : ℚ) (p : RationalPowerEvaluation.Schedule) (a : State) : QComplex :=
  QComplex.smul (-RationalPowerEvaluation.logCenter q p) a.value

def recordLogError (q : ℚ) (p : RationalPowerEvaluation.Schedule) (a : State) : ℚ :=
  (|RationalPowerEvaluation.logCenter q p| + RationalPowerEvaluation.logError q p) * a.error +
    QComplex.rect a.value * RationalPowerEvaluation.logError q p

/-- Exact canonical-index aggregation. Block boundaries DO NOT change this sum.
All coefficients, logarithms, tails, and two output roundings are recomputed. -/
def assemble (N : ℕ) (c : QComplex) (p : Plan N) (t : Transcript N) : CenterState :=
  let v := QComplex.add (sumQ (fun i => (t.prefix i).value))
    (QComplex.mul (factorQ N c) t.terminal.value)
  let d := QComplex.add
    (sumQ (fun i => recordLogValue ((i.1 : ℚ) + 1) (p.prefix i) (t.prefix i)))
    (QComplex.add (QComplex.mul (factorSlopeQ N c) t.terminal.value)
      (QComplex.mul (factorQ N c) (recordLogValue (cutoffQ N) p.terminal t.terminal)))
  let ev := (∑ i, (t.prefix i).error) + QComplex.rect (factorQ N c) * t.terminal.error
  let ed := (∑ i, recordLogError ((i.1 : ℚ) + 1) (p.prefix i) (t.prefix i)) +
    (QComplex.rect (factorSlopeQ N c) * t.terminal.error +
      QComplex.rect (factorQ N c) * recordLogError (cutoffQ N) p.terminal t.terminal)
  ⟨initialState p.valueBits v (FiniteNewtonCenter.diskBudgetQ N c 0 + ev),
    initialState p.slopeBits d
      (FiniteNewtonCenter.diskBudgetQ N c p.cauchyRadius / p.cauchyRadius + ed)⟩

/-- All six final fields and BOTH final tolerance checks remain present. -/
def checkFinal (N : ℕ) (c : QComplex) (p : Plan N) (t : Transcript N)
    (valueTol slopeTol : ℚ) (out : CenterState) : Bool :=
  decide (((assemble N c p t).value.error ≤ valueTol ∧
    (assemble N c p t).slope.error ≤ slopeTol) ∧ assemble N c p t = out)

theorem checkPrefix_iff (N : ℕ) (c : QComplex) (p : Plan N) (t : Transcript N)
    (indices : Finset (Fin N)) : checkPrefix N c p t indices = true ↔
      ∀ i ∈ indices,
        RationalPowerEvaluation.Admissible ((i.1 : ℚ) + 1) (sourceExponent c) (p.prefix i) ∧
        RationalPowerEvaluation.compute ((i.1 : ℚ) + 1) (sourceExponent c) (p.prefix i) =
          t.prefix i := by simp [checkPrefix]

theorem checkTerminal_iff (N : ℕ) (c : QComplex) (p : Plan N) (t : Transcript N) :
    checkTerminal N c p t = true ↔
      RationalPowerEvaluation.Admissible (cutoffQ N) (sourceExponent c) p.terminal ∧
      RationalPowerEvaluation.compute (cutoffQ N) (sourceExponent c) p.terminal = t.terminal := by
  simp [checkTerminal]

theorem checkGeometry_iff (N : ℕ) (c : QComplex) (p : Plan N) :
    checkGeometry N c p = true ↔
      0 < p.cauchyRadius ∧ p.cauchyRadius ≤ c.re ∧
        0 < QComplex.normSq (QComplex.sub c QComplex.one) := by simp [checkGeometry]

theorem checkFinal_iff (N : ℕ) (c : QComplex) (p : Plan N) (t : Transcript N)
    (valueTol slopeTol : ℚ) (out : CenterState) :
    checkFinal N c p t valueTol slopeTol out = true ↔
      ((assemble N c p t).value.error ≤ valueTol ∧
        (assemble N c p t).slope.error ≤ slopeTol) ∧ assemble N c p t = out := by
  simp [checkFinal]

/-- Definitionally the SAME joint computation, not a new analytic evaluator. -/
theorem assemble_canonical (N : ℕ) (c : QComplex) (p : Plan N) :
    assemble N c p (canonicalTranscript N c p) = RationalZetaCenterEvaluation.compute N c p := rfl

/-- Endpoint agreement identifies the full transcript exactly. -/
theorem transcript_eq_canonical (N : ℕ) (c : QComplex) (p : Plan N) (t : Transcript N)
    (hp : ∀ i, RationalPowerEvaluation.compute
      ((i.1 : ℚ) + 1) (sourceExponent c) (p.prefix i) = t.prefix i)
    (ht : RationalPowerEvaluation.compute (cutoffQ N) (sourceExponent c) p.terminal = t.terminal) :
    t = canonicalTranscript N c p := by
  rcases t with ⟨prefix, terminal⟩
  have hp' : prefix = fun i => RationalPowerEvaluation.compute
      ((i.1 : ℚ) + 1) (sourceExponent c) (p.prefix i) := funext (fun i => (hp i).symm)
  have ht' : terminal = RationalPowerEvaluation.compute
      (cutoffQ N) (sourceExponent c) p.terminal := ht.symm
  simp only [hp', ht', canonicalTranscript]

/-- Complete coverage, not the number of passing blocks, discharges every prefix index.
Overlapping blocks only repeat checks; assembly never sums blocks or their claims. -/
theorem verify_of_checks (N B : ℕ) (c : QComplex) (p : Plan N) (t : Transcript N)
    (blocks : Fin B → Finset (Fin N)) (hcover : ∀ i, ∃ b, i ∈ blocks b)
    (valueTol slopeTol : ℚ) (out : CenterState)
    (hg : checkGeometry N c p = true)
    (hb : ∀ b, checkPrefix N c p t (blocks b) = true)
    (ht : checkTerminal N c p t = true)
    (hf : checkFinal N c p t valueTol slopeTol out = true) :
    RationalZetaCenterEvaluation.verify N c p valueTol slopeTol out = true := by
  have hall (i : Fin N) :
      RationalPowerEvaluation.Admissible ((i.1 : ℚ) + 1) (sourceExponent c) (p.prefix i) ∧
      RationalPowerEvaluation.compute ((i.1 : ℚ) + 1) (sourceExponent c) (p.prefix i) =
        t.prefix i := by
    obtain ⟨b, hi⟩ := hcover i
    exact (checkPrefix_iff N c p t (blocks b)).mp (hb b) i hi
  have hgeo := (checkGeometry_iff N c p).mp hg
  have hterm := (checkTerminal_iff N c p t).mp ht
  have hdata := transcript_eq_canonical N c p t (fun i => (hall i).2) hterm.2
  have hfinal := (checkFinal_iff N c p t valueTol slopeTol out).mp hf
  rw [hdata, assemble_canonical] at hfinal
  apply (RationalZetaCenterEvaluation.verify_iff N c p valueTol slopeTol out).mpr
  exact ⟨⟨hgeo.1, hgeo.2.1, hgeo.2.2, fun i => (hall i).1, hterm.1⟩,
    hfinal.1, hfinal.2⟩

/-- Conversely, original acceptance supplies a transcript meeting every block check.
This prevents the decomposition from silently changing the acceptance predicate. -/
theorem verify_iff_exists_transcript (N B : ℕ) (c : QComplex) (p : Plan N)
    (blocks : Fin B → Finset (Fin N)) (hcover : ∀ i, ∃ b, i ∈ blocks b)
    (valueTol slopeTol : ℚ) (out : CenterState) :
    RationalZetaCenterEvaluation.verify N c p valueTol slopeTol out = true ↔
      ∃ t : Transcript N, checkGeometry N c p = true ∧
        (∀ b, checkPrefix N c p t (blocks b) = true) ∧
        checkTerminal N c p t = true ∧ checkFinal N c p t valueTol slopeTol out = true := by
  constructor
  · intro h
    obtain ⟨ha, htol, hout⟩ :=
      (RationalZetaCenterEvaluation.verify_iff N c p valueTol slopeTol out).mp h
    refine ⟨canonicalTranscript N c p, ?_, ?_, ?_, ?_⟩
    · exact (checkGeometry_iff N c p).mpr ⟨ha.1, ha.2.1, ha.2.2.1⟩
    · intro b
      apply (checkPrefix_iff N c p _ (blocks b)).mpr
      intro i _
      exact ⟨ha.2.2.2.1 i, rfl⟩
    · exact (checkTerminal_iff N c p _).mpr ⟨ha.2.2.2.2, rfl⟩
    · apply (checkFinal_iff N c p _ valueTol slopeTol out).mpr
      simpa only [assemble_canonical] using And.intro htol hout
  · rintro ⟨t, hg, hb, ht, hf⟩
    exact verify_of_checks N B c p t blocks hcover valueTol slopeTol out hg hb ht hf

end GRWTSK.RiemannHypothesis.RationalZetaTranscript
```
