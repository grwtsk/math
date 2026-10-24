# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectHalfControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09263bd679b45d2f33003abfee7fcb1f2a7c8e1e` · SHA-256 `73f9f08508bf24bc5d563572e7a57c3d13c6ec3a3077810ca64c7e9eef04f128`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectHalfClosure

set_option autoImplicit false

/-!
# Controls for the direct half-block replay route

These controls reuse unexecuted half decisions. They do not execute the target.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectHalfControls

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open HeightFifteenBlockDecomposition HeightFifteenDirectHalfBlocks
open HeightFifteenDirectHalfClaims HeightFifteenDirectHalfClosure

/-- The unique positive crossing remains in the first half of old block four. -/
theorem half08_zero_rejected :
    chunk directTest directTerm 256 32 ≠ some 0 := by
  rw [half08]
  decide

theorem half00_one_rejected :
    chunk directTest directTerm 0 32 ≠ some 1 := by
  rw [half00]
  decide

/-- Both pieces of the last old block remain explicit. -/
theorem final_suffix_present :
    chunk directTest directTerm 2368 8 = some 0 ∧
      chunk directTest directTerm 2376 3 = some 0 := ⟨half74,half75⟩

theorem exact_exhaustion :
    halfWidths.sum = HeightFifteenJetCandidate.edges ∧ halfExpected.sum = 1 :=
  ⟨halfWidths_shape.2,halfExpected_shape.2⟩

theorem none_ne_successful_zero : (none : Option ℤ) ≠ some 0 := by decide

/-- The paired half proof reproduces the old +1 block, not merely the final total. -/
theorem positive_block_exact :
    chunk directTest directTerm 256 64 = some 1 := block04

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectHalfControls
```
