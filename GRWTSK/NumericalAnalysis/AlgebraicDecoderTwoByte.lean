/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumericalAnalysis.AlgebraicDecoderInverse
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Tactic.Ring

/-!
# Two-byte evaluation profile

The ordered bytes are the constant and linear coefficients of `b₀ + b₁ X` over
`ℤ/(7⁵)`. The packet stores the ordered evaluations at `1` and `-1`. Adding and
subtracting the evaluations produces `2 b₀` and `2 b₁`. Multiplication by the
certified inverse of two recovers both residues. Applying the evaluation map
again returns the original packet by the same two identities.

The modulus exceeds the byte range. A residue therefore represents a byte
exactly when its canonical representative is less than 256. The decoder tests
both bounds after its two arithmetic branches and returns the unique source in
the image of the encoder. In particular, `(256, 256)` is a canonical packet
whose reconstruction cannot be interpreted as two bytes.

The wire format emits the positive residue first, then the negative residue,
with two little-endian bytes per residue. Division with remainder gives the
two digits of each canonical representative. Parsing joins those digits and
checks the modulus bound before the cast, so the word `0x41a7` is rejected at
the modulus boundary even though its residue would be zero.
-/

set_option autoImplicit false

namespace GRWTSK.NumericalAnalysis.AlgebraicDecoder.TwoByte

abbrev Byte := Fin 256
abbrev Residue := ZMod (7 ^ 5)

structure Source where
  b0 : Byte
  b1 : Byte
  deriving DecidableEq, Repr

structure Packet where
  positive : Residue
  negative : Residue
  deriving DecidableEq, Repr

structure WirePacket where
  positiveLow : Byte
  positiveHigh : Byte
  negativeLow : Byte
  negativeHigh : Byte
  deriving DecidableEq, Repr

private def splitWord (residue : Residue) : Byte × Byte :=
  (⟨residue.val % 256, Nat.mod_lt _ (by decide)⟩,
    ⟨residue.val / 256, (Nat.div_lt_iff_lt_mul (by decide)).2
      (lt_trans (ZMod.val_lt residue) (by decide))⟩)

private def joinWord (bytes : Byte × Byte) : ℕ := bytes.1.val + 256 * bytes.2.val

private theorem joinWord_splitWord (residue : Residue) :
    joinWord (splitWord residue) = residue.val := Nat.mod_add_div _ _

private theorem splitWord_joinWord (bytes : Byte × Byte) (bounded : joinWord bytes < 7 ^ 5) :
    splitWord (joinWord bytes : Residue) = bytes := by
  rcases bytes with ⟨low, high⟩
  apply Prod.ext <;> apply Fin.ext
  · change (joinWord (low, high) : Residue).val % 256 = low.val
    rw [ZMod.val_natCast_of_lt bounded]
    exact (Nat.add_mul_mod_self_left _ _ _).trans (Nat.mod_eq_of_lt low.isLt)
  · change (joinWord (low, high) : Residue).val / 256 = high.val
    rw [ZMod.val_natCast_of_lt bounded]
    change (low.val + 256 * high.val) / 256 = high.val
    rw [Nat.add_mul_div_left _ _ (by decide), Nat.div_eq_of_lt low.isLt, Nat.zero_add]

def pack (packet : Packet) : WirePacket :=
  let positive := splitWord packet.positive
  let negative := splitWord packet.negative
  ⟨positive.1, positive.2, negative.1, negative.2⟩

def parse (wire : WirePacket) : Option Packet :=
  let positive := joinWord (wire.positiveLow, wire.positiveHigh)
  let negative := joinWord (wire.negativeLow, wire.negativeHigh)
  if positive < 7 ^ 5 ∧ negative < 7 ^ 5 then some ⟨positive, negative⟩ else none

@[simp] theorem parse_pack (packet : Packet) : parse (pack packet) = some packet := by
  cases packet
  simp [parse, pack, joinWord_splitWord, ZMod.val_lt]

theorem parse_eq_some_iff (wire : WirePacket) (packet : Packet) :
    parse wire = some packet ↔ pack packet = wire := by
  constructor
  · intro parsed
    unfold parse at parsed
    dsimp only at parsed
    split at parsed
    · rename_i bounds
      cases parsed
      cases wire
      simp [pack, splitWord_joinWord _ bounds.1, splitWord_joinWord _ bounds.2]
    · contradiction
  · rintro rfl
    exact parse_pack packet

def coefficients (source : Source) : Residue × Residue :=
  (source.b0.val, source.b1.val)

def evaluate (pair : Residue × Residue) : Packet :=
  ⟨pair.1 + pair.2, pair.1 - pair.2⟩

noncomputable def linearPolynomial (pair : Residue × Residue) : Polynomial Residue :=
  Polynomial.C pair.1 + Polynomial.C pair.2 * Polynomial.X

theorem evaluate_linearPolynomial (pair : Residue × Residue) :
    evaluate pair = ⟨(linearPolynomial pair).eval 1, (linearPolynomial pair).eval (-1)⟩ := by
  simp [evaluate, linearPolynomial, sub_eq_add_neg]

def reconstruct (packet : Packet) : Residue × Residue :=
  let half := inverseTwo.value
  ((packet.positive + packet.negative) * half, (packet.positive - packet.negative) * half)

@[simp] theorem reconstruct_evaluate (pair : Residue × Residue) :
    reconstruct (evaluate pair) = pair := by
  rcases pair with ⟨x, y⟩
  apply Prod.ext
  · change ((x + y) + (x - y)) * inverseTwo.value = x
    calc
      _ = x * (2 * inverseTwo.value) := by ring
      _ = x := by rw [inverseTwo.right_inverse, mul_one]
  · change ((x + y) - (x - y)) * inverseTwo.value = y
    calc
      _ = y * (2 * inverseTwo.value) := by ring
      _ = y := by rw [inverseTwo.right_inverse, mul_one]

@[simp] theorem evaluate_reconstruct (packet : Packet) :
    evaluate (reconstruct packet) = packet := by
  rcases packet with ⟨x, y⟩
  change Packet.mk ((x + y) * inverseTwo.value + (x - y) * inverseTwo.value)
    ((x + y) * inverseTwo.value - (x - y) * inverseTwo.value) = ⟨x, y⟩
  congr 1
  · calc
      _ = x * (2 * inverseTwo.value) := by ring
      _ = x := by rw [inverseTwo.right_inverse, mul_one]
  · calc
      _ = y * (2 * inverseTwo.value) := by ring
      _ = y := by rw [inverseTwo.right_inverse, mul_one]

/-- The two ordered evaluations are an exact reversible decomposition of a linear pair. -/
def evaluationEquiv : (Residue × Residue) ≃ Packet where
  toFun := evaluate
  invFun := reconstruct
  left_inv := reconstruct_evaluate
  right_inv := evaluate_reconstruct

def encode (source : Source) : Packet := evaluate (coefficients source)

@[simp] theorem reconstruct_encode (source : Source) :
    reconstruct (encode source) = coefficients source := reconstruct_evaluate _

def checkCoefficients (pair : Residue × Residue) : Option Source :=
  if h0 : pair.1.val < 256 then
    if h1 : pair.2.val < 256 then some ⟨⟨pair.1.val, h0⟩, ⟨pair.2.val, h1⟩⟩
    else none
  else none

def decode (packet : Packet) : Option Source := checkCoefficients (reconstruct packet)

private theorem byte_val (b : Byte) : (b.val : Residue).val = b.val :=
  ZMod.val_natCast_of_lt (lt_trans b.isLt (by decide))

@[simp] theorem decode_encode (source : Source) : decode (encode source) = some source := by
  rw [decode, reconstruct_encode]
  rcases source with ⟨x, y⟩
  simp only [checkCoefficients, coefficients, byte_val, dite_eq_left x.isLt, dite_eq_left y.isLt]

private theorem checkCoefficients_sound {pair : Residue × Residue} {source : Source}
    (h : checkCoefficients pair = some source) : coefficients source = pair := by
  unfold checkCoefficients at h
  split at h
  · split at h
    · cases h
      exact Prod.ext (ZMod.natCast_zmod_val pair.1) (ZMod.natCast_zmod_val pair.2)
    · contradiction
  · contradiction

theorem decode_eq_some_iff (packet : Packet) (source : Source) :
    decode packet = some source ↔ encode source = packet := by
  constructor
  · intro h
    rw [encode, checkCoefficients_sound h, evaluate_reconstruct]
  · intro h
    rw [← h, decode_encode]

theorem encode_injective : Function.Injective encode := by
  intro a b h
  simpa using congrArg decode h

example : encode ⟨2, 3⟩ = ⟨5, 16806⟩ := by decide

example : pack (encode ⟨2, 3⟩) = ⟨5, 0, 166, 65⟩ := by decide

example : parse ⟨167, 65, 0, 0⟩ = none := by decide

example : decode ⟨5, 16806⟩ = some ⟨2, 3⟩ :=
  (decode_eq_some_iff _ _).2 (by decide)

example : decode ⟨256, 256⟩ = none := by
  have h : evaluate (256, 0) = ⟨256, 256⟩ := by decide
  rw [← h, decode, reconstruct_evaluate]
  decide

end GRWTSK.NumericalAnalysis.AlgebraicDecoder.TwoByte
