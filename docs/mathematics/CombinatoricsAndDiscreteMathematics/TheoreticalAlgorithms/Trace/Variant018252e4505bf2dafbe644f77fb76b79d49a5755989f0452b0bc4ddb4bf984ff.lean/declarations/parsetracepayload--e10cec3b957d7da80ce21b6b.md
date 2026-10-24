# parseTracePayload

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4da4ca2dcba65d37bcaad807f41a7403e7ac1d031c09bc9fff683f3e7590abcb",
  "kind": "def",
  "lexical_name": "parseTracePayload",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "parsetracepayload--e10cec3b957d7da80ce21b6b",
  "source": {
    "blob": "23c4123185ead18ad65fbd5f2f72eb68bc588687",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 70,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant018252e4505bf2dafbe644f77fb76b79d49a5755989f0452b0bc4ddb4bf984ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e10cec3b957d7da80ce21b6bd010fc3cb7ae13c6cb924340820eefd05af074bc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant018252e4505bf2dafbe644f77fb76b79d49a5755989f0452b0bc4ddb4bf984ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4da4ca2dcba65d37bcaad807f41a7403e7ac1d031c09bc9fff683f3e7590abcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant018252e4505bf2dafbe644f77fb76b79d49a5755989f0452b0bc4ddb4bf984ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant018252e4505bf2dafbe644f77fb76b79d49a5755989f0452b0bc4ddb4bf984ff.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23c4123185ead18ad65fbd5f2f72eb68bc588687` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
