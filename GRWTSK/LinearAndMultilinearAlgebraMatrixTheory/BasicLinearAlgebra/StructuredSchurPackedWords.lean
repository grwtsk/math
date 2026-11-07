/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurNearestEven

/-!
# Packed words for a two-pair compact Schur record

One record consists of five signed and twelve unsigned 64-bit fields.
Shifts locate the fields in little-endian order. Reduction modulo
`2^64` isolates each field, and subtracting `2^64` at or above the
sign boundary recovers the signed coordinate. The last twelve fields remain
unsigned. In particular the same bits for the sign boundary encode a
negative row coordinate and a positive cap.

The row and cap decoders supply the two projections of a compact Schur
tape. Anchor consistency and the magnitude checks concern the decoded
values and remain premises of a recurrence replay. Independent
mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay.PackedWords

open StructuredSchurIntegerReplay StructuredSchurNearestEven

/-- The bit width of one compact two-pair record. -/
def recordBits : ℕ := 64 * 17

/-- Extract one unsigned little-endian word from a packed natural. -/
def word64 (packet field : ℕ) : ℕ := (packet >>> (64 * field)) % 2^64

/-- Interpret a 64-bit word as a signed two's-complement integer. -/
def signed64 (word : ℕ) : ℤ :=
  if word < 2^63 then (word : ℤ) else (word : ℤ) - 2^64

/-- Decode the diagonal and two signed pairs of generator coordinates. -/
def row (packet : ℕ) : GridRow 2 :=
  ⟨signed64 (word64 packet 0),
   fun l => signed64 (word64 packet (1 + 2 * l.val)),
   fun l => signed64 (word64 packet (2 + 2 * l.val))⟩

/-- Decode the twelve unsigned cap fields after the five row coordinates. -/
def caps (packet : ℕ) : StepPrices 2 :=
  ⟨word64 packet 5, word64 packet 6, word64 packet 7, word64 packet 8,
   fun l => word64 packet (9 + 2 * l.val),
   fun l => word64 packet (10 + 2 * l.val),
   fun l => word64 packet (13 + 2 * l.val),
   fun l => word64 packet (14 + 2 * l.val)⟩

end GRWTSK.Algebra.LinearAlgebra.StructuredSchurCompactReplay.PackedWords
