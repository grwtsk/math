# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonBlockAcceptance

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f04a1dfc97014cc0032ff7b07cbdc996c2adf0ed` · SHA-256 `0790944d47fcdd1c5c6e01895a10911ad4b22b342486f6d4cbeb67f177853d31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonPacket
import GRWTSK.NumberTheory.Zeta.Riemann.RationalZetaTranscript
import Mathlib.Tactic.Omega

set_option autoImplicit false

/-!
# Sixty-four exact prefix blocks for the concrete Newton packet

This factors the original SourceAcceptance proposition into explicit finite
checks. It proves the index coverage and logical composition, NOT acceptance
of any concrete transcript. There is no build, worker, receipt, hash-trust,
native decision, or source-acceptance axiom in this module.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonBlockAcceptance

open scoped BigOperators
open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open CanonicalZeroDivisor ConcreteNewtonPacket RationalZetaTranscript

/-- Zero-based indices 64*b,...,64*b+63, corresponding to integer bases +1. -/
def blockIndices (b : Fin 64) : Finset (Fin prefixLength) :=
  Finset.univ.filter (fun i => i.1 / 64 = b.1)

@[simp] theorem mem_blockIndices (b : Fin 64) (i : Fin prefixLength) :
    i ∈ blockIndices b ↔ i.1 / 64 = b.1 := by simp [blockIndices]

theorem block_interval (b : Fin 64) (i : Fin prefixLength) :
    i ∈ blockIndices b ↔ 64 * b.1 ≤ i.1 ∧ i.1 < 64 * (b.1 + 1) := by
  rw [mem_blockIndices]
  omega

/-- Every prefix position has one block, including the last included term 4096. -/
theorem block_coverage (i : Fin prefixLength) : ∃ b : Fin 64, i ∈ blockIndices b := by
  have hi : i.1 < 4096 := i.isLt
  exact ⟨⟨i.1 / 64, by omega⟩, (mem_blockIndices _ _).mpr rfl⟩

/-- Duplicated or overlapping block labels cannot be mistaken for new coverage. -/
theorem block_unique (i : Fin prefixLength) (b d : Fin 64)
    (hb : i ∈ blockIndices b) (hd : i ∈ blockIndices d) : b = d := by
  apply Fin.ext
  exact ((mem_blockIndices b i).mp hb).symm.trans ((mem_blockIndices d i).mp hd)

/-- Small source-domain check only; no prefix computation is performed here. -/
theorem geometry_accepts : checkGeometry prefixLength center plan = true := by
  norm_num [checkGeometry, plan, center, QComplex.normSq, QComplex.sub, QComplex.one]

/-- All these equalities are outstanding until individually proved and audited.
The terminal and the six-field final check are not hidden inside prefix coverage. -/
def BlockObligations (t : Transcript prefixLength) : Prop :=
  (∀ b : Fin 64, checkPrefix prefixLength center plan t (blockIndices b) = true) ∧
    checkTerminal prefixLength center plan t = true ∧
      checkFinal prefixLength center plan t valueTolerance slopeTolerance claimed = true

/-- This is a composition theorem, not a closed proof of SourceAcceptance. -/
theorem source_acceptance_of_blocks (t : Transcript prefixLength) (h : BlockObligations t) :
    SourceAcceptance :=
  verify_of_checks prefixLength 64 center plan t blockIndices block_coverage
    valueTolerance slopeTolerance claimed geometry_accepts h.1 h.2.1 h.2.2

/-- No weaker acceptance route: the block obligation is equivalent after existential
quantification over the untrusted transcript. It does not assert that one exists. -/
theorem source_acceptance_iff_exists_blocks :
    SourceAcceptance ↔ ∃ t : Transcript prefixLength, BlockObligations t := by
  have h := verify_iff_exists_transcript prefixLength 64 center plan
    blockIndices block_coverage valueTolerance slopeTolerance claimed
  constructor
  · intro hs
    obtain ⟨t, _, hb, ht, hf⟩ := h.mp hs
    exact ⟨t, hb, ht, hf⟩
  · rintro ⟨t, ht⟩
    exact source_acceptance_of_blocks t ht

/-- Conditional only; none of the 66 data-check obligations is discharged here. -/
theorem local_zero_of_blocks (t : Transcript prefixLength) (h : BlockObligations t) :
    ∃ z : ZeroPoint, ‖z.1 - QComplex.embed center‖ ≤ (newtonRadius : ℝ) ∧
      deriv riemannZeta z.1 ≠ 0 ∧
      ∀ w : ZeroPoint, ‖w.1 - QComplex.embed center‖ ≤ (newtonRadius : ℝ) → w = z :=
  local_zero_of_source_acceptance (source_acceptance_of_blocks t h)

end GRWTSK.RiemannHypothesis.ConcreteNewtonBlockAcceptance
```
