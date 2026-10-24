# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.NewtonBlockAcceptanceControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e00c22869087bae331e2c32b1cadc9de863c956b` · SHA-256 `e40b1852f986f131ef494662a0fc583db23a69382f2ee746317e5254bbff5bed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonBlockAcceptance

set_option autoImplicit false

/-! Source controls only. None evaluates a concrete 64-row block or proves
SourceAcceptance. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. -/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.NewtonBlockAcceptanceControls

open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open GRWTSK.RiemannHypothesis
open ConcreteNewtonPacket ConcreteNewtonBlockAcceptance RationalZetaTranscript

/-- An empty local check is vacuous, not a complete certificate. -/
theorem empty_prefix_check (N : ℕ) (c : QComplex)
    (p : RationalZetaCenterEvaluation.Plan N) (t : Transcript N) :
    checkPrefix N c p t ∅ = true := by simp [checkPrefix]

/-- Even universal success over an empty block family cannot cover one prefix index. -/
theorem no_empty_cover (blocks : Fin 0 → Finset (Fin 1)) :
    ¬ (∀ i : Fin 1, ∃ b : Fin 0, i ∈ blocks b) := by
  intro h
  obtain ⟨b, _⟩ := h ⟨0, by omega⟩
  exact Fin.elim0 b

theorem first_index_in_first_block :
    (⟨0, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ blockIndices ⟨0, by omega⟩ := by
  rw [mem_blockIndices]
  norm_num

theorem last_index_in_first_block :
    (⟨63, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ blockIndices ⟨0, by omega⟩ := by
  rw [mem_blockIndices]
  norm_num

theorem next_index_in_next_block :
    (⟨64, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ blockIndices ⟨1, by omega⟩ := by
  rw [mem_blockIndices]
  norm_num

theorem final_index_in_final_block :
    (⟨4095, by norm_num [prefixLength]⟩ : Fin prefixLength) ∈ blockIndices ⟨63, by omega⟩ := by
  rw [mem_blockIndices]
  norm_num

/-- Terminal base 4097 cannot be mistaken for an included base 1,...,4096. -/
theorem terminal_not_prefix (i : Fin prefixLength) : i.1 + 1 ≠ prefixLength + 1 := by
  have hi := i.isLt
  omega

theorem distinct_blocks_disjoint (b d : Fin 64) (hne : b ≠ d) :
    Disjoint (blockIndices b) (blockIndices d) := by
  apply Finset.disjoint_left.mpr
  intro i hb hd
  exact hne (block_unique i b d hb hd)

/-- Aggregates can coincide while individual rows differ. -/
theorem cancellation_does_not_identify_rows :
    (1 : ℚ) + (-1) = 0 + 0 ∧ ((1 : ℚ), (-1 : ℚ)) ≠ (0, 0) := by norm_num

/-- Accepted overlapping checks must agree on the FULL state at the shared index. -/
theorem accepted_shared_row_eq (N : ℕ) (c : QComplex)
    (p : RationalZetaCenterEvaluation.Plan N) (a b : Transcript N)
    (S U : Finset (Fin N)) (i : Fin N) (hiS : i ∈ S) (hiU : i ∈ U)
    (ha : checkPrefix N c p a S = true) (hb : checkPrefix N c p b U = true) :
    a.prefix i = b.prefix i := by
  have h1 := ((checkPrefix_iff N c p a S).mp ha i hiS).2
  have h2 := ((checkPrefix_iff N c p b U).mp hb i hiU).2
  exact h1.symm.trans h2

/-- The returned error is part of state equality, not just the two coordinates. -/
theorem accepted_shared_error_eq (N : ℕ) (c : QComplex)
    (p : RationalZetaCenterEvaluation.Plan N) (a b : Transcript N)
    (S U : Finset (Fin N)) (i : Fin N) (hiS : i ∈ S) (hiU : i ∈ U)
    (ha : checkPrefix N c p a S = true) (hb : checkPrefix N c p b U = true) :
    (a.prefix i).error = (b.prefix i).error :=
  congrArg State.error (accepted_shared_row_eq N c p a b S U i hiS hiU ha hb)

/-- A repeated label contributes no new mathematical block. -/
theorem repeated_block_not_new_coverage (b : Fin 64) :
    blockIndices b ∪ blockIndices b = blockIndices b := Finset.union_self _

end GRWTSK.NumberTheory.Chebyshev.Checks.NewtonBlockAcceptanceControls
```
