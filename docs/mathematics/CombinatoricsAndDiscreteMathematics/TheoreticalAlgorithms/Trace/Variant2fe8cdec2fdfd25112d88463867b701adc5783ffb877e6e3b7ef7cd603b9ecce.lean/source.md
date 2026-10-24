# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Trace.Variant2fe8cdec2fdfd25112d88463867b701adc5783ffb877e6e3b7ef7cd603b9ecce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00dfd0d4d871b0a521d8b18a93f3f424f9914574` · SHA-256 `2a808c1ba432582bed5cd8d675e140b8bf62c9d612dfcf5603ff3015a3b20208`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CharacterObservation.Variant018252e4505bf2dafbe644f77fb76b79d49a5755989f0452b0bc4ddb4bf984ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"018252e4505bf2dafbe644f77fb76b79d49a5755989f0452b0bc4ddb4bf984ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CharacterObservation.Variant018252e4505bf2dafbe644f77fb76b79d49a5755989f0452b0bc4ddb4bf984ff","mathematical_subject":"Computation.DataStructures","original_sha256":"018252e4505bf2dafbe644f77fb76b79d49a5755989f0452b0bc4ddb4bf984ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Runtime/Trace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Runtime.Manifest

/-!
# DHF1 runtime observations

The trace payload mirrors `crates/daf-universe-runtime/src/trace.rs`.  Decoding
checks all self-contained exact identities: output-vector digest, the optional
rank-one point-projection digest, spectral-grid/enclosure agreement, strict
spectral ordering, and closed authority tags.  Digests that require the
manifest or request are checked by the soundness layer.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CharacterObservation.Variant018252e4505bf2dafbe644f77fb76b79d49a5755989f0452b0bc4ddb4bf984ff

namespace DAF.Runtime.DHF1

structure CharacterObservation where
  orbit : WireString
  conductor : Nat
  parity : CharacterParity
  deriving DecidableEq, Repr

structure RuntimeTrace where
  manifestDigest : Digest
  terrainDigest : Digest
  operatorDigest : Digest
  characterRegistryDigest : Digest
  character : Option CharacterObservation
  spectralGrid : List Dyadic
  gammaEnclosures : List AdvisoryGammaEnclosure
  matrixDigest : Digest
  pointVector : SparseVector
  pointProjectionDigest : Option Digest
  foldPath : List WireString
  inputDigest : Digest
  outputDigest : Digest
  producer : WireString
  observedOutput : SparseVector
  deriving DecidableEq, Repr

private def parseCharacterObservation : Parser (Option CharacterObservation) := do
  let tag ← readByte
  match tag with
  | 0 => pure none
  | 1 =>
      let orbit ← parseString
      let conductor ← readU64
      let parityByte ← readByte
      let parity ← match parityByte with
        | 0 => pure .even
        | 1 => pure .odd
        | _ => failure
      ensure (orbit ≠ [] ∧ conductor ≠ 0)
      pure <| some { orbit, conductor, parity }
  | _ => failure

private def parseOptionalDigest : Parser (Option Digest) := do
  let tag ← readByte
  match tag with
  | 0 => pure none
  | 1 => some <$> readDigest
  | _ => failure

def Dyadic.lt (left right : Dyadic) : Prop :=
  left.numerator * (Int.ofNat 2) ^ right.exponent <
    right.numerator * (Int.ofNat 2) ^ left.exponent

instance (left right : Dyadic) : Decidable (left.lt right) := by
  unfold Dyadic.lt
  infer_instance

private def parseTracePayload : Parser RuntimeTrace := do
  let schemaVersion ← readU16
  ensure (schemaVersion = 1)
  let manifestDigest ← readDigest
  let terrainDigest ← readDigest
  let operatorDigest ← readDigest
  let characterRegistryDigest ← readDigest
  let character ← parseCharacterObservation
  let spectralCount ← parseCount
  let spectralGrid ← parseMany spectralCount parseDyadic
  let enclosureCount ← parseCount maxGammaEnclosures
  let gammaEnclosures ← parseMany enclosureCount parseGammaEnclosure
  let matrixDigest ← readDigest
  let pointVector ← parseVector
  let pointProjectionDigest ← parseOptionalDigest
  let foldCount ← parseCount maxFoldPath
  let foldPath ← parseMany foldCount parseString
  let inputDigest ← readDigest
  let outputDigest ← readDigest
  let producer ← parseString
  let (observedOutput, observedWire) ← withRaw parseVector
  let authority ← readByte
  ensure (authority = 0)
  ensure (sha256 observedWire = outputDigest)
  ensure (spectralGrid = gammaEnclosures.map (·.spectralParameter))
  ensure (spectralGrid.Pairwise Dyadic.lt)
  ensure (producer ≠ [] ∧ ∀ step ∈ foldPath, step ≠ [])
  if _unitPoint : pointVector.normSquared = 1 then
    match encodeSparseMatrix pointVector.rankOneProjection with
    | none => failure
    | some projectionWire =>
        ensure (pointProjectionDigest = some (sha256 projectionWire))
  else
    ensure (pointProjectionDigest = none)
  let trace : RuntimeTrace := {
    manifestDigest := manifestDigest
    terrainDigest := terrainDigest
    operatorDigest := operatorDigest
    characterRegistryDigest := characterRegistryDigest
    character := character
    spectralGrid := spectralGrid
    gammaEnclosures := gammaEnclosures
    matrixDigest := matrixDigest
    pointVector := pointVector
    pointProjectionDigest := pointProjectionDigest
    foldPath := foldPath
    inputDigest := inputDigest
    outputDigest := outputDigest
    producer := producer
    observedOutput := observedOutput }
  pure trace

def decodeTrace (wire : List UInt8) : Option RuntimeTrace := do
  let envelope ← decodeEnvelope .trace wire
  runExact parseTracePayload envelope.payload

/-- The complete byte submission checked at the foreign-runtime boundary. -/
structure RuntimeSubmission where
  manifestWire : List UInt8
  requestWire : List UInt8
  traceWire : List UInt8
  deriving DecidableEq, Repr

/-! Encoding support is intentionally limited to exact, non-Gamma test
submissions.  Transcendental records stay decoder-visible but cannot be turned
into accepted authority by this constructor. -/

private def encodeCharacterObservation
    (character : Option CharacterObservation) : Option (List UInt8) :=
  match character with
  | none => some [0]
  | some character => do
      let orbit ← encodeString character.orbit
      let conductor ← encodeNatChecked 8 character.conductor
      let parity : UInt8 := match character.parity with
        | .even => 0
        | .odd => 1
      pure ([1] ++ orbit ++ conductor ++ [parity])

private def encodeOptionalDigest : Option Digest → List UInt8
  | none => [0]
  | some digest => [1] ++ digest

def encodeTracePayload (trace : RuntimeTrace) : Option (List UInt8) := do
  -- Advisory Gamma numerics have no authoritative trace encoder.
  if trace.spectralGrid = [] ∧ trace.gammaEnclosures = [] then pure () else none
  let character ← encodeCharacterObservation trace.character
  let pointVector ← encodeSparseVector trace.pointVector
  let folds ← trace.foldPath.mapM encodeString
  let producer ← encodeString trace.producer
  let output ← encodeSparseVector trace.observedOutput
  if sha256 output = trace.outputDigest then pure () else none
  let expectedProjection ←
    if trace.pointVector.normSquared = 1 then do
      let projection ← encodeSparseMatrix trace.pointVector.rankOneProjection
      pure (some (sha256 projection))
    else pure none
  if trace.pointProjectionDigest = expectedProjection then pure () else none
  pure (natBytesBE 2 1 ++ trace.manifestDigest ++ trace.terrainDigest ++
    trace.operatorDigest ++ trace.characterRegistryDigest ++ character ++
    natBytesBE 4 0 ++ natBytesBE 4 0 ++ trace.matrixDigest ++ pointVector ++
    encodeOptionalDigest trace.pointProjectionDigest ++
    natBytesBE 4 trace.foldPath.length ++ folds.flatten ++
    trace.inputDigest ++ trace.outputDigest ++ producer ++ output ++ [0])

def encodeTrace (trace : RuntimeTrace) : Option (List UInt8) := do
  encodeEnvelope .trace (← encodeTracePayload trace)

end DAF.Runtime.DHF1
```
