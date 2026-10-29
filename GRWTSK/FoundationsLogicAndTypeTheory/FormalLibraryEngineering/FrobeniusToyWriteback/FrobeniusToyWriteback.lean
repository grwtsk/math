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

end Think.Pipeline.FrobeniusToyWriteback
