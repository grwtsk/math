# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FrobeniusToyWriteback.Variant86b3d9d1af7171ba6bfa51ca9cb9f5c3eb8843f7ce0ca6578d1450da6f630d99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9fc3542aa55cf9180f8167a9ea1491507e6e586` · SHA-256 `86b3d9d1af7171ba6bfa51ca9cb9f5c3eb8843f7ce0ca6578d1450da6f630d99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
set_option autoImplicit false

namespace Think.Pipeline.FrobeniusToyWriteback

structure RustToyFrobeniusReceipt where
  toyId : String
  toyDigest : String
  carrierSize : Nat
  baseModulus : Nat
  ringAlgebraSatisfied : Bool
  frobeniusDualitySatisfied : Bool
  pairingDigest : String
  rustReceiptDigest : String
  unresolvedResidueCount : Nat
deriving Repr, DecidableEq

def currentMoveReceipt : RustToyFrobeniusReceipt := {
  toyId := "f2-dual-number",
  toyDigest := "a3c3afbe9562e2dd8274874a1ab2104e0d4ec1cf562069599c2330a384de4803",
  carrierSize := 4,
  baseModulus := 2,
  ringAlgebraSatisfied := true,
  frobeniusDualitySatisfied := true,
  pairingDigest := "6e359c17caee0d37690b20e8bcf5885931176b4ec91ef0439beaa760b4f6e0b7",
  rustReceiptDigest := "d838e3fb738eadb97d4f6ce0bcb0fc291bb18161c67799b4884773b4b4ed6cef",
  unresolvedResidueCount := 0
}

theorem currentMove_ringAlgebraSatisfied :
    currentMoveReceipt.ringAlgebraSatisfied = true := by
  rfl

theorem currentMove_frobeniusDualitySatisfied :
    currentMoveReceipt.frobeniusDualitySatisfied = true := by
  rfl

theorem currentMove_noUnresolvedResidue :
    currentMoveReceipt.unresolvedResidueCount = 0 := by
  rfl

inductive Carrier where
  | e0
  | e1
  | e2
  | e3
deriving Repr, DecidableEq

def add : Carrier -> Carrier -> Carrier
  | Carrier.e0, Carrier.e0 => Carrier.e0
  | Carrier.e0, Carrier.e1 => Carrier.e1
  | Carrier.e0, Carrier.e2 => Carrier.e2
  | Carrier.e0, Carrier.e3 => Carrier.e3
  | Carrier.e1, Carrier.e0 => Carrier.e1
  | Carrier.e1, Carrier.e1 => Carrier.e0
  | Carrier.e1, Carrier.e2 => Carrier.e3
  | Carrier.e1, Carrier.e3 => Carrier.e2
  | Carrier.e2, Carrier.e0 => Carrier.e2
  | Carrier.e2, Carrier.e1 => Carrier.e3
  | Carrier.e2, Carrier.e2 => Carrier.e0
  | Carrier.e2, Carrier.e3 => Carrier.e1
  | Carrier.e3, Carrier.e0 => Carrier.e3
  | Carrier.e3, Carrier.e1 => Carrier.e2
  | Carrier.e3, Carrier.e2 => Carrier.e1
  | Carrier.e3, Carrier.e3 => Carrier.e0
  -- `add` is total because every finite table row was rendered above.

def mul : Carrier -> Carrier -> Carrier
  | Carrier.e0, Carrier.e0 => Carrier.e0
  | Carrier.e0, Carrier.e1 => Carrier.e0
  | Carrier.e0, Carrier.e2 => Carrier.e0
  | Carrier.e0, Carrier.e3 => Carrier.e0
  | Carrier.e1, Carrier.e0 => Carrier.e0
  | Carrier.e1, Carrier.e1 => Carrier.e1
  | Carrier.e1, Carrier.e2 => Carrier.e2
  | Carrier.e1, Carrier.e3 => Carrier.e3
  | Carrier.e2, Carrier.e0 => Carrier.e0
  | Carrier.e2, Carrier.e1 => Carrier.e2
  | Carrier.e2, Carrier.e2 => Carrier.e0
  | Carrier.e2, Carrier.e3 => Carrier.e2
  | Carrier.e3, Carrier.e0 => Carrier.e0
  | Carrier.e3, Carrier.e1 => Carrier.e3
  | Carrier.e3, Carrier.e2 => Carrier.e2
  | Carrier.e3, Carrier.e3 => Carrier.e1
  -- `mul` is total because every finite table row was rendered above.

def neg : Carrier -> Carrier
  | Carrier.e0 => Carrier.e0
  | Carrier.e1 => Carrier.e1
  | Carrier.e2 => Carrier.e2
  | Carrier.e3 => Carrier.e3

def trace : Carrier -> Nat
  | Carrier.e0 => 0
  | Carrier.e1 => 0
  | Carrier.e2 => 1
  | Carrier.e3 => 1

def pairing (x y : Carrier) : Nat := trace (mul x y)

def allCarrier : List Carrier := [Carrier.e0, Carrier.e1, Carrier.e2, Carrier.e3]

def carrierEq (x y : Carrier) : Bool := decide (x = y)
def natEq (x y : Nat) : Bool := decide (x = y)
def all1 (p : Carrier -> Bool) : Bool := allCarrier.all p
def all2 (p : Carrier -> Carrier -> Bool) : Bool := allCarrier.all (fun x => allCarrier.all (fun y => p x y))
def all3 (p : Carrier -> Carrier -> Carrier -> Bool) : Bool := allCarrier.all (fun x => allCarrier.all (fun y => allCarrier.all (fun z => p x y z)))

def addAssocCheck : Bool :=
  all3 (fun x y z => carrierEq (add (add x y) z) (add x (add y z)))
def addCommCheck : Bool := all2 (fun x y => carrierEq (add x y) (add y x))
def addZeroCheck : Bool :=
  all1 (fun x => carrierEq (add x Carrier.e0) x && carrierEq (add Carrier.e0 x) x)
def addInverseCheck : Bool :=
  all1 (fun x => carrierEq (add x (neg x)) Carrier.e0 && carrierEq (add (neg x) x) Carrier.e0)
def mulAssocCheck : Bool :=
  all3 (fun x y z => carrierEq (mul (mul x y) z) (mul x (mul y z)))
def mulOneCheck : Bool :=
  all1 (fun x => carrierEq (mul x Carrier.e1) x && carrierEq (mul Carrier.e1 x) x)
def zeroMulCheck : Bool := all1 (fun x => carrierEq (mul Carrier.e0 x) Carrier.e0)
def mulZeroCheck : Bool := all1 (fun x => carrierEq (mul x Carrier.e0) Carrier.e0)
def leftDistribCheck : Bool :=
  all3 (fun x y z => carrierEq (mul x (add y z)) (add (mul x y) (mul x z)))
def rightDistribCheck : Bool :=
  all3 (fun x y z => carrierEq (mul (add x y) z) (add (mul x z) (mul y z)))

def ringAlgebraCheck : Bool :=
  addAssocCheck && addCommCheck && addZeroCheck && addInverseCheck &&
  mulAssocCheck && mulOneCheck && zeroMulCheck && mulZeroCheck &&
  leftDistribCheck && rightDistribCheck
def frobeniusAssociativityCheck : Bool :=
  all3 (fun x y z => natEq (pairing (mul x y) z) (pairing x (mul y z)))
def leftNondegenerateCheck : Bool :=
  all1 (fun x => if carrierEq x Carrier.e0 then true else allCarrier.any (fun y => decide (pairing x y != 0)))
def rightNondegenerateCheck : Bool :=
  all1 (fun y => if carrierEq y Carrier.e0 then true else allCarrier.any (fun x => decide (pairing x y != 0)))

theorem ringAlgebraCheck_eq_true : ringAlgebraCheck = true := by
  native_decide

theorem frobeniusAssociativityCheck_eq_true :
    frobeniusAssociativityCheck = true := by
  native_decide

theorem leftNondegenerateCheck_eq_true :
    leftNondegenerateCheck = true := by
  native_decide

theorem rightNondegenerateCheck_eq_true :
    rightNondegenerateCheck = true := by
  native_decide

end Think.Pipeline.FrobeniusToyWriteback
```
