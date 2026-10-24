# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CubicalPacket.Variant180e84389771ca3cdf631db247ed89ca8bff7254aa0c57ed1856797dff5e522d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e35867da1d3e9ff226dc92530fb1d08da33a8ae` · SHA-256 `7c16d7603b434675ce583eac3d38fa348b53abfe7de81c4a6eff136c14c9d208`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ExactSkeleton.Variant0725a49b878cb2fce28da9b3497b4803ea41eac7f6d00aaae8c600c649e17d0c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0725a49b878cb2fce28da9b3497b4803ea41eac7f6d00aaae8c600c649e17d0c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ExactSkeleton.Variant0725a49b878cb2fce28da9b3497b4803ea41eac7f6d00aaae8c600c649e17d0c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0725a49b878cb2fce28da9b3497b4803ea41eac7f6d00aaae8c600c649e17d0c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/staged-validation-6c1160a309e689e3/Mathematics/Embedding/CubicalPacket.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Cubical.BanachHilbert

/-!
# Authority-separated cubical ML packets

The structures here formalize the compilation boundary.  Exact bitfields and
exact incidence are carried unchanged; a numeric view and a learned prediction
are downstream values.  Surjectivity of a relative decoder is deliberately a
field to be discharged by each concrete compiler, not an axiom manufactured by
the packet type.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ExactSkeleton.Variant0725a49b878cb2fce28da9b3497b4803ea41eac7f6d00aaae8c600c649e17d0c

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
