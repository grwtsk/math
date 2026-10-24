# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Trace.Variant97a3b22c491265612999cfeaadd630a2d4416f8f0ad85ce6723b7d3f4357a0be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `712d1f5bbead423413b1ce63df8a5673b7c33af6` · SHA-256 `3a8a4424c912a597ee1b202cdaf10e44ceb4b6e9cf41bbea9b6b31d086b2990b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExactGram.Variant4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ExactGram.Variant4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265","mathematical_subject":"Computation.DataStructures","original_sha256":"4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Rhetorical/Runtime/Trace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Rhetorical.Kernel.FiniteGram
import DAF.Rhetorical.Kernel.Manifest
import DAF.Runtime.Manifest

/-!
# Checked RHT1 rhetorical-Gram traces

This module mirrors the exact-rational `RHT1` transport emitted by
`daf-rhetorical-hilbert`.  Acceptance is deliberately narrower than trusting
the producer: Lean checks the frame hash, canonical rational encodings, exact
Gram and factor hashes, an exact `L D L⁺` reconstruction, Hermitian symmetry,
nonnegative pivots, positive point norms, closed authority flags, and the
externally pinned kernel/manifest/source identities.

The soundness theorem relates accepted finite Gram entries to the arbitrary-
index formal kernel.  It does not claim that finite transport proves
completeness of the infinite completed space; that is supplied only by
`RhetoricalSpace`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExactGram.Variant4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265

namespace DAF.Rhetorical.Runtime.RHT1

open DAF.Runtime.DHF1

abbrev Digest := DAF.Runtime.DHF1.Digest
abbrev WireString := DAF.Runtime.DHF1.WireString
abbrev ExactComplex := DAF.Runtime.DHF1.ExactComplex

def maxDimension : Nat := 256
def maxRelationReports : Nat := 65536
def maxRhetoricalFrameBytes : Nat := 64 * 1024 * 1024
def frameOverhead : Nat := 43
def traceMagic : List UInt8 := [82, 72, 84, 49]
def problemMagic : List UInt8 := [82, 72, 80, 49]

private def decodeI64 (value : Nat) : Int :=
  if value < 2 ^ 63 then Int.ofNat value
  else Int.ofNat value - Int.ofNat (2 ^ 64)

private def parseI64 : Parser Int := decodeI64 <$> readU64

def parseRational : Parser Rat := do
  let numerator ← parseI64
  let denominator ← readU64
  if denominatorZero : denominator = 0 then DAF.Runtime.DHF1.failure else
    let value := Rat.normalize numerator denominator denominatorZero
    ensure (value.num = numerator ∧ value.den = denominator)
    pure value

def parseComplex : Parser ExactComplex := do
  pure ⟨← parseRational, ← parseRational⟩

private def encodeI64 (value : Int) : Option (List UInt8) :=
  if _lower : -(Int.ofNat (2 ^ 63)) ≤ value then
    if _upper : value < Int.ofNat (2 ^ 63) then
      let raw := if value < 0 then
        Int.toNat (value + Int.ofNat (2 ^ 64)) else value.toNat
      some (natBytesBE 8 raw)
    else none
  else none

def encodeRational (value : Rat) : Option (List UInt8) := do
  let numerator ← encodeI64 value.num
  pure (numerator ++ natBytesBE 8 value.den)

def encodeComplex (value : ExactComplex) : Option (List UInt8) := do
  pure ((← encodeRational value.re) ++ (← encodeRational value.im))

def exactComplexToComplex (value : ExactComplex) : ℂ :=
  ⟨(value.re : ℝ), (value.im : ℝ)⟩

structure ExactGram where
  dimension : Nat
  entries : List ExactComplex
  deriving DecidableEq, Repr

def ExactGram.Valid (gram : ExactGram) : Prop :=
  gram.dimension ≤ maxDimension ∧
    gram.entries.length = gram.dimension * gram.dimension

instance (gram : ExactGram) : Decidable gram.Valid := by
  unfold ExactGram.Valid
  infer_instance

def ExactGram.at (gram : ExactGram) (row column : Nat) : ExactComplex :=
  gram.entries.getD (row * gram.dimension + column) ExactComplex.zero

def ExactGram.Hermitian (gram : ExactGram) : Prop :=
  ∀ row, row < gram.dimension →
    ∀ column, column < gram.dimension →
      gram.at row column = ExactComplex.conj (gram.at column row)

instance (gram : ExactGram) : Decidable gram.Hermitian := by
  unfold ExactGram.Hermitian
  infer_instance

def ExactGram.encode (gram : ExactGram) : Option (List UInt8) := do
  if _valid : gram.Valid then pure () else none
  let entries ← gram.entries.mapM encodeComplex
  pure (natBytesBE 4 gram.dimension ++ entries.flatten)

def parseGram : Parser (ExactGram × List UInt8) := do
  withRaw do
    let dimension ← readU32
    ensure (dimension ≤ maxDimension)
    let entries ← parseMany (dimension * dimension) parseComplex
    let gram := { dimension, entries }
    ensure gram.Valid
    pure gram

structure ExactFactor where
  dimension : Nat
  rank : Nat
  diagonal : List Rat
  lower : List ExactComplex
  deriving DecidableEq, Repr

def ExactFactor.lowerAt (factor : ExactFactor)
    (row column : Nat) : ExactComplex :=
  factor.lower.getD (row * factor.dimension + column) ExactComplex.zero

def ExactFactor.Valid (factor : ExactFactor) : Prop :=
  factor.dimension ≤ maxDimension ∧
  factor.rank ≤ factor.dimension ∧
  factor.diagonal.length = factor.dimension ∧
  factor.lower.length = factor.dimension * factor.dimension ∧
  factor.rank = (factor.diagonal.filter (· ≠ 0)).length ∧
  (∀ pivot, pivot < factor.dimension →
    0 ≤ factor.diagonal.getD pivot 0) ∧
  (∀ row, row < factor.dimension →
    ∀ column, column < factor.dimension →
      if row = column then
        factor.lowerAt row column = ExactComplex.one
      else if row < column then
        factor.lowerAt row column = ExactComplex.zero
      else True)

instance (factor : ExactFactor) : Decidable factor.Valid := by
  unfold ExactFactor.Valid
  infer_instance

def scale (value : ExactComplex) (scalar : Rat) : ExactComplex :=
  ⟨value.re * scalar, value.im * scalar⟩

def ExactFactor.reconstructEntry (factor : ExactFactor)
    (row column : Nat) : ExactComplex :=
  (List.range factor.dimension).foldl (fun total coordinate =>
    ExactComplex.add total <|
      scale (ExactComplex.mul (factor.lowerAt row coordinate)
        (ExactComplex.conj (factor.lowerAt column coordinate)))
        (factor.diagonal.getD coordinate 0)) ExactComplex.zero

def ExactFactor.reconstruct (factor : ExactFactor) : ExactGram :=
  { dimension := factor.dimension
    entries := (List.range factor.dimension).flatMap fun row =>
      (List.range factor.dimension).map fun column =>
        factor.reconstructEntry row column }

def parseFactor : Parser (ExactFactor × List UInt8) := do
  withRaw do
    let dimension ← readU32
    let rank ← readU32
    ensure (dimension ≤ maxDimension ∧ rank ≤ dimension)
    let diagonal ← parseMany dimension parseRational
    let lower ← parseMany (dimension * dimension) parseComplex
    let factor := { dimension, rank, diagonal, lower }
    ensure factor.Valid
    pure factor

structure ManifestReference where
  offset : Nat
  length : Nat
  deriving DecidableEq, Repr

def parseReference : Parser ManifestReference := do
  pure ⟨← readU32, ← readU32⟩

def ManifestReference.resolve
    (reference : ManifestReference) (manifest : List UInt8) : Option (List UInt8) :=
  if reference.length = 0 then none
  else if reference.offset + reference.length ≤ manifest.length then
    some ((manifest.drop reference.offset).take reference.length)
  else none

def parseBool : Parser Bool := do
  match ← readByte with
  | 0 => pure false
  | 1 => pure true
  | _ => DAF.Runtime.DHF1.failure

structure PointReport where
  point : Nat
  activeIndex : Nat
  roleTag : Nat
  source : ManifestReference
  sourceDigest : Digest
  vectorDigest : Digest
  normSquared : Rat
  deriving DecidableEq, Repr

def parsePointReport : Parser PointReport := do
  ensure ((← readByte) = 0)
  let point ← readU32
  let activeIndex ← readU32
  let roleTag ← readByte
  ensure (roleTag.toNat < 7)
  let source ← parseReference
  let sourceDigest ← readDigest
  let vectorDigest ← readDigest
  let normSquared ← parseRational
  pure (PointReport.mk point activeIndex roleTag.toNat source
    sourceDigest vectorDigest normSquared)

structure NormalizedRealReport where
  numerator : Rat
  denominatorSquared : Rat
  deriving DecidableEq, Repr

def parseNormalizedRealReport : Parser NormalizedRealReport := do
  let numerator ← parseRational
  let denominatorSquared ← parseRational
  ensure (0 < denominatorSquared ∧
    numerator * numerator ≤ denominatorSquared)
  pure { numerator, denominatorSquared }

structure SimilarityReport where
  left : Nat
  right : Nat
  innerProduct : ExactComplex
  normalizedMagnitudeSquared : Rat
  normalizedRe : NormalizedRealReport
  deriving DecidableEq, Repr

def parseSimilarityReport : Parser SimilarityReport := do
  ensure ((← readByte) = 1)
  let left ← readU32
  let right ← readU32
  let innerProduct ← parseComplex
  let normalizedMagnitudeSquared ← parseRational
  ensure (0 ≤ normalizedMagnitudeSquared ∧ normalizedMagnitudeSquared ≤ 1)
  let normalizedRe ← parseNormalizedRealReport
  pure { left, right, innerProduct, normalizedMagnitudeSquared, normalizedRe }

structure ImplicationReport where
  premise : Nat
  conclusion : Nat
  relation : ManifestReference
  relationDigest : Digest
  directedAffinity : NormalizedRealReport
  deriving DecidableEq, Repr

def parseImplicationReport : Parser ImplicationReport := do
  ensure ((← readByte) = 2)
  let premise ← readU32
  let conclusion ← readU32
  let relation ← parseReference
  let relationDigest ← readDigest
  ensure ((← readByte) = 0)
  let directedAffinity ← parseNormalizedRealReport
  pure { premise, conclusion, relation, relationDigest, directedAffinity }

def parseOptionalRational : Parser (Option Rat) := do
  match ← readByte with
  | 0 => pure none
  | 1 => some <$> parseRational
  | _ => DAF.Runtime.DHF1.failure

structure ExactOperator where
  dimension : Nat
  entries : List ExactComplex
  deriving DecidableEq, Repr

def ExactOperator.Valid (operator : ExactOperator) : Prop :=
  0 < operator.dimension ∧ operator.dimension ≤ maxDimension ∧
    operator.entries.length = operator.dimension * operator.dimension

instance (operator : ExactOperator) : Decidable operator.Valid := by
  unfold ExactOperator.Valid
  infer_instance

def ExactOperator.at (operator : ExactOperator) (row column : Nat) : ExactComplex :=
  operator.entries.getD (row * operator.dimension + column) ExactComplex.zero

def parseOperator : Parser ExactOperator := do
  let dimension ← readU32
  ensure (0 < dimension ∧ dimension ≤ maxDimension)
  let entries ← parseMany (dimension * dimension) parseComplex
  let operator := { dimension, entries }
  ensure operator.Valid
  pure operator

structure OppositionProfile where
  index : Nat
  operator : ExactOperator
  deriving DecidableEq, Repr

structure OppositionReport where
  positive : Nat
  negative : Nat
  profile : Option OppositionProfile
  innerProduct : ExactComplex
  normalizedRe : NormalizedRealReport
  exactAntipodes : Bool
  profileResidualSquared : Option Rat
  deriving DecidableEq, Repr

def parseOppositionReport : Parser OppositionReport := do
  ensure ((← readByte) = 3)
  let positive ← readU32
  let negative ← readU32
  let profile ← match ← readByte with
    | 0 => pure none
    | 1 => do
        let index ← readU32
        let operator ← parseOperator
        pure (some (OppositionProfile.mk index operator))
    | _ => DAF.Runtime.DHF1.failure
  let innerProduct ← parseComplex
  let normalizedRe ← parseNormalizedRealReport
  let exactAntipodes ← parseBool
  let profileResidualSquared ← parseOptionalRational
  ensure (profileResidualSquared.all (0 ≤ ·))
  pure (OppositionReport.mk positive negative profile innerProduct normalizedRe
    exactAntipodes profileResidualSquared)

structure AnalogyReport where
  sourceLeft : Nat
  sourceRight : Nat
  targetLeft : Nat
  targetRight : Nat
  equalDisplacements : Bool
  displacementResidualSquared : Rat
  normalizedAffinity : Option NormalizedRealReport
  deriving DecidableEq, Repr

def parseAnalogyReport : Parser AnalogyReport := do
  ensure ((← readByte) = 4)
  let sourceLeft ← readU32
  let sourceRight ← readU32
  let targetLeft ← readU32
  let targetRight ← readU32
  let equalDisplacements ← parseBool
  let displacementResidualSquared ← parseRational
  ensure (0 ≤ displacementResidualSquared)
  let normalizedAffinity ← match ← readByte with
    | 0 => pure none
    | 1 => some <$> parseNormalizedRealReport
    | _ => DAF.Runtime.DHF1.failure
  pure (AnalogyReport.mk sourceLeft sourceRight targetLeft targetRight
    equalDisplacements displacementResidualSquared normalizedAffinity)

structure ProblemPoint where
  roleTag : Nat
  source : ManifestReference
  deriving DecidableEq, Repr

structure PairQuery where
  left : Nat
  right : Nat
  deriving DecidableEq, Repr

structure ProblemImplication where
  premise : Nat
  conclusion : Nat
  relation : ManifestReference
  deriving DecidableEq, Repr

structure ProblemOpposition where
  positive : Nat
  negative : Nat
  profileIndex : Option Nat
  deriving DecidableEq, Repr

structure ProblemAnalogy where
  sourceLeft : Nat
  sourceRight : Nat
  targetLeft : Nat
  targetRight : Nat
  deriving DecidableEq, Repr

structure RuntimeProblem where
  activeIndices : List Nat
  rawGram : ExactGram
  points : List ProblemPoint
  oppositionProfiles : List ExactOperator
  similarities : List PairQuery
  implications : List ProblemImplication
  oppositions : List ProblemOpposition
  analogies : List ProblemAnalogy
  deriving DecidableEq, Repr

private def wordBase : Nat := 2 ^ 32

private def pairKey (query : PairQuery) : Nat :=
  query.left * wordBase + query.right

private def implicationKey (query : ProblemImplication) : Nat :=
  (((query.premise * wordBase + query.conclusion) * wordBase +
    query.relation.offset) * wordBase) + query.relation.length

private def oppositionKey (query : ProblemOpposition) : Nat :=
  let profile := match query.profileIndex with
    | none => 0
    | some index => wordBase + index
  (query.positive * wordBase + query.negative) * (2 * wordBase) + profile

private def analogyKey (query : ProblemAnalogy) : Nat :=
  (((query.sourceLeft * wordBase + query.sourceRight) * wordBase +
    query.targetLeft) * wordBase) + query.targetRight

def RuntimeProblem.Canonical (problem : RuntimeProblem) : Prop :=
  problem.activeIndices.Pairwise (· < ·) ∧
  problem.activeIndices.length = problem.rawGram.dimension ∧
  problem.points.length = problem.rawGram.dimension ∧
  (problem.oppositionProfiles.all fun profile =>
    profile.dimension == problem.rawGram.dimension) = true ∧
  (problem.oppositions.all fun query =>
    match query.profileIndex with
    | none => true
    | some index => decide (index < problem.oppositionProfiles.length)) = true ∧
  (problem.similarities.map pairKey).Pairwise (· < ·) ∧
  (problem.implications.map implicationKey).Pairwise (· < ·) ∧
  (problem.oppositions.map oppositionKey).Pairwise (· < ·) ∧
  (problem.analogies.map analogyKey).Pairwise (· < ·)

instance (problem : RuntimeProblem) : Decidable problem.Canonical := by
  unfold RuntimeProblem.Canonical
  infer_instance

def parseProblemPoint : Parser ProblemPoint := do
  let roleTag ← readByte
  ensure (roleTag.toNat < 7)
  pure ⟨roleTag.toNat, ← parseReference⟩

def parsePairQuery : Parser PairQuery := do
  pure ⟨← readU32, ← readU32⟩

def parseProblemImplication : Parser ProblemImplication := do
  pure ⟨← readU32, ← readU32, ← parseReference⟩

def parseProblemOpposition : Parser ProblemOpposition := do
  let positive ← readU32
  let negative ← readU32
  let profileIndex ← match ← readByte with
    | 0 => pure none
    | 1 => some <$> readU32
    | _ => DAF.Runtime.DHF1.failure
  pure ⟨positive, negative, profileIndex⟩

def parseProblemAnalogy : Parser ProblemAnalogy := do
  pure ⟨← readU32, ← readU32, ← readU32, ← readU32⟩

def parseProblemPayload : Parser RuntimeProblem := do
  ensure ((← readByte) = 0)
  let activeCount ← parseCount maxDimension
  let activeIndices ← parseMany activeCount readU32
  let (rawGram, _) ← parseGram
  let pointCount ← parseCount maxDimension
  let points ← parseMany pointCount parseProblemPoint
  let profileCount ← parseCount maxDimension
  let oppositionProfiles ← parseMany profileCount parseOperator
  let similarityCount ← parseCount maxRelationReports
  let similarities ← parseMany similarityCount parsePairQuery
  let implicationCount ← parseCount maxRelationReports
  let implications ← parseMany implicationCount parseProblemImplication
  let oppositionCount ← parseCount maxRelationReports
  let oppositions ← parseMany oppositionCount parseProblemOpposition
  let analogyCount ← parseCount maxRelationReports
  let analogies ← parseMany analogyCount parseProblemAnalogy
  let problem := RuntimeProblem.mk activeIndices rawGram points
    oppositionProfiles similarities implications oppositions analogies
  ensure problem.Canonical
  pure problem

structure RuntimeTrace where
  schemaVersion : Nat
  kernelId : WireString
  kernelDigest : Digest
  schemaDigest : Digest
  manifestDigest : Digest
  sourceDigest : Digest
  activeIndices : List Nat
  gram : ExactGram
  factor : ExactFactor
  points : List PointReport
  similarities : List SimilarityReport
  implications : List ImplicationReport
  oppositions : List OppositionReport
  analogies : List AnalogyReport
  deriving DecidableEq, Repr

def parseTracePayload : Parser RuntimeTrace := do
  let schemaVersion ← readU32
  ensure (schemaVersion = 2)
  let kernelId ← parseString
  let kernelDigest ← readDigest
  let schemaDigest ← readDigest
  let manifestDigest ← readDigest
  let sourceDigest ← readDigest
  ensure ((← readByte) = 0)
  let epsilon ← parseRational
  ensure (epsilon = (1 : Rat) / 1024)
  let activeCount ← parseCount maxDimension
  let activeIndices ← parseMany activeCount readU32
  ensure (activeIndices.Pairwise (· < ·))
  let (gram, gramWire) ← parseGram
  let gramDigest ← readDigest
  ensure (sha256 gramWire = gramDigest)
  ensure (gram.dimension = activeCount)
  let (factor, factorWire) ← parseFactor
  let factorDigest ← readDigest
  ensure (sha256 factorWire = factorDigest)
  ensure (factor.dimension = gram.dimension)
  let reconstructedDigest ← readDigest
  let reconstructed := factor.reconstruct
  ensure (reconstructed = gram)
  ensure (reconstructed.encode.map sha256 = some reconstructedDigest)
  ensure gram.Hermitian
  ensure ((← parseBool) = true)
  ensure ((← parseBool) = true)
  let pointCount ← parseCount maxDimension
  let points ← parseMany pointCount parsePointReport
  let similarityCount ← parseCount maxRelationReports
  let similarities ← parseMany similarityCount parseSimilarityReport
  let implicationCount ← parseCount maxRelationReports
  let implications ← parseMany implicationCount parseImplicationReport
  let oppositionCount ← parseCount maxRelationReports
  let oppositions ← parseMany oppositionCount parseOppositionReport
  let analogyCount ← parseCount maxRelationReports
  let analogies ← parseMany analogyCount parseAnalogyReport
  ensure ((← parseBool) = false)
  ensure ((← parseBool) = false)
  pure (RuntimeTrace.mk schemaVersion kernelId kernelDigest schemaDigest
    manifestDigest sourceDigest activeIndices gram factor points similarities
      implications oppositions analogies)

def decodeRhetoricalEnvelope
    (magic wire : List UInt8) : Option (List UInt8) :=
  if wire.length > maxRhetoricalFrameBytes then none else
  runExact (do
    ensure ((← readBytes 4) = magic)
    ensure ((← readU16) = 1)
    ensure ((← readByte) = 0)
    let payloadLength ← readU32
    ensure (payloadLength ≤ maxRhetoricalFrameBytes - frameOverhead)
    let payload ← readBytes payloadLength
    let digest ← readDigest
    ensure (sha256 payload = digest)
    pure payload) wire

def decodeTraceEnvelope (wire : List UInt8) : Option (List UInt8) :=
  decodeRhetoricalEnvelope traceMagic wire

/-- Decode and fully consume one exact `RHT1` trace. -/
def decodeTrace (wire : List UInt8) : Option RuntimeTrace := do
  let payload ← decodeTraceEnvelope wire
  runExact parseTracePayload payload

/-- Decode and fully consume one canonical exact `RHP1` problem. -/
def decodeProblem (wire : List UInt8) : Option RuntimeProblem := do
  let payload ← decodeRhetoricalEnvelope problemMagic wire
  runExact parseProblemPayload payload

def ExactGram.regularized (gram : ExactGram) : ExactGram where
  dimension := gram.dimension
  entries := (List.range gram.dimension).flatMap fun row =>
    (List.range gram.dimension).map fun column =>
      if row = column then
        ExactComplex.add (gram.at row column) ⟨(1 : Rat) / 1024, 0⟩
      else gram.at row column

private def hexDigit (value : Nat) : UInt8 :=
  UInt8.ofNat (if value < 10 then 48 + value else 87 + value)

def digestHex (digest : Digest) : List UInt8 :=
  digest.flatMap fun byte =>
    [hexDigit (byte.toNat / 16), hexDigit (byte.toNat % 16)]

/-- Exact identity is derived from the closed total semantic definition, never
from one finite active Gram table. -/
def exactKernelIdentityPreimage
    (manifest : KernelManifest.ProductionKernelManifest) : List UInt8 :=
  KernelManifest.kernelIdentityPreimageWire manifest

def expectedKernelDigest
    (manifest : KernelManifest.ProductionKernelManifest) : Digest :=
  KernelManifest.kernelDigest manifest

def expectedKernelId
    (manifest : KernelManifest.ProductionKernelManifest) : WireString :=
  (KernelManifest.kernelId manifest).toUTF8.toList

def kernelDigestFromPreimage (preimage : List UInt8) : Digest :=
  sha256 preimage

def kernelIdFromPreimage (preimage : List UInt8) : WireString :=
  "daf:rhetorical-kernel:".toUTF8.toList ++
    digestHex (kernelDigestFromPreimage preimage)

def RuntimeProblem.pointBindings (problem : RuntimeProblem) :
    List (Nat × ManifestReference) :=
  problem.points.map fun point => (point.roleTag, point.source)

def RuntimeTrace.pointBindings (trace : RuntimeTrace) :
    List (Nat × ManifestReference) :=
  trace.points.map fun point => (point.roleTag, point.source)

def RuntimeTrace.similarityQueries (trace : RuntimeTrace) : List PairQuery :=
  trace.similarities.map fun report => ⟨report.left, report.right⟩

def RuntimeTrace.implicationQueries (trace : RuntimeTrace) :
    List ProblemImplication :=
  trace.implications.map fun report =>
    ⟨report.premise, report.conclusion, report.relation⟩

def RuntimeTrace.oppositionQueries (trace : RuntimeTrace) :
    List ProblemOpposition :=
  trace.oppositions.map fun report =>
    ⟨report.positive, report.negative, report.profile.map (·.index)⟩

def RuntimeTrace.analogyQueries (trace : RuntimeTrace) : List ProblemAnalogy :=
  trace.analogies.map fun report =>
    ⟨report.sourceLeft, report.sourceRight,
      report.targetLeft, report.targetRight⟩

def OppositionReport.ProfileBound
    (problem : RuntimeProblem) (report : OppositionReport) : Prop :=
  match report.profile with
  | none => True
  | some profile =>
      (problem.oppositionProfiles.drop profile.index).head? =
        some profile.operator

instance (problem : RuntimeProblem) (report : OppositionReport) :
    Decidable (report.ProfileBound problem) := by
  unfold OppositionReport.ProfileBound
  cases report.profile <;> infer_instance

def referenceMatches (manifest : List UInt8)
    (reference : ManifestReference) (digest : Digest) : Prop :=
  (reference.resolve manifest).map sha256 = some digest

instance (manifest : List UInt8) (reference : ManifestReference)
    (digest : Digest) : Decidable (referenceMatches manifest reference digest) := by
  unfold referenceMatches
  infer_instance

def complexNeg (value : ExactComplex) : ExactComplex :=
  ⟨-value.re, -value.im⟩

def complexSub (left right : ExactComplex) : ExactComplex :=
  ExactComplex.add left (complexNeg right)

def ExactFactor.symbolicCoefficient (factor : ExactFactor)
    (column pivot : Nat) : ExactComplex :=
  if factor.diagonal.getD pivot 0 = 0 then ExactComplex.zero
  else ExactComplex.conj (factor.lowerAt column pivot)

def ExactFactor.symbolicColumnWire
    (factor : ExactFactor) (column : Nat) : Option (List UInt8) := do
  if column < factor.dimension then pure () else none
  let entries ← (List.range factor.dimension).mapM fun pivot => do
    let coefficient ← encodeComplex (factor.symbolicCoefficient column pivot)
    let radicand ← encodeRational (factor.diagonal.getD pivot 0)
    pure (coefficient ++ radicand)
  pure (natBytesBE 4 factor.dimension ++ entries.flatten)

/-- Algebraic inner product of two columns of the symbolic factor
`B = sqrt(D) L*`, after cancelling the paired radicals to their exact pivot
in `D`.  No square root is evaluated. -/
def ExactFactor.symbolicInner (factor : ExactFactor)
    (left right : Nat) : ExactComplex :=
  (List.range factor.dimension).foldl (fun total pivot =>
    ExactComplex.add total <|
      scale (ExactComplex.mul
        (ExactComplex.conj (factor.symbolicCoefficient left pivot))
        (factor.symbolicCoefficient right pivot))
        (factor.diagonal.getD pivot 0)) ExactComplex.zero

private theorem ExactFactor.symbolicTerm_eq_reconstructTerm
    (factor : ExactFactor) (left right pivot : Nat) :
    scale (ExactComplex.mul
        (ExactComplex.conj (factor.symbolicCoefficient left pivot))
        (factor.symbolicCoefficient right pivot))
        (factor.diagonal.getD pivot 0) =
      scale (ExactComplex.mul (factor.lowerAt left pivot)
        (ExactComplex.conj (factor.lowerAt right pivot)))
        (factor.diagonal.getD pivot 0) := by
  by_cases zeroPivot : factor.diagonal.getD pivot 0 = 0
  · change factor.diagonal[pivot]?.getD 0 = 0 at zeroPivot
    simp [ExactFactor.symbolicCoefficient, zeroPivot, scale,
      ExactComplex.zero, ExactComplex.conj, ExactComplex.mul]
  · change ¬factor.diagonal[pivot]?.getD 0 = 0 at zeroPivot
    rcases leftValue : factor.lowerAt left pivot with ⟨leftReal, leftImaginary⟩
    rcases rightValue : factor.lowerAt right pivot with ⟨rightReal, rightImaginary⟩
    simp [ExactFactor.symbolicCoefficient, zeroPivot, leftValue, rightValue,
      scale, ExactComplex.conj, ExactComplex.mul]

/-- The symbolic factor columns reconstruct exactly the accepted Gram:
their algebraic inner product is the corresponding `L D L*` entry. -/
theorem ExactFactor.symbolicInner_eq_reconstructEntry
    (factor : ExactFactor) (left right : Nat) :
    factor.symbolicInner left right = factor.reconstructEntry left right := by
  unfold ExactFactor.symbolicInner ExactFactor.reconstructEntry
  simp_rw [factor.symbolicTerm_eq_reconstructTerm left right]

/-- Exact algebraic counterpart of `GramFactorCertificate` for the decoded
rational `LDL*` carrier.  Its columns are the symbolic coefficients
`conj(L[column,pivot]) * sqrt(D[pivot])`; `columnInner` is their genuine
finite inner-product fold, with paired radicals cancelled exactly. -/
structure SymbolicGramFactorCertificate
    (factor : ExactFactor) (gram : ExactGram) : Prop where
  dimension_eq : factor.dimension = gram.dimension
  reconstructs : factor.reconstruct = gram
  columnInner : ∀ left right,
    factor.symbolicInner left right = factor.reconstructEntry left right

def ExactGram.vectorInner (gram : ExactGram)
    (left right : Nat → ExactComplex) : ExactComplex :=
  (List.range gram.dimension).foldl (fun total row =>
    (List.range gram.dimension).foldl (fun subtotal column =>
      ExactComplex.add subtotal <|
        ExactComplex.mul
          (ExactComplex.mul (ExactComplex.conj (left row))
            (gram.at row column))
          (right column)) total) ExactComplex.zero

def ExactOperator.compositionAt (operator : ExactOperator)
    (row column : Nat) : ExactComplex :=
  (List.range operator.dimension).foldl (fun total coordinate =>
    ExactComplex.add total <|
      ExactComplex.mul (operator.at row coordinate)
        (operator.at coordinate column)) ExactComplex.zero

def ExactOperator.IsInvolution (operator : ExactOperator) : Prop :=
  operator.Valid ∧
    ∀ row, row < operator.dimension →
      ∀ column, column < operator.dimension →
        operator.compositionAt row column =
          if row = column then ExactComplex.one else ExactComplex.zero

instance (operator : ExactOperator) : Decidable operator.IsInvolution := by
  unfold ExactOperator.IsInvolution
  infer_instance

def ExactOperator.PreservesGram
    (operator : ExactOperator) (gram : ExactGram) : Prop :=
  operator.dimension = gram.dimension ∧
    ∀ left, left < gram.dimension →
      ∀ right, right < gram.dimension →
        gram.vectorInner (fun row => operator.at row left)
            (fun row => operator.at row right) = gram.at left right

instance (operator : ExactOperator) (gram : ExactGram) :
    Decidable (operator.PreservesGram gram) := by
  unfold ExactOperator.PreservesGram
  infer_instance

def basisCoordinate (coordinate index : Nat) : ExactComplex :=
  if coordinate = index then ExactComplex.one else ExactComplex.zero

def displacementCoordinate (source target coordinate : Nat) : ExactComplex :=
  complexSub (basisCoordinate coordinate target) (basisCoordinate coordinate source)

def ExactGram.displacementInner (gram : ExactGram)
    (sourceLeft sourceRight targetLeft targetRight : Nat) : ExactComplex :=
  gram.vectorInner
    (displacementCoordinate sourceLeft sourceRight)
    (displacementCoordinate targetLeft targetRight)

def ExactGram.displacementNormSquared (gram : ExactGram)
    (source target : Nat) : Rat :=
  (gram.displacementInner source target source target).re

def ExactGram.displacementResidualSquared (gram : ExactGram)
    (sourceLeft sourceRight targetLeft targetRight : Nat) : Rat :=
  let source := displacementCoordinate sourceLeft sourceRight
  let target := displacementCoordinate targetLeft targetRight
  (gram.vectorInner (fun index => complexSub (source index) (target index))
    (fun index => complexSub (source index) (target index))).re

def ExactGram.equalDisplacements (gram : ExactGram)
    (sourceLeft sourceRight targetLeft targetRight : Nat) : Prop :=
  ∀ coordinate, coordinate < gram.dimension →
    displacementCoordinate sourceLeft sourceRight coordinate =
      displacementCoordinate targetLeft targetRight coordinate

instance (gram : ExactGram) (sourceLeft sourceRight targetLeft targetRight : Nat) :
    Decidable (gram.equalDisplacements sourceLeft sourceRight targetLeft targetRight) := by
  unfold ExactGram.equalDisplacements
  infer_instance

def ExactFactor.columnsAreAntipodes (factor : ExactFactor)
    (positive negative : Nat) : Prop :=
  ∀ pivot, pivot < factor.dimension →
    factor.symbolicCoefficient negative pivot =
      complexNeg (factor.symbolicCoefficient positive pivot)

instance (factor : ExactFactor) (positive negative : Nat) :
    Decidable (factor.columnsAreAntipodes positive negative) := by
  unfold ExactFactor.columnsAreAntipodes
  infer_instance

def ExactOperator.profileResidualSquared (operator : ExactOperator)
    (gram : ExactGram) (positive negative : Nat) : Rat :=
  let residual := fun row =>
    complexSub (operator.at row positive) (basisCoordinate row negative)
  (gram.vectorInner residual residual).re

def RuntimeTrace.hasRole (trace : RuntimeTrace) (index roleTag : Nat) : Prop :=
  ∃ point ∈ trace.points, point.point = index ∧ point.roleTag = roleTag

instance (trace : RuntimeTrace) (index roleTag : Nat) :
    Decidable (trace.hasRole index roleTag) := by
  unfold RuntimeTrace.hasRole
  infer_instance

def NormalizedRealReport.Matches (report : NormalizedRealReport)
    (inner : ExactComplex) (leftNorm rightNorm : Rat) : Prop :=
  0 < leftNorm ∧ 0 < rightNorm ∧
  report.numerator = inner.re ∧
  report.denominatorSquared = leftNorm * rightNorm ∧
  report.numerator * report.numerator ≤ report.denominatorSquared

instance (report : NormalizedRealReport) (inner : ExactComplex)
    (leftNorm rightNorm : Rat) :
    Decidable (report.Matches inner leftNorm rightNorm) := by
  unfold NormalizedRealReport.Matches
  infer_instance

def PointReport.Matches (trace : RuntimeTrace) (report : PointReport) : Prop :=
  report.point < trace.gram.dimension ∧
  report.activeIndex = trace.activeIndices.getD report.point 0 ∧
  report.normSquared = (trace.gram.at report.point report.point).re ∧
  0 < report.normSquared ∧
  (trace.factor.symbolicColumnWire report.point).map sha256 =
    some report.vectorDigest

instance (trace : RuntimeTrace) (report : PointReport) :
    Decidable (PointReport.Matches trace report) := by
  unfold PointReport.Matches
  infer_instance

def SimilarityReport.Matches (trace : RuntimeTrace)
    (report : SimilarityReport) : Prop :=
  report.left < trace.gram.dimension ∧ report.right < trace.gram.dimension ∧
  trace.hasRole report.left 0 ∧ trace.hasRole report.right 0 ∧
  let inner := trace.gram.at report.left report.right
  let leftNorm := (trace.gram.at report.left report.left).re
  let rightNorm := (trace.gram.at report.right report.right).re
  let denominator := leftNorm * rightNorm
  report.innerProduct = inner ∧ 0 < denominator ∧
  inner.normSquared ≤ denominator ∧
  report.normalizedMagnitudeSquared = inner.normSquared / denominator ∧
  report.normalizedRe.Matches inner leftNorm rightNorm

instance (trace : RuntimeTrace) (report : SimilarityReport) :
    Decidable (SimilarityReport.Matches trace report) := by
  unfold SimilarityReport.Matches
  infer_instance

def ImplicationReport.Matches (trace : RuntimeTrace)
    (report : ImplicationReport) : Prop :=
  report.premise < trace.gram.dimension ∧
  report.conclusion < trace.gram.dimension ∧
  trace.hasRole report.premise 1 ∧ trace.hasRole report.conclusion 2 ∧
  let inner := trace.gram.at report.premise report.conclusion
  let premiseNorm := (trace.gram.at report.premise report.premise).re
  let conclusionNorm := (trace.gram.at report.conclusion report.conclusion).re
  report.directedAffinity.Matches inner premiseNorm conclusionNorm

instance (trace : RuntimeTrace) (report : ImplicationReport) :
    Decidable (ImplicationReport.Matches trace report) := by
  unfold ImplicationReport.Matches
  infer_instance

def OppositionProfileMatches (gram : ExactGram) (positive negative : Nat) :
    Option OppositionProfile → Option Rat → Prop
  | none, none => True
  | some profile, some residual =>
      profile.operator.dimension = gram.dimension ∧
      profile.operator.IsInvolution ∧
      profile.operator.PreservesGram gram ∧
      residual = profile.operator.profileResidualSquared gram positive negative
  | _, _ => False

instance (gram : ExactGram) (positive negative : Nat)
    (profile : Option OppositionProfile) (residual : Option Rat) :
    Decidable (OppositionProfileMatches gram positive negative profile residual) := by
  cases profile <;> cases residual <;>
    simp only [OppositionProfileMatches] <;> infer_instance

def OppositionReport.Matches (trace : RuntimeTrace)
    (report : OppositionReport) : Prop :=
  report.positive < trace.gram.dimension ∧
  report.negative < trace.gram.dimension ∧
  trace.hasRole report.positive 3 ∧ trace.hasRole report.negative 4 ∧
  let inner := trace.gram.at report.positive report.negative
  let positiveNorm := (trace.gram.at report.positive report.positive).re
  let negativeNorm := (trace.gram.at report.negative report.negative).re
  report.innerProduct = inner ∧
  report.normalizedRe.Matches inner positiveNorm negativeNorm ∧
  report.exactAntipodes =
    decide (trace.factor.columnsAreAntipodes report.positive report.negative) ∧
  OppositionProfileMatches trace.gram report.positive report.negative
    report.profile report.profileResidualSquared

instance (trace : RuntimeTrace) (report : OppositionReport) :
    Decidable (OppositionReport.Matches trace report) := by
  unfold OppositionReport.Matches
  infer_instance

def AnalogyAffinityMatches (inner : ExactComplex) (sourceNorm targetNorm : Rat) :
    Option NormalizedRealReport → Prop
  | none => sourceNorm = 0 ∨ targetNorm = 0
  | some affinity => affinity.Matches inner sourceNorm targetNorm

instance (inner : ExactComplex) (sourceNorm targetNorm : Rat)
    (affinity : Option NormalizedRealReport) :
    Decidable (AnalogyAffinityMatches inner sourceNorm targetNorm affinity) := by
  cases affinity <;> simp only [AnalogyAffinityMatches] <;> infer_instance

def AnalogyReport.Matches (trace : RuntimeTrace)
    (report : AnalogyReport) : Prop :=
  report.sourceLeft < trace.gram.dimension ∧
  report.sourceRight < trace.gram.dimension ∧
  report.targetLeft < trace.gram.dimension ∧
  report.targetRight < trace.gram.dimension ∧
  trace.hasRole report.sourceLeft 5 ∧ trace.hasRole report.sourceRight 6 ∧
  trace.hasRole report.targetLeft 5 ∧ trace.hasRole report.targetRight 6 ∧
  let sourceNorm := trace.gram.displacementNormSquared
    report.sourceLeft report.sourceRight
  let targetNorm := trace.gram.displacementNormSquared
    report.targetLeft report.targetRight
  let inner := trace.gram.displacementInner report.sourceLeft report.sourceRight
    report.targetLeft report.targetRight
  report.equalDisplacements = decide (trace.gram.equalDisplacements
    report.sourceLeft report.sourceRight report.targetLeft report.targetRight) ∧
  report.displacementResidualSquared = trace.gram.displacementResidualSquared
    report.sourceLeft report.sourceRight report.targetLeft report.targetRight ∧
  0 ≤ sourceNorm ∧ 0 ≤ targetNorm ∧
  AnalogyAffinityMatches inner sourceNorm targetNorm report.normalizedAffinity

instance (trace : RuntimeTrace) (report : AnalogyReport) :
    Decidable (AnalogyReport.Matches trace report) := by
  unfold AnalogyReport.Matches
  infer_instance

/-- Externally selected exact bytes and mathematical binding for one active
finite family.  Canonicality comes from repository configuration, not from
constructing an arbitrary value of this structure. -/
structure CanonicalTraceCommitment
    {Index : Type} (kernel : PositiveKernel Index) (dimension : Nat) where
  traceWire : List UInt8
  problemWire : List UInt8
  problem : RuntimeProblem
  problemDecoded : decodeProblem problemWire = some problem
  schemaWire : List UInt8
  formalManifest : KernelManifest.ProductionKernelManifest
  formalManifestValid : formalManifest.Valid
  manifestWire : List UInt8
  manifestGenerated :
    manifestWire = KernelManifest.encode formalManifest
  semanticGramWire : List UInt8
  semanticGramGenerated :
    semanticGramWire = formalManifest.semanticGramWire
  kernelIdentityPreimage : List UInt8
  kernelIdentityGenerated :
    kernelIdentityPreimage =
      KernelManifest.kernelIdentityPreimageWire
        formalManifest
  activeIndices : List Nat
  formalIndices : Fin dimension → Index
  expectedGram : ExactGram
  expectedGramValid : expectedGram.Valid
  expectedDimension : expectedGram.dimension = dimension
  representsFormal : ∀ row column : Fin dimension,
    exactComplexToComplex (expectedGram.at row column) =
      kernel (formalIndices row) (formalIndices column)

/-- Stronger wrapper for the repository's byte-pinned production profile.
Generic commitments remain mathematically authoritative only through their
own Lean construction and proof fields; this wrapper additionally identifies
the distinguished production manifest. -/
structure ProductionTraceCommitment
    {Index : Type} (kernel : PositiveKernel Index) (dimension : Nat) where
  commitment : CanonicalTraceCommitment kernel dimension
  isProduction :
    commitment.formalManifest = KernelManifest.productionManifest

def AcceptanceConditions
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    (commitment : CanonicalTraceCommitment kernel dimension)
    (trace : RuntimeTrace) : Prop :=
  trace.schemaVersion = 2 ∧
  kernelIdFromPreimage commitment.kernelIdentityPreimage = trace.kernelId ∧
  kernelDigestFromPreimage commitment.kernelIdentityPreimage =
    trace.kernelDigest ∧
  trace.schemaDigest = sha256 commitment.schemaWire ∧
  trace.manifestDigest = sha256 commitment.manifestWire ∧
  trace.sourceDigest = sha256 commitment.problemWire ∧
  trace.activeIndices = commitment.problem.activeIndices ∧
  trace.activeIndices = commitment.activeIndices ∧
  trace.activeIndices.length = dimension ∧
  trace.gram = commitment.problem.rawGram.regularized ∧
  trace.gram = commitment.expectedGram ∧
  trace.factor.reconstruct = trace.gram ∧
  trace.points.length = dimension ∧
  trace.points.map (·.point) = List.range dimension ∧
  trace.pointBindings = commitment.problem.pointBindings ∧
  (∀ point ∈ trace.points,
    PointReport.Matches trace point ∧
      referenceMatches commitment.manifestWire
        point.source point.sourceDigest) ∧
  trace.similarityQueries = commitment.problem.similarities ∧
  (∀ similarity ∈ trace.similarities,
    SimilarityReport.Matches trace similarity) ∧
  trace.implicationQueries = commitment.problem.implications ∧
  (∀ implication ∈ trace.implications,
    ImplicationReport.Matches trace implication ∧
    referenceMatches commitment.manifestWire
      implication.relation implication.relationDigest) ∧
  trace.oppositionQueries = commitment.problem.oppositions ∧
  (∀ opposition ∈ trace.oppositions,
    OppositionReport.ProfileBound commitment.problem opposition) ∧
  (∀ opposition ∈ trace.oppositions,
    OppositionReport.Matches trace opposition) ∧
  trace.analogyQueries = commitment.problem.analogies ∧
  (∀ analogy ∈ trace.analogies,
    AnalogyReport.Matches trace analogy)

instance
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    (commitment : CanonicalTraceCommitment kernel dimension)
    (trace : RuntimeTrace) :
    Decidable (AcceptanceConditions commitment trace) := by
  unfold AcceptanceConditions
  infer_instance

/-- A foreign trace is accepted only after byte decoding and all pinned
identity/finite-semantics checks succeed. -/
def AcceptedTrace
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    (commitment : CanonicalTraceCommitment kernel dimension) : Prop :=
  ∃ trace, decodeTrace commitment.traceWire = some trace ∧
    AcceptanceConditions commitment trace

instance
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    (commitment : CanonicalTraceCommitment kernel dimension) :
    Decidable (AcceptedTrace commitment) := by
  unfold AcceptedTrace
  infer_instance

def verifyTrace
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    (commitment : CanonicalTraceCommitment kernel dimension) : Bool :=
  decide (AcceptedTrace commitment)

/-- Formal representation relation for the finite Gram observed in the
accepted runtime bytes. -/
def Represents
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    (commitment : CanonicalTraceCommitment kernel dimension) : Prop :=
  ∃ trace, decodeTrace commitment.traceWire = some trace ∧
    ∀ row column : Fin dimension,
      exactComplexToComplex (trace.gram.at row column) =
        kernel (commitment.formalIndices row)
          (commitment.formalIndices column)

/-- Kernel-checked soundness of the actual serialized finite Gram. -/
theorem acceptedTrace_represents
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    {commitment : CanonicalTraceCommitment kernel dimension}
    (accepted : AcceptedTrace commitment) :
    Represents commitment := by
  obtain ⟨trace, decoded, conditions⟩ := accepted
  refine ⟨trace, decoded, ?_⟩
  intro row column
  have gramEquality : trace.gram = commitment.expectedGram := by
    unfold AcceptanceConditions at conditions
    aesop
  rw [gramEquality]
  exact commitment.representsFormal row column

/-- Operation preservation for every selected matrix coefficient. -/
theorem acceptedTrace_operation_preserved
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    {commitment : CanonicalTraceCommitment kernel dimension}
    (accepted : AcceptedTrace commitment)
    (row column : Fin dimension) :
    ∃ trace, decodeTrace commitment.traceWire = some trace ∧
      exactComplexToComplex (trace.gram.at row column) =
        finiteGram kernel commitment.formalIndices row column := by
  obtain ⟨trace, decoded, represented⟩ := acceptedTrace_represents accepted
  exact ⟨trace, decoded, represented row column⟩

/-- Point norms and canonical symbolic-factor-column digests are recomputed from the
accepted exact Gram rather than trusted as foreign annotations. -/
theorem acceptedTrace_point_norm_operation_preserved
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    {commitment : CanonicalTraceCommitment kernel dimension}
    (accepted : AcceptedTrace commitment) :
    ∃ trace, decodeTrace commitment.traceWire = some trace ∧
      ∀ report ∈ trace.points,
        report.normSquared = (trace.gram.at report.point report.point).re ∧
        (trace.factor.symbolicColumnWire report.point).map sha256 =
          some report.vectorDigest := by
  obtain ⟨trace, decoded, conditions⟩ := accepted
  refine ⟨trace, decoded, ?_⟩
  intro report member
  have pointConditions : ∀ point ∈ trace.points,
      PointReport.Matches trace point ∧
        referenceMatches commitment.manifestWire
          point.source point.sourceDigest := by
    unfold AcceptanceConditions at conditions
    aesop
  have matched := (pointConditions report member).1
  exact ⟨matched.2.2.1, matched.2.2.2.2⟩

/-- The factor-derived symbolic columns are not Gram columns: their paired
radicals reconstruct the accepted Gram exactly through `B⁺ B = L D L⁺`. -/
theorem acceptedTrace_symbolic_factor_operation_preserved
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    {commitment : CanonicalTraceCommitment kernel dimension}
    (accepted : AcceptedTrace commitment) :
    ∃ trace, decodeTrace commitment.traceWire = some trace ∧
      trace.factor.reconstruct = trace.gram ∧
      ∀ left right,
        trace.factor.symbolicInner left right =
          trace.factor.reconstructEntry left right := by
  obtain ⟨trace, decoded, conditions⟩ := accepted
  have reconstructs : trace.factor.reconstruct = trace.gram := by
    unfold AcceptanceConditions at conditions
    aesop
  exact ⟨trace, decoded, reconstructs,
    trace.factor.symbolicInner_eq_reconstructEntry⟩

/-- Accepted foreign bytes therefore carry an exact symbolic Gram-factor
certificate, rather than merely a factor digest or a finite test vector. -/
theorem acceptedTrace_has_symbolic_gram_factor_certificate
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    {commitment : CanonicalTraceCommitment kernel dimension}
    (accepted : AcceptedTrace commitment) :
    ∃ trace, decodeTrace commitment.traceWire = some trace ∧
      SymbolicGramFactorCertificate trace.factor trace.gram := by
  obtain ⟨trace, decoded, reconstructs, columnInner⟩ :=
    acceptedTrace_symbolic_factor_operation_preserved accepted
  refine ⟨trace, decoded, ?_⟩
  refine ⟨?_, reconstructs, columnInner⟩
  have dimensions := congrArg ExactGram.dimension reconstructs
  simpa [ExactFactor.reconstruct] using dimensions

/-- Every accepted similarity result is the exact Base/Base calculation over
the certified Gram and its active-index point table. -/
theorem acceptedTrace_similarity_operation_preserved
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    {commitment : CanonicalTraceCommitment kernel dimension}
    (accepted : AcceptedTrace commitment) :
    ∃ trace, decodeTrace commitment.traceWire = some trace ∧
      ∀ report ∈ trace.similarities, SimilarityReport.Matches trace report := by
  obtain ⟨trace, decoded, conditions⟩ := accepted
  have similarities : ∀ report ∈ trace.similarities,
      SimilarityReport.Matches trace report := by
    unfold AcceptanceConditions at conditions
    aesop
  exact ⟨trace, decoded, similarities⟩

/-- Every accepted implication diagnostic is the exact cosine-normalized
Premise/Conclusion Gram calculation, with implication authority remaining in
the checked manifest reference. -/
theorem acceptedTrace_implication_operation_preserved
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    {commitment : CanonicalTraceCommitment kernel dimension}
    (accepted : AcceptedTrace commitment) :
    ∃ trace, decodeTrace commitment.traceWire = some trace ∧
      ∀ report ∈ trace.implications,
        ImplicationReport.Matches trace report ∧
        referenceMatches commitment.manifestWire
          report.relation report.relationDigest := by
  obtain ⟨trace, decoded, conditions⟩ := accepted
  have implications : ∀ report ∈ trace.implications,
      ImplicationReport.Matches trace report ∧
      referenceMatches commitment.manifestWire
        report.relation report.relationDigest := by
    unfold AcceptanceConditions at conditions
    aesop
  exact ⟨trace, decoded, implications⟩

/-- Every accepted opposition result, including a supplied involution profile,
is recomputed and the profile is checked both involutive and Gram-unitary. -/
theorem acceptedTrace_opposition_operation_preserved
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    {commitment : CanonicalTraceCommitment kernel dimension}
    (accepted : AcceptedTrace commitment) :
    ∃ trace, decodeTrace commitment.traceWire = some trace ∧
      ∀ report ∈ trace.oppositions, OppositionReport.Matches trace report := by
  obtain ⟨trace, decoded, conditions⟩ := accepted
  have oppositions : ∀ report ∈ trace.oppositions,
      OppositionReport.Matches trace report := by
    unfold AcceptanceConditions at conditions
    aesop
  exact ⟨trace, decoded, oppositions⟩

/-- Every accepted analogy result is the exact Source/Target displacement
calculation over the certified Gram and active-index point table. -/
theorem acceptedTrace_analogy_operation_preserved
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    {commitment : CanonicalTraceCommitment kernel dimension}
    (accepted : AcceptedTrace commitment) :
    ∃ trace, decodeTrace commitment.traceWire = some trace ∧
      ∀ report ∈ trace.analogies, AnalogyReport.Matches trace report := by
  obtain ⟨trace, decoded, conditions⟩ := accepted
  have analogies : ∀ report ∈ trace.analogies,
      AnalogyReport.Matches trace report := by
    unfold AcceptanceConditions at conditions
    aesop
  exact ⟨trace, decoded, analogies⟩

theorem verifyTrace_eq_true_iff
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    (commitment : CanonicalTraceCommitment kernel dimension) :
    verifyTrace commitment = true ↔ AcceptedTrace commitment := by
  simp [verifyTrace]

end DAF.Rhetorical.Runtime.RHT1
```
