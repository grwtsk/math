# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TwistedBitfield.Variant6be3b5beffe4d44de3a2569fa14c8a46a890be08cf65199bf1b7e2c18e06c525

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b4c8a3ecaaf7f272c64ae6694fee5b8f62ced4c` · SHA-256 `6be3b5beffe4d44de3a2569fa14c8a46a890be08cf65199bf1b7e2c18e06c525`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.ZMod.Basic

/-!
# Möbius phase transport and equivariant bitfields

Client and Server are charts of one state joined by a registered involution.
The Boolean phase carrier is not an amplitude carrier.
-/

namespace Mathematics.MobiusOntology

universe u v

abbrev BooleanBitfield (width : Nat) :=
  Fin width → Bool

structure BitfieldInvolution (width : Nat) where
  twist : BooleanBitfield width → BooleanBitfield width
  involutive : Function.Involutive twist

def complementInvolution (width : Nat) :
    BitfieldInvolution width where
  twist := fun bitfield index => !(bitfield index)
  involutive := by
    intro bitfield
    funext index
    simp

/-- A mapping-torus atlas: two charts glued by one invertible monodromy. -/
structure MobiusMappingTorus (Carrier : Type u) where
  monodromy : Carrier ≃ Carrier
  involutive :
    ∀ state, monodromy (monodromy state) = state

def bitfieldMappingTorus
    (involution : BitfieldInvolution width) :
    MobiusMappingTorus (BooleanBitfield width) where
  monodromy :=
    {
      toFun := involution.twist
      invFun := involution.twist
      left_inv := involution.involutive
      right_inv := involution.involutive
    }
  involutive := involution.involutive

structure EquivariantEncoding
    (State : Type u) (width : Nat)
    (stateTwist : State → State)
    (bitTwist : BitfieldInvolution width) where
  encode : State → BooleanBitfield width
  injective : Function.Injective encode
  equivariant :
    ∀ state,
      encode (stateTwist state) =
        bitTwist.twist (encode state)

structure MinimalBitWidthCertificate
    (Admissible : Nat → Prop) where
  width : Nat
  admissible : Admissible width
  minimal :
    ∀ candidate,
      Admissible candidate →
        width ≤ candidate

structure BooleanTransitionRealization
    (Source : Type u) (Target : Type v)
    (sourceWidth targetWidth : Nat)
    (sourceEncode : Source → BooleanBitfield sourceWidth)
    (targetEncode : Target → BooleanBitfield targetWidth)
    (transition : Source → Target) where
  booleanTransition :
    BooleanBitfield sourceWidth → BooleanBitfield targetWidth
  commutes :
    ∀ state,
      booleanTransition (sourceEncode state) =
        targetEncode (transition state)

def phaseValue (bit : Bool) : ZMod 2 :=
  if bit then 1 else 0

theorem complement_phase_equation
    (bit : Bool) :
    phaseValue bit + phaseValue (!bit) + 1 = 0 := by
  cases bit <;> native_decide

structure PhaseCertificate
    (Snapshot Payload : Type u)
    (width : Nat) where
  snapshot : Snapshot
  payload : Payload
  client : BooleanBitfield width
  server : BooleanBitfield width
  serverIsComplement :
    server = (complementInvolution width).twist client

theorem PhaseCertificate.phaseEquation
    {Snapshot Payload : Type u}
    {width : Nat}
    (certificate : PhaseCertificate Snapshot Payload width)
    (index : Fin width) :
    phaseValue (certificate.client index) +
        phaseValue (certificate.server index) + 1 =
      0 := by
  rw [certificate.serverIsComplement]
  exact complement_phase_equation (certificate.client index)

end Mathematics.MobiusOntology
```
