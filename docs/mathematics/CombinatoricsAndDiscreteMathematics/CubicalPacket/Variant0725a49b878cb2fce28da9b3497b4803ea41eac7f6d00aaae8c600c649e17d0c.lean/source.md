# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CubicalPacket.Variant0725a49b878cb2fce28da9b3497b4803ea41eac7f6d00aaae8c600c649e17d0c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca8262a02ad239dbabf83c4de73062f556f2b2f6` · SHA-256 `0725a49b878cb2fce28da9b3497b4803ea41eac7f6d00aaae8c600c649e17d0c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Cubical.BanachHilbert

/-!
# Authority-separated cubical ML packets

The structures here formalize the compilation boundary.  Exact bitfields and
exact incidence are carried unchanged; a numeric view and a learned prediction
are downstream values.  Surjectivity of a relative decoder is deliberately a
field to be discharged by each concrete compiler, not an axiom manufactured by
the packet type.
-/

namespace Mathematics.Embedding.CubicalPacket

open Mathematics.Cubical

/-- Exact, immutable combinatorial data supplied to a model. -/
structure ExactSkeleton (n beaconCount : Nat) where
  bitfield : Fin beaconCount → StableBitfield n
  /-- Authoritative sparse adjacency, independent of learned neighborhoods. -/
  edge : Finset (Fin beaconCount × Fin beaconCount)
  edge_exact :
    ∀ endpoints,
      endpoints ∈ edge ↔
        hammingCount (bitfield endpoints.1) (bitfield endpoints.2) = 1

/-- Exact rational realization used by serialized dynamic packets. -/
def rationalRealize {n : Nat} (b : StableBitfield n) : Fin n → ℚ :=
  fun i ↦ if b i then 1 else 0

/-- Exact rational squared point-to-beacon cost. -/
def rationalSquaredCost {n : Nat}
    (coordinate : Fin n → ℚ) (b : StableBitfield n) : ℚ :=
  ∑ i, (coordinate i - rationalRealize b i) ^ 2

/-- Exact dynamic coordinates and complete nearest-anchor relation. -/
structure ExactDynamics (n pointCount beaconCount : Nat)
    (skeleton : ExactSkeleton n beaconCount) where
  coordinate : Fin pointCount → Fin n → ℚ
  velocity : Fin pointCount → Fin n → ℚ
  nearest : Fin pointCount → Fin beaconCount → Prop
  nearest_complete :
    ∀ point beacon,
      nearest point beacon ↔
        ∀ other,
          rationalSquaredCost (coordinate point) (skeleton.bitfield beacon) ≤
            rationalSquaredCost (coordinate point) (skeleton.bitfield other)

/-- A packet keeps exact authority, a derived numeric view, and certificates in
separate fields. -/
structure MLPacket
    (n pointCount beaconCount : Nat)
    (NumericView Certificate : Type) where
  skeleton : ExactSkeleton n beaconCount
  dynamics : ExactDynamics n pointCount beaconCount skeleton
  numericView : NumericView
  certificate : Certificate

/-- Result of a learned consumer: the exact skeleton is paired with, rather
than replaced by, the learned output. -/
def consume
    {n pointCount beaconCount : Nat}
    {NumericView Certificate Prediction : Type}
    (packet : MLPacket n pointCount beaconCount NumericView Certificate)
    (network : NumericView → Prediction) :
    ExactSkeleton n beaconCount × Prediction :=
  (packet.skeleton, network packet.numericView)

/-- No choice of model parameters or prediction can mutate the exact skeleton. -/
@[simp]
theorem consume_preserves_skeleton
    {n pointCount beaconCount : Nat}
    {NumericView Certificate Prediction : Type}
    (packet : MLPacket n pointCount beaconCount NumericView Certificate)
    (network : NumericView → Prediction) :
    (consume packet network).1 = packet.skeleton :=
  rfl

/-- A concrete relative decoder must carry the full latent-coverage theorem. -/
structure CoveredDecoder (Latent Continuation : Type) where
  decode : Latent → Continuation
  coverage : Function.Surjective decode

theorem decode_surjective
    {Latent Continuation : Type}
    (decoder : CoveredDecoder Latent Continuation) :
    Function.Surjective decoder.decode :=
  decoder.coverage

end Mathematics.Embedding.CubicalPacket
```
