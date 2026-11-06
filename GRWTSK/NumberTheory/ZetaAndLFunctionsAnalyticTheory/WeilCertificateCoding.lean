/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddStageCertificate
import GRWTSK.Combinatorics.GraphTheory.ReversibleCertificateHeat
import Mathlib.Logic.Encodable.Pi
import Mathlib.Data.Rat.Encodable

/-!
# Exact coding of the dependent rational stage packet

The actual finite matrices, dimensions, budgets, Gram rows and stage index
are encoded, not just a hash or a scalar trace. Explicit structure/product
equivalences reuse Mathlib's rational, finite-function and sigma encoders.
Their decode-after-encode law instantiates the existing `Lossless` type.
No arbitrary real test vector or analytic proof is claimed finitely encodable.

`Accepted` remains an independently supplied predicate on decoded source
packets. A valid readback gives the original stage bound through the actual
packet consumer, without treating successful decoding as proof acceptance.
A natural-number code can be stored in a variable-length bit frame; this
module makes no compression-ratio, bounded-word or runtime serialization
claim. In particular it does not identify a digest with a reversible code.

Baseline c5648c5a280d1cbdf4f98b594a450aaa5e4969c9.
AI-assisted manual source. Elaboration, kernel replay, transitive axiom
audit and independent mathematical review: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddStageCoding

open Matrix OddStageCertificate
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory

private abbrev RawData := Σ N M L J : ℕ,
  Matrix (Fin M) (Fin N ⊕ Unit) ℚ ×
  Matrix (Fin N ⊕ Unit) (Fin N ⊕ Unit) ℚ ×
  Matrix (Fin N ⊕ Unit) (Fin N ⊕ Unit) ℚ ×
  Matrix (Fin N ⊕ Unit) (Fin N ⊕ Unit) ℚ ×
  Matrix (Fin (L - N)) (Fin N ⊕ Unit) ℚ × ℚ × ℚ × ℚ × ℚ

private def dataEquiv (j : ℕ) : Data j ≃ RawData where
  toFun p := ⟨p.N, p.M, p.L, p.J, p.reconstruction, p.upper, p.rowError,
    p.remote, p.rows, p.upperError, p.highFloor, p.young, p.remoteSplit⟩
  invFun p := match p with
    | ⟨N, M, L, J, X, upper, rowError, remote, rows, eta, gamma, young, split⟩ =>
      ⟨N, M, L, J, X, upper, rowError, remote, rows, eta, gamma, young, split⟩
  left_inv p := by cases p; rfl
  right_inv p := by
    rcases p with ⟨N, M, L, J, X, upper, rowError, remote, rows, eta, gamma, young, split⟩
    rfl

instance dataEncodable (j : ℕ) : Encodable (Data j) :=
  Encodable.ofEquiv RawData (dataEquiv j)

private def gramEquiv (N r : ℕ) :
    Certificate ℚ (Fin N ⊕ Unit) Empty Empty (Fin r) ≃
      (Matrix (Fin r) (Fin N ⊕ Unit) ℚ × (Empty → ℚ) × (Empty → ℚ)) where
  toFun w := (w.gram, w.equalityMultipliers, w.inequalityMultipliers)
  invFun w := ⟨w.1, w.2.1, w.2.2⟩
  left_inv w := by cases w; rfl
  right_inv w := by rcases w with ⟨g, e, i⟩; rfl

instance gramEncodable (N r : ℕ) :
    Encodable (Certificate ℚ (Fin N ⊕ Unit) Empty Empty (Fin r)) :=
  Encodable.ofEquiv _ (gramEquiv N r)

private abbrev RawPacket (j : ℕ) := Σ p : Data j, Σ r : ℕ,
  Certificate ℚ (Fin p.N ⊕ Unit) Empty Empty (Fin r)

private def packetEquiv (j : ℕ) : Packet j ≃ RawPacket j where
  toFun p := ⟨p.data, p.gramRows, p.gram⟩
  invFun p := ⟨p.1, p.2.1, p.2.2⟩
  left_inv p := by cases p; rfl
  right_inv p := by rcases p with ⟨p, r, w⟩; rfl

instance packetEncodable (j : ℕ) : Encodable (Packet j) :=
  Encodable.ofEquiv (RawPacket j) (packetEquiv j)

/-- A concrete mathematical codec for the complete stage-indexed finite payload. -/
def packetCode : Lossless Payload ℕ where
  encode := Encodable.encode
  decode := Encodable.decode
  roundtrip := Encodable.encodek

@[simp] theorem packetCode_roundtrip (p : Payload) :
    packetCode.decode (packetCode.encode p) = some p := packetCode.roundtrip p

theorem packetCode_injective : Function.Injective packetCode.encode :=
  packetCode.encode_injective

/-- A source revision/tag may be retained as data; it does not certify acceptance. -/
def taggedPacketCode : Lossless (String × Payload) ℕ where
  encode := Encodable.encode
  decode := Encodable.decode
  roundtrip := Encodable.encodek

theorem stageLower_of_packetCode_readback (p decoded : Payload)
    (hread : packetCode.decode (packetCode.encode p) = some decoded)
    (hvalid : decoded.2.Accepted) : OddLiteralCofinal.StageLower p.1 :=
  stageLower_of_lossless_readback packetCode p decoded hread hvalid

/-- Every encoded packet is covered in a finite inventory by explicit rational heat.
This theorem deliberately makes no reference to `Accepted`. -/
theorem encoded_packet_heat_covered (p : Payload) :
    let n := packetCode.encode p
    0 < (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ReversibleCertificateHeat.uniform n).step
      (GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ReversibleCertificateHeat.seed n)
      ⟨n, Nat.lt_succ_self n⟩ := by
  exact GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ReversibleCertificateHeat.uniform_seed_pos
    (packetCode.encode p) ⟨packetCode.encode p, Nat.lt_succ_self _⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.OddStageCoding
