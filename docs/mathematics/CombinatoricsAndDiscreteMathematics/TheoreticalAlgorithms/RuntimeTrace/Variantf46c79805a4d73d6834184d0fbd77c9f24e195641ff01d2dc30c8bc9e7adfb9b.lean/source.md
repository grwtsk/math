# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RuntimeTrace.Variantf46c79805a4d73d6834184d0fbd77c9f24e195641ff01d2dc30c8bc9e7adfb9b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21335f7a1d4390b4275d8018185ad90a3fdab6a6` · SHA-256 `f46c79805a4d73d6834184d0fbd77c9f24e195641ff01d2dc30c8bc9e7adfb9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Runtime.Soundness

/-!
# DHF1 mutation and correspondence tests

The positive sample is assembled from the same typed finite semantics checked
by `AcceptedTrace`; its observed vector is not consulted as an expected fixture.
Changing it without changing the formal matrix action makes acceptance fail.
-/

namespace DAF.Tests.RuntimeTrace

open DAF.Runtime.DHF1

set_option maxRecDepth 20000
set_option maxHeartbeats 2000000

def identityMatrix : SparseMatrix := {
  rows := 1
  columns := 1
  entries := [{ row := 0, column := 0, value := ExactComplex.one }] }

def pointVector : SparseVector := {
  dimension := 1
  entries := [{ index := 0, value := ⟨2, 0⟩ }] }

def matrixWire : List UInt8 :=
  (encodeSparseMatrix identityMatrix).getD []

def operatorId : WireString := [105, 100, 101, 110, 116, 105, 116, 121]

def manifest : RuntimeManifest := {
  snapshotDigest := List.replicate 32 1
  terrainDigest := List.replicate 32 2
  characterRegistryDigest := List.replicate 32 3
  terrain := { nodes := [], edges := [] }
  operators := [{
    id := operatorId
    matrixDigest := sha256 matrixWire
    matrix := identityMatrix }]
  characters := []
  gammaEnclosures := [] }

def manifestWire : List UInt8 :=
  (encodeManifest manifest).getD []

def request : ExecutionRequest := {
  expectedManifestDigest := sha256 manifestWire
  operatorId := operatorId
  input := pointVector
  characterProfileId := none
  foldPath := [] }

def requestWire : List UInt8 :=
  (encodeRequest request).getD []

def outputWire : List UInt8 :=
  (encodeSparseVector pointVector).getD []

def trace : RuntimeTrace := {
  manifestDigest := sha256 manifestWire
  terrainDigest := manifest.terrainDigest
  operatorDigest := sha256 (operatorId ++ sha256 matrixWire)
  characterRegistryDigest := manifest.characterRegistryDigest
  character := none
  spectralGrid := []
  gammaEnclosures := []
  matrixDigest := sha256 matrixWire
  pointVector := pointVector
  pointProjectionDigest := none
  foldPath := []
  inputDigest := sha256 requestWire
  outputDigest := sha256 outputWire
  producer := rustProducer
  observedOutput := pointVector }

def traceWire : List UInt8 :=
  (encodeTrace trace).getD []

def submission : RuntimeSubmission := {
  manifestWire := manifestWire
  requestWire := requestWire
  traceWire := traceWire }

/-- Test trust anchor selected independently of the submitted request and
trace.  Exact bytes are retained in addition to their SHA-256 commitment. -/
def canonicalCommitment : CanonicalManifestCommitment := {
  manifestWire := manifestWire
  manifestDigest := sha256 manifestWire
  snapshotDigest := manifest.snapshotDigest
  terrainDigest := manifest.terrainDigest
  characterRegistryDigest := manifest.characterRegistryDigest }

theorem sha256_empty_matches_standard :
    sha256 [] = [
      0xe3, 0xb0, 0xc4, 0x42, 0x98, 0xfc, 0x1c, 0x14,
      0x9a, 0xfb, 0xf4, 0xc8, 0x99, 0x6f, 0xb9, 0x24,
      0x27, 0xae, 0x41, 0xe4, 0x64, 0x9b, 0x93, 0x4c,
      0xa4, 0x95, 0x99, 0x1b, 0x78, 0x52, 0xb8, 0x55] := by
  decide

theorem sha256_abc_matches_standard :
    sha256 [97, 98, 99] = [
      0xba, 0x78, 0x16, 0xbf, 0x8f, 0x01, 0xcf, 0xea,
      0x41, 0x41, 0x40, 0xde, 0x5d, 0xae, 0x22, 0x23,
      0xb0, 0x03, 0x61, 0xa3, 0x96, 0x17, 0x7a, 0x9c,
      0xb4, 0x10, 0xff, 0x61, 0xf2, 0x00, 0x15, 0xad] := by
  decide

/-- A production-shaped exact runtime observation is accepted only after the
formal identity action is recomputed. -/
theorem exactSubmissionAccepted : AcceptedTrace submission := by
  native_decide

/-- Production acceptance adds exact canonical-manifest pinning to the same
finite recomputation. -/
theorem exactCanonicalSubmissionAccepted :
    CanonicallyAcceptedTrace canonicalCommitment submission := by
  native_decide

theorem exactCanonicalManifestBytesPinned :
    submission.manifestWire = canonicalCommitment.manifestWire :=
  canonicallyAcceptedTrace_exact_manifest_bytes exactCanonicalSubmissionAccepted

theorem exactSubmissionRepresents : Represents submission :=
  acceptedTrace_represents exactSubmissionAccepted

theorem exactOperationPreserved :
    ∃ manifest request trace operator formalOutput,
      decodeManifest submission.manifestWire = some manifest ∧
      decodeRequest submission.requestWire = some request ∧
      decodeTrace submission.traceWire = some trace ∧
      manifest.findOperator request.operatorId = some operator ∧
      operator.matrix.apply request.input = some formalOutput ∧
      trace.observedOutput = formalOutput :=
  acceptedTrace_operation_preserved exactSubmissionAccepted

/-! An alternate manifest can be wholly self-consistent and therefore pass the
bounded verifier.  It still cannot pass production acceptance against the
repository-selected commitment. -/

def alternateManifest : RuntimeManifest := {
  manifest with snapshotDigest := List.replicate 32 9 }

def alternateManifestWire : List UInt8 :=
  (encodeManifest alternateManifest).getD []

def alternateRequest : ExecutionRequest := {
  request with expectedManifestDigest := sha256 alternateManifestWire }

def alternateRequestWire : List UInt8 :=
  (encodeRequest alternateRequest).getD []

def alternateTrace : RuntimeTrace := {
  trace with
  manifestDigest := sha256 alternateManifestWire
  inputDigest := sha256 alternateRequestWire }

def alternateTraceWire : List UInt8 :=
  (encodeTrace alternateTrace).getD []

def alternateSubmission : RuntimeSubmission := {
  manifestWire := alternateManifestWire
  requestWire := alternateRequestWire
  traceWire := alternateTraceWire }

theorem alternateBundleIsSelfContainedAccepted :
    AcceptedTrace alternateSubmission := by
  native_decide

theorem alternateBundleRejectedByCanonicalCommitment :
    ¬ CanonicallyAcceptedTrace canonicalCommitment alternateSubmission := by
  native_decide

def wrongWireDigestCommitment : CanonicalManifestCommitment := {
  canonicalCommitment with manifestDigest := List.replicate 32 0 }

def wrongSnapshotCommitment : CanonicalManifestCommitment := {
  canonicalCommitment with snapshotDigest := List.replicate 32 0 }

def wrongTerrainCommitment : CanonicalManifestCommitment := {
  canonicalCommitment with terrainDigest := List.replicate 32 0 }

def wrongCharacterRegistryCommitment : CanonicalManifestCommitment := {
  canonicalCommitment with characterRegistryDigest := List.replicate 32 0 }

theorem rejects_wrong_committed_wire_digest :
    ¬ CanonicallyAcceptedTrace wrongWireDigestCommitment submission := by
  native_decide

theorem rejects_wrong_committed_snapshot_digest :
    ¬ CanonicallyAcceptedTrace wrongSnapshotCommitment submission := by
  native_decide

theorem rejects_wrong_committed_terrain_digest :
    ¬ CanonicallyAcceptedTrace wrongTerrainCommitment submission := by
  native_decide

theorem rejects_wrong_committed_character_registry_digest :
    ¬ CanonicallyAcceptedTrace wrongCharacterRegistryCommitment submission := by
  native_decide

def badMagic : List UInt8 := manifestWire.set 0 0
def badVersion : List UInt8 := manifestWire.set 5 2
def unknownTag : List UInt8 := manifestWire.set 6 255
def badReserved : List UInt8 := manifestWire.set 7 1
def badPayloadDigest : List UInt8 := manifestWire.set 12 255
def trailingByte : List UInt8 := manifestWire ++ [0]
def truncatedFrame : List UInt8 := manifestWire.take (manifestWire.length - 1)
def excessiveDeclaredPayload : List UInt8 :=
  magic ++ natBytesBE 2 1 ++ [FrameTag.manifest.byte, 0] ++
    natBytesBE 4 (maxFrameBytes - frameOverhead + 1) ++ List.replicate 32 0

theorem rejects_bad_magic : decodeManifest badMagic = none := by native_decide
theorem rejects_bad_version : decodeManifest badVersion = none := by native_decide
theorem rejects_unknown_tag : decodeManifest unknownTag = none := by native_decide
theorem rejects_reserved_byte : decodeManifest badReserved = none := by native_decide
theorem rejects_digest_mismatch : decodeManifest badPayloadDigest = none := by native_decide
theorem rejects_trailing_byte : decodeManifest trailingByte = none := by native_decide
theorem rejects_truncation : decodeManifest truncatedFrame = none := by native_decide
theorem rejects_excessive_declared_payload :
    decodeManifest excessiveDeclaredPayload = none := by native_decide

/-- Mutating the observed output and recomputing its local frame checksum still
cannot bless the result, because acceptance recomputes the matrix action. -/
def wrongOutput : SparseVector := {
  dimension := 1
  entries := [{ index := 0, value := ⟨3, 0⟩ }] }

def wrongOutputWire : List UInt8 :=
  (encodeSparseVector wrongOutput).getD []

def selfConsistentButWrongTrace : RuntimeTrace := {
  trace with
  outputDigest := sha256 wrongOutputWire
  observedOutput := wrongOutput }

def wrongSubmission : RuntimeSubmission := {
  submission with
  traceWire := (encodeTrace selfConsistentButWrongTrace).getD [] }

theorem changed_expected_value_cannot_bless_runtime :
    ¬ AcceptedTrace wrongSubmission := by
  native_decide

end DAF.Tests.RuntimeTrace
```
