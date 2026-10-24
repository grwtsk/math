# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Manifest.Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a430afb0a6b8588b6d59739e2a0deb5402ed498` · SHA-256 `7785d57711b2697eeb684ba40d0dc2048f20d30009186aaefe58aa439576105a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SHAState.Variant1bdc25c01cee27dfc8ad418e7997060e16d8bb6b110ea4a7df04c97d6549df26","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1bdc25c01cee27dfc8ad418e7997060e16d8bb6b110ea4a7df04c97d6549df26","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SHAState.Variant1bdc25c01cee27dfc8ad418e7997060e16d8bb6b110ea4a7df04c97d6549df26","mathematical_subject":"Computation.DataStructures","original_sha256":"1bdc25c01cee27dfc8ad418e7997060e16d8bb6b110ea4a7df04c97d6549df26","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Runtime/Manifest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Rat.Defs

/-!
# Closed DHF1 manifests and exact finite wire semantics

This module mirrors the dependency-free Rust `DHF1` envelope and the exact
finite rational/sparse data admitted by `daf-universe-runtime`.  SHA-256 is
implemented directly over the received bytes, so envelope acceptance does not
delegate digest authority to an unchecked host function.

The runtime manifest retains advisory Gamma intervals as data.  Their presence
is not mathematical evidence; `DAF.Runtime.DHF1.AcceptedTrace` (defined in the
soundness layer) excludes them from authoritative finite-operation acceptance.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SHAState.Variant1bdc25c01cee27dfc8ad418e7997060e16d8bb6b110ea4a7df04c97d6549df26

namespace DAF.Runtime.DHF1

abbrev Digest := List UInt8
abbrev WireString := List UInt8

def maxFrameBytes : Nat := 16 * 1024 * 1024
def frameOverhead : Nat := 44
def maxStringBytes : Nat := 16 * 1024
def maxSequenceItems : Nat := 1000000
def maxFoldPath : Nat := 16384
def maxOperators : Nat := 100000
def maxCharacterProfiles : Nat := 100000
def maxGammaEnclosures : Nat := 1000000
def maxTerrainNodes : Nat := 1000000
def maxTerrainEdges : Nat := 2000000
def maxFiniteDimension : Nat := 1000000

/-! ## Executable SHA-256 -/

private structure SHAState where
  a : UInt32
  b : UInt32
  c : UInt32
  d : UInt32
  e : UInt32
  f : UInt32
  g : UInt32
  h : UInt32

private def initialSHAState : SHAState where
  a := 0x6a09e667
  b := 0xbb67ae85
  c := 0x3c6ef372
  d := 0xa54ff53a
  e := 0x510e527f
  f := 0x9b05688c
  g := 0x1f83d9ab
  h := 0x5be0cd19

private def roundConstants : Array UInt32 := #[
  0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5,
  0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
  0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3,
  0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
  0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc,
  0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
  0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7,
  0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
  0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13,
  0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
  0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3,
  0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
  0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5,
  0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
  0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208,
  0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2]

private def xor3 (x y z : UInt32) : UInt32 := (x.xor y).xor z

private def rotateRight (x : UInt32) (n : Nat) : UInt32 :=
  (x.shiftRight (UInt32.ofNat n)).lor
    (x.shiftLeft (UInt32.ofNat (32 - n)))

private def bigSigma0 (x : UInt32) : UInt32 :=
  xor3 (rotateRight x 2) (rotateRight x 13) (rotateRight x 22)

private def bigSigma1 (x : UInt32) : UInt32 :=
  xor3 (rotateRight x 6) (rotateRight x 11) (rotateRight x 25)

private def smallSigma0 (x : UInt32) : UInt32 :=
  xor3 (rotateRight x 7) (rotateRight x 18)
    (x.shiftRight (UInt32.ofNat 3))

private def smallSigma1 (x : UInt32) : UInt32 :=
  xor3 (rotateRight x 17) (rotateRight x 19)
    (x.shiftRight (UInt32.ofNat 10))

private def choose (x y z : UInt32) : UInt32 :=
  (x.land y).xor (x.complement.land z)

private def majority (x y z : UInt32) : UInt32 :=
  xor3 (x.land y) (x.land z) (y.land z)

private def wordOfBytes (bytes : List UInt8) : UInt32 :=
  bytes.foldl (fun word byte =>
    word.shiftLeft (UInt32.ofNat 8) + byte.toUInt32) 0

private def initialSchedule (block : List UInt8) : Array UInt32 :=
  ((block.toChunks 4).take 16).map wordOfBytes |>.toArray

private def extendSchedule : Nat → Nat → Array UInt32 → Array UInt32
  | 0, _, schedule => schedule
  | fuel + 1, index, schedule =>
      let next := schedule[index - 16]! +
        smallSigma0 schedule[index - 15]! +
        schedule[index - 7]! + smallSigma1 schedule[index - 2]!
      extendSchedule fuel (index + 1) (schedule.push next)

private def runRounds (schedule : Array UInt32) :
    Nat → Nat → SHAState → SHAState
  | 0, _, state => state
  | fuel + 1, index, state =>
      let temporary1 := state.h + bigSigma1 state.e +
        choose state.e state.f state.g + roundConstants[index]! +
        schedule[index]!
      let temporary2 := bigSigma0 state.a +
        majority state.a state.b state.c
      runRounds schedule fuel (index + 1) {
        a := temporary1 + temporary2
        b := state.a
        c := state.b
        d := state.c
        e := state.d + temporary1
        f := state.e
        g := state.f
        h := state.g }

private def compress (state : SHAState) (block : List UInt8) : SHAState :=
  let schedule := extendSchedule 48 16 (initialSchedule block)
  let result := runRounds schedule 64 0 state
  { a := state.a + result.a
    b := state.b + result.b
    c := state.c + result.c
    d := state.d + result.d
    e := state.e + result.e
    f := state.f + result.f
    g := state.g + result.g
    h := state.h + result.h }

def natBytesBE (width value : Nat) : List UInt8 :=
  (List.range width).map fun index =>
    UInt8.ofNat ((value / (256 ^ (width - 1 - index))) % 256)

private def padSHA256 (bytes : List UInt8) : List UInt8 :=
  let zeroCount := (56 + 64 - ((bytes.length + 1) % 64)) % 64
  bytes ++ [0x80] ++ List.replicate zeroCount 0 ++
    natBytesBE 8 (bytes.length * 8)

private def wordBytes (word : UInt32) : List UInt8 :=
  natBytesBE 4 word.toNat

/-- SHA-256 over an exact byte list, matching the Rust frame implementation. -/
def sha256 (bytes : List UInt8) : Digest :=
  let state := (padSHA256 bytes).toChunks 64 |>.foldl compress initialSHAState
  [state.a, state.b, state.c, state.d,
    state.e, state.f, state.g, state.h].flatMap wordBytes

/-! ## Closed envelope decoder -/

inductive FrameTag where
  | manifest
  | request
  | trace
  deriving DecidableEq, Repr

def FrameTag.byte : FrameTag → UInt8
  | .manifest => 1
  | .request => 2
  | .trace => 3

def decodeFrameTag : UInt8 → Option FrameTag
  | 1 => some .manifest
  | 2 => some .request
  | 3 => some .trace
  | _ => none

structure Cursor where
  remaining : List UInt8

abbrev Parser (α : Type) := StateT Cursor Option α

def failure {α : Type} : Parser α := fun _ => none

def ensure (condition : Prop) [Decidable condition] : Parser Unit :=
  if condition then pure () else failure

def readByte : Parser UInt8 := do
  let cursor ← get
  match cursor.remaining with
  | [] => failure
  | byte :: remaining =>
      set ({ remaining := remaining } : Cursor)
      pure byte

def readBytes (count : Nat) : Parser (List UInt8) := do
  let cursor ← get
  ensure (count ≤ cursor.remaining.length)
  let bytes := cursor.remaining.take count
  set ({ remaining := cursor.remaining.drop count } : Cursor)
  pure bytes

def readNatBE (width : Nat) : Parser Nat := do
  let bytes ← readBytes width
  pure <| bytes.foldl (fun value byte => value * 256 + byte.toNat) 0

def readU16 : Parser Nat := readNatBE 2
def readU32 : Parser Nat := readNatBE 4
def readU64 : Parser Nat := readNatBE 8
def readDigest : Parser Digest := readBytes 32

def withRaw {α : Type} (parser : Parser α) :
    Parser (α × List UInt8) := do
  let before ← get
  let value ← parser
  let after ← get
  let consumed := before.remaining.length - after.remaining.length
  pure (value, before.remaining.take consumed)

def runExact {α : Type} (parser : Parser α)
    (bytes : List UInt8) : Option α := do
  let (value, cursor) ← parser.run { remaining := bytes }
  if cursor.remaining.isEmpty then some value else none

structure Envelope where
  tag : FrameTag
  payload : List UInt8
  payloadDigest : Digest
  deriving DecidableEq, Repr

def magic : List UInt8 := [68, 72, 70, 49]

/-- Decode a complete DHF1 frame.  The decoder rejects alternate magic,
versions, unknown or unexpected tags, a nonzero reserved byte, excessive
lengths, truncation, trailing bytes, and SHA-256 mismatch. -/
def decodeEnvelope (expected : FrameTag) (wire : List UInt8) : Option Envelope :=
  if wire.length > maxFrameBytes then none else
  runExact (do
    let receivedMagic ← readBytes 4
    ensure (receivedMagic = magic)
    let version ← readU16
    ensure (version = 1)
    let tagByte ← readByte
    let tag ← match decodeFrameTag tagByte with
      | some value => pure value
      | none => failure
    ensure (tag = expected)
    let reserved ← readByte
    ensure (reserved = 0)
    let payloadLength ← readU32
    ensure (payloadLength ≤ maxFrameBytes - frameOverhead)
    let payload ← readBytes payloadLength
    let payloadDigest ← readDigest
    ensure (sha256 payload = payloadDigest)
    pure { tag, payload, payloadDigest }) wire

/-- Encode one canonical frame.  This is used by kernel-checked parser tests;
runtime observations are still accepted only through formal recomputation. -/
def encodeEnvelope (tag : FrameTag) (payload : List UInt8) : Option (List UInt8) :=
  if frameOverhead + payload.length > maxFrameBytes then none else
  some <| magic ++ natBytesBE 2 1 ++ [tag.byte, 0] ++
    natBytesBE 4 payload.length ++ payload ++ sha256 payload

/-! ## Strings and exact finite arithmetic -/

private def continuation (byte : UInt8) : Bool :=
  0x80 ≤ byte && byte ≤ 0xbf

private def validUtf8 : List UInt8 → Bool
  | [] => true
  | byte :: rest =>
      if byte ≤ 0x7f then validUtf8 rest else
      match rest with
      | second :: tail =>
          if 0xc2 ≤ byte && byte ≤ 0xdf && continuation second then
            validUtf8 tail
          else
            match tail with
            | third :: tail3 =>
                let ordinary3 :=
                  ((0xe1 ≤ byte && byte ≤ 0xec) ||
                    (0xee ≤ byte && byte ≤ 0xef)) &&
                  continuation second && continuation third
                let edge3 :=
                  (byte = 0xe0 && 0xa0 ≤ second && second ≤ 0xbf &&
                    continuation third) ||
                  (byte = 0xed && 0x80 ≤ second && second ≤ 0x9f &&
                    continuation third)
                if ordinary3 || edge3 then validUtf8 tail3 else
                  match tail3 with
                  | fourth :: tail4 =>
                      let ordinary4 :=
                        0xf1 ≤ byte && byte ≤ 0xf3 &&
                        continuation second && continuation third &&
                        continuation fourth
                      let edge4 :=
                        (byte = 0xf0 && 0x90 ≤ second && second ≤ 0xbf &&
                          continuation third && continuation fourth) ||
                        (byte = 0xf4 && 0x80 ≤ second && second ≤ 0x8f &&
                          continuation third && continuation fourth)
                      if ordinary4 || edge4 then validUtf8 tail4 else false
                  | _ => false
            | _ => false
      | _ => false
termination_by bytes => bytes.length

def parseString (maximum : Nat := maxStringBytes) : Parser WireString := do
  let length ← readU32
  ensure (length ≤ maximum)
  let bytes ← readBytes length
  ensure (validUtf8 bytes = true)
  pure bytes

def parseCount (maximum : Nat := maxSequenceItems) : Parser Nat := do
  let count ← readU32
  ensure (count ≤ maximum)
  pure count

def parseMany {α : Type} : Nat → Parser α → Parser (List α)
  | 0, _ => pure []
  | count + 1, parser => do
      let head ← parser
      let tail ← parseMany count parser
      pure (head :: tail)

private def decodeI64 (value : Nat) : Int :=
  if value < 2 ^ 63 then Int.ofNat value
  else Int.ofNat value - Int.ofNat (2 ^ 64)

private def parseI64 : Parser Int := decodeI64 <$> readU64

private def parseRational : Parser Rat := do
  let numerator ← parseI64
  let denominator ← readU64
  if denominatorZero : denominator = 0 then failure else
    let value := Rat.normalize numerator denominator denominatorZero
    ensure (value.num = numerator ∧ value.den = denominator)
    pure value

structure ExactComplex where
  re : Rat
  im : Rat
  deriving DecidableEq, Repr

namespace ExactComplex

def zero : ExactComplex := ⟨0, 0⟩
def one : ExactComplex := ⟨1, 0⟩
def conj (value : ExactComplex) : ExactComplex := ⟨value.re, -value.im⟩
def add (left right : ExactComplex) : ExactComplex :=
  ⟨left.re + right.re, left.im + right.im⟩
def mul (left right : ExactComplex) : ExactComplex :=
  ⟨left.re * right.re - left.im * right.im,
    left.re * right.im + left.im * right.re⟩
def normSquared (value : ExactComplex) : Rat :=
  value.re * value.re + value.im * value.im

end ExactComplex

private def parseComplex : Parser ExactComplex := do
  pure ⟨← parseRational, ← parseRational⟩

structure Dyadic where
  numerator : Int
  exponent : Nat
  deriving DecidableEq, Repr

def parseDyadic : Parser Dyadic := do
  let numerator ← parseI64
  let exponent ← readU32
  ensure (exponent ≤ 62)
  ensure ((numerator = 0 ∧ exponent = 0) ∨
    (numerator ≠ 0 ∧ (exponent = 0 ∨ numerator % 2 ≠ 0)))
  pure { numerator, exponent }

structure VectorEntry where
  index : Nat
  value : ExactComplex
  deriving DecidableEq, Repr

structure SparseVector where
  dimension : Nat
  entries : List VectorEntry
  deriving DecidableEq, Repr

def SparseVector.Valid (vector : SparseVector) : Prop :=
  vector.dimension ≤ maxFiniteDimension ∧
  vector.entries.length ≤ maxSequenceItems ∧
  vector.entries.Pairwise (fun left right => left.index < right.index) ∧
  ∀ entry ∈ vector.entries,
    entry.index < vector.dimension ∧ entry.value ≠ ExactComplex.zero

instance (vector : SparseVector) : Decidable vector.Valid := by
  unfold SparseVector.Valid
  infer_instance

private def parseVectorEntry : Parser VectorEntry := do
  let index ← readU32
  let value ← parseComplex
  pure { index, value }

def parseVector : Parser SparseVector := do
  let dimension ← readU32
  let count ← parseCount
  let entries ← parseMany count parseVectorEntry
  let vector := { dimension, entries }
  ensure vector.Valid
  pure vector

structure MatrixEntry where
  row : Nat
  column : Nat
  value : ExactComplex
  deriving DecidableEq, Repr

structure SparseMatrix where
  rows : Nat
  columns : Nat
  entries : List MatrixEntry
  deriving DecidableEq, Repr

def SparseMatrix.Valid (matrix : SparseMatrix) : Prop :=
  matrix.rows ≤ maxFiniteDimension ∧
  matrix.columns ≤ maxFiniteDimension ∧
  matrix.entries.length ≤ maxSequenceItems ∧
  matrix.entries.Pairwise (fun left right =>
    left.row < right.row ∨
      (left.row = right.row ∧ left.column < right.column)) ∧
  (∀ entry ∈ matrix.entries,
    entry.row < matrix.rows ∧ entry.column < matrix.columns ∧
      entry.value ≠ ExactComplex.zero)

instance (matrix : SparseMatrix) : Decidable matrix.Valid := by
  unfold SparseMatrix.Valid
  infer_instance

private def parseMatrixEntry : Parser MatrixEntry := do
  let row ← readU32
  let column ← readU32
  let value ← parseComplex
  pure { row, column, value }

private def parseMatrix : Parser SparseMatrix := do
  let rows ← readU32
  let columns ← readU32
  let count ← parseCount
  let entries ← parseMany count parseMatrixEntry
  let matrix := { rows, columns, entries }
  ensure matrix.Valid
  pure matrix

def encodeNatChecked (width value : Nat) : Option (List UInt8) :=
  if value < 256 ^ width then some (natBytesBE width value) else none

private def encodeI64 (value : Int) : Option (List UInt8) :=
  if _lower : -(Int.ofNat (2 ^ 63)) ≤ value then
    if _upper : value < Int.ofNat (2 ^ 63) then
      let raw := if value < 0 then
        Int.toNat (value + Int.ofNat (2 ^ 64)) else value.toNat
      some (natBytesBE 8 raw)
    else none
  else none

private def encodeRational (value : Rat) : Option (List UInt8) := do
  let numerator ← encodeI64 value.num
  let denominator ← encodeNatChecked 8 value.den
  pure (numerator ++ denominator)

private def encodeComplex (value : ExactComplex) : Option (List UInt8) := do
  pure ((← encodeRational value.re) ++ (← encodeRational value.im))

def encodeSparseVector (vector : SparseVector) : Option (List UInt8) := do
  if _valid : vector.Valid then pure () else none
  let dimension ← encodeNatChecked 4 vector.dimension
  let count ← encodeNatChecked 4 vector.entries.length
  let entries ← vector.entries.mapM fun entry => do
    pure ((← encodeNatChecked 4 entry.index) ++ (← encodeComplex entry.value))
  pure (dimension ++ count ++ entries.flatten)

def encodeSparseMatrix (matrix : SparseMatrix) : Option (List UInt8) := do
  if _valid : matrix.Valid then pure () else none
  let rows ← encodeNatChecked 4 matrix.rows
  let columns ← encodeNatChecked 4 matrix.columns
  let count ← encodeNatChecked 4 matrix.entries.length
  let entries ← matrix.entries.mapM fun entry => do
    pure ((← encodeNatChecked 4 entry.row) ++
      (← encodeNatChecked 4 entry.column) ++
      (← encodeComplex entry.value))
  pure (rows ++ columns ++ count ++ entries.flatten)

/-! ## Exact finite operation -/

def SparseVector.valueAt (vector : SparseVector) (index : Nat) : ExactComplex :=
  vector.entries.foldl (fun result entry =>
    if entry.index = index then entry.value else result) ExactComplex.zero

def SparseMatrix.apply (matrix : SparseMatrix)
    (vector : SparseVector) : Option SparseVector := do
  if _dimensions : matrix.columns = vector.dimension then pure () else none
  let entries := (List.range matrix.rows).filterMap fun row =>
    let value := matrix.entries.foldl (fun result entry =>
      if entry.row = row then
        ExactComplex.add result
          (ExactComplex.mul entry.value (vector.valueAt entry.column))
      else result) ExactComplex.zero
    if value = ExactComplex.zero then none else some { index := row, value }
  let output := { dimension := matrix.rows, entries }
  if _valid : output.Valid then some output else none

def SparseVector.normSquared (vector : SparseVector) : Rat :=
  vector.entries.foldl
    (fun total entry => total + entry.value.normSquared) 0

def SparseVector.rankOneProjection (vector : SparseVector) : SparseMatrix :=
  { rows := vector.dimension
    columns := vector.dimension
    entries := vector.entries.flatMap fun left =>
      vector.entries.filterMap fun right =>
        let value := ExactComplex.mul left.value right.value.conj
        if value = ExactComplex.zero then none else
          some { row := left.index, column := right.index, value } }

/-! ## Manifest payload -/

structure TerrainNode where
  id : WireString
  sourceDigest : Digest
  deriving DecidableEq, Repr

structure TerrainEdge where
  source : WireString
  target : WireString
  deriving DecidableEq, Repr

structure Terrain where
  nodes : List TerrainNode
  edges : List TerrainEdge
  deriving DecidableEq, Repr

def Terrain.Valid (terrain : Terrain) : Prop :=
  terrain.nodes.Pairwise (fun left right => left.id < right.id) ∧
  terrain.edges.Pairwise (fun left right =>
    left.source < right.source ∨
      (left.source = right.source ∧ left.target < right.target)) ∧
  (∀ edge ∈ terrain.edges,
    (∃ node ∈ terrain.nodes, node.id = edge.source) ∧
    (∃ node ∈ terrain.nodes, node.id = edge.target))

instance (terrain : Terrain) : Decidable terrain.Valid := by
  unfold Terrain.Valid
  infer_instance

private def parseTerrain : Parser Terrain := do
  let nodeCount ← parseCount maxTerrainNodes
  let nodes ← parseMany nodeCount do
    let id ← parseString
    let sourceDigest ← readDigest
    pure { id, sourceDigest }
  let edgeCount ← parseCount maxTerrainEdges
  let edges ← parseMany edgeCount do
    let source ← parseString
    let target ← parseString
    pure { source, target }
  let terrain := { nodes, edges }
  ensure terrain.Valid
  pure terrain

structure NamedOperator where
  id : WireString
  matrixDigest : Digest
  matrix : SparseMatrix
  deriving DecidableEq, Repr

private def parseNamedOperator : Parser NamedOperator := do
  let id ← parseString
  ensure (id ≠ [])
  let matrixDigest ← readDigest
  let (matrix, raw) ← withRaw parseMatrix
  ensure (sha256 raw = matrixDigest)
  pure { id, matrixDigest, matrix }

inductive CharacterParity where
  | even
  | odd
  deriving DecidableEq, Repr

structure CharacterProfile where
  id : WireString
  conjugacyOrbit : WireString
  conductor : Nat
  parity : CharacterParity
  deriving DecidableEq, Repr

private def parseCharacterProfile : Parser CharacterProfile := do
  let id ← parseString
  let conjugacyOrbit ← parseString
  let conductor ← readU64
  ensure (id ≠ [] ∧ conjugacyOrbit ≠ [] ∧ conductor ≠ 0)
  let parityByte ← readByte
  let parity ← match parityByte with
    | 0 => pure .even
    | 1 => pure .odd
    | _ => failure
  let primitiveEvidence ← readByte
  ensure (primitiveEvidence = 1)
  pure { id, conjugacyOrbit, conductor, parity }

structure ClosedInterval where
  lower : Rat
  upper : Rat
  deriving DecidableEq, Repr

structure AdvisoryGammaEnclosure where
  spectralParameter : Dyadic
  phaseGradient : ClosedInterval
  declaredAbsoluteError : Rat
  method : WireString
  deriving DecidableEq, Repr

def parseGammaEnclosure : Parser AdvisoryGammaEnclosure := do
  let spectralParameter ← parseDyadic
  let lower ← parseRational
  let upper ← parseRational
  let declaredAbsoluteError ← parseRational
  let method ← parseString
  let authority ← readByte
  ensure (lower ≤ upper ∧ 0 ≤ declaredAbsoluteError ∧ method ≠ [] ∧
    upper - lower ≤ 2 * declaredAbsoluteError ∧ authority = 0)
  let phaseGradient : ClosedInterval := { lower, upper }
  let enclosure : AdvisoryGammaEnclosure := {
    spectralParameter := spectralParameter
    phaseGradient := phaseGradient
    declaredAbsoluteError := declaredAbsoluteError
    method := method }
  pure enclosure

structure RuntimeManifest where
  snapshotDigest : Digest
  terrainDigest : Digest
  characterRegistryDigest : Digest
  terrain : Terrain
  operators : List NamedOperator
  characters : List CharacterProfile
  gammaEnclosures : List AdvisoryGammaEnclosure
  deriving DecidableEq, Repr

def RuntimeManifest.Valid (manifest : RuntimeManifest) : Prop :=
  manifest.operators.Pairwise (fun left right => left.id < right.id) ∧
  manifest.characters.Pairwise (fun left right => left.id < right.id) ∧
  manifest.gammaEnclosures.Pairwise (fun left right =>
    (left.spectralParameter.numerator *
      (Int.ofNat 2) ^ right.spectralParameter.exponent) <
    (right.spectralParameter.numerator *
      (Int.ofNat 2) ^ left.spectralParameter.exponent))

instance (manifest : RuntimeManifest) : Decidable manifest.Valid := by
  unfold RuntimeManifest.Valid
  infer_instance

private def parseManifestPayload : Parser RuntimeManifest := do
  let schemaVersion ← readU16
  ensure (schemaVersion = 1)
  let snapshotDigest ← readDigest
  let terrainDigest ← readDigest
  let characterRegistryDigest ← readDigest
  let terrain ← parseTerrain
  let operatorCount ← parseCount maxOperators
  let operators ← parseMany operatorCount parseNamedOperator
  let characterCount ← parseCount maxCharacterProfiles
  let characters ← parseMany characterCount parseCharacterProfile
  let gammaCount ← parseCount maxGammaEnclosures
  let gammaEnclosures ← parseMany gammaCount parseGammaEnclosure
  let manifest : RuntimeManifest := {
    snapshotDigest := snapshotDigest
    terrainDigest := terrainDigest
    characterRegistryDigest := characterRegistryDigest
    terrain := terrain
    operators := operators
    characters := characters
    gammaEnclosures := gammaEnclosures }
  ensure manifest.Valid
  pure manifest

def decodeManifest (wire : List UInt8) : Option RuntimeManifest := do
  let envelope ← decodeEnvelope .manifest wire
  runExact parseManifestPayload envelope.payload

def RuntimeManifest.findOperator (manifest : RuntimeManifest)
    (id : WireString) : Option NamedOperator :=
  manifest.operators.find? fun operator => operator.id = id

def RuntimeManifest.findCharacter (manifest : RuntimeManifest)
    (id : WireString) : Option CharacterProfile :=
  manifest.characters.find? fun character => character.id = id

/-! ## Request payload -/

structure ExecutionRequest where
  expectedManifestDigest : Digest
  operatorId : WireString
  input : SparseVector
  characterProfileId : Option WireString
  foldPath : List WireString
  deriving DecidableEq, Repr

private def parseOptionalString : Parser (Option WireString) := do
  let tag ← readByte
  match tag with
  | 0 => pure none
  | 1 => some <$> parseString
  | _ => failure

private def parseRequestPayload : Parser ExecutionRequest := do
  let schemaVersion ← readU16
  ensure (schemaVersion = 1)
  let expectedManifestDigest ← readDigest
  let operatorId ← parseString
  ensure (operatorId ≠ [])
  let input ← parseVector
  let characterProfileId ← parseOptionalString
  ensure (characterProfileId.all fun id => id ≠ [])
  let foldCount ← parseCount maxFoldPath
  let foldPath ← parseMany foldCount parseString
  ensure (∀ step ∈ foldPath, step ≠ [])
  let request : ExecutionRequest := {
    expectedManifestDigest := expectedManifestDigest
    operatorId := operatorId
    input := input
    characterProfileId := characterProfileId
    foldPath := foldPath }
  pure request

def decodeRequest (wire : List UInt8) : Option ExecutionRequest := do
  let envelope ← decodeEnvelope .request wire
  runExact parseRequestPayload envelope.payload

/-! The encoding helpers below are deliberately closed and are used only to
construct mutation-resistant kernel tests. -/

def encodeString (value : WireString) : Option (List UInt8) := do
  if value.length ≤ maxStringBytes ∧ validUtf8 value then pure () else none
  pure (natBytesBE 4 value.length ++ value)

private def encodeTerrain (terrain : Terrain) : Option (List UInt8) := do
  if _valid : terrain.Valid then pure () else none
  let nodes ← terrain.nodes.mapM fun node => do
    pure ((← encodeString node.id) ++ node.sourceDigest)
  let edges ← terrain.edges.mapM fun edge => do
    pure ((← encodeString edge.source) ++ (← encodeString edge.target))
  pure (natBytesBE 4 terrain.nodes.length ++ nodes.flatten ++
    natBytesBE 4 terrain.edges.length ++ edges.flatten)

private def encodeNamedOperator (operator : NamedOperator) : Option (List UInt8) := do
  let matrix ← encodeSparseMatrix operator.matrix
  if sha256 matrix = operator.matrixDigest then pure () else none
  pure ((← encodeString operator.id) ++ operator.matrixDigest ++ matrix)

private def encodeCharacter (character : CharacterProfile) : Option (List UInt8) := do
  let id ← encodeString character.id
  let orbit ← encodeString character.conjugacyOrbit
  let conductor ← encodeNatChecked 8 character.conductor
  let parity : UInt8 := match character.parity with
    | .even => 0
    | .odd => 1
  pure (id ++ orbit ++ conductor ++ [parity, 1])

def encodeManifestPayload (manifest : RuntimeManifest) : Option (List UInt8) := do
  if _valid : manifest.Valid then pure () else none
  let terrain ← encodeTerrain manifest.terrain
  let operators ← manifest.operators.mapM encodeNamedOperator
  let characters ← manifest.characters.mapM encodeCharacter
  -- Authoritative test manifests intentionally contain no advisory Gamma data.
  if manifest.gammaEnclosures = [] then pure () else none
  pure (natBytesBE 2 1 ++ manifest.snapshotDigest ++ manifest.terrainDigest ++
    manifest.characterRegistryDigest ++ terrain ++
    natBytesBE 4 manifest.operators.length ++ operators.flatten ++
    natBytesBE 4 manifest.characters.length ++ characters.flatten ++
    natBytesBE 4 0)

def encodeManifest (manifest : RuntimeManifest) : Option (List UInt8) := do
  encodeEnvelope .manifest (← encodeManifestPayload manifest)

def encodeRequestPayload (request : ExecutionRequest) : Option (List UInt8) := do
  let operatorId ← encodeString request.operatorId
  let input ← encodeSparseVector request.input
  let character ← match request.characterProfileId with
    | none => pure [0]
    | some id => pure ([1] ++ (← encodeString id))
  let folds ← request.foldPath.mapM encodeString
  pure (natBytesBE 2 1 ++ request.expectedManifestDigest ++ operatorId ++
    input ++ character ++ natBytesBE 4 request.foldPath.length ++ folds.flatten)

def encodeRequest (request : ExecutionRequest) : Option (List UInt8) := do
  encodeEnvelope .request (← encodeRequestPayload request)

end DAF.Runtime.DHF1
```
