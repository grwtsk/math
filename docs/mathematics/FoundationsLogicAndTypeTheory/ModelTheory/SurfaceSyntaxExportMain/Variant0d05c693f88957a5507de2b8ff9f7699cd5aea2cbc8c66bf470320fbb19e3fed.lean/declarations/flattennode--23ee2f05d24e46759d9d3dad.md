# flattenNode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a76fe96892f9318f5cb70c3108d3eaa93f377ea1642daeb1fa50bb3edc0972b",
  "kind": "def",
  "lexical_name": "flattenNode",
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
  "slug": "flattennode--23ee2f05d24e46759d9d3dad",
  "source": {
    "blob": "0d8ec66368c6e46546376e379183943917e390c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant0d05c693f88957a5507de2b8ff9f7699cd5aea2cbc8c66bf470320fbb19e3fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23ee2f05d24e46759d9d3dad3c8537c68141a1a635124ccfe9491a7f639d2c5d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant0d05c693f88957a5507de2b8ff9f7699cd5aea2cbc8c66bf470320fbb19e3fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a76fe96892f9318f5cb70c3108d3eaa93f377ea1642daeb1fa50bb3edc0972b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def flattenNode (builder : Builder) (raw : RawNode)
    (parentIndex : Option Nat) : IO Nat := do
  let nodes ← builder.nodes.get
  let nodeIndex := nodes.size
  builder.nodes.set <| nodes.push {
    kind := raw.kind
    span := raw.span
    parentIndex }
  builder.bracketBits.modify (·.push true)
  builder.openNodeIndices.modify (·.push nodeIndex)
  let mut firstChildIndex : Option Nat := none
  let mut previousChildIndex : Option Nat := none
  for child in raw.children do
    let childIndex ← flattenNode builder child (some nodeIndex)
    let ordinal := (← builder.edges.get).foldl
      (fun count edge => if edge.parentIndex = nodeIndex then count + 1 else count) 0
    builder.edges.modify (·.push { parentIndex := nodeIndex, childIndex, ordinal })
    if firstChildIndex.isNone then firstChildIndex := some childIndex
    if let some previous := previousChildIndex then
      let currentNodes ← builder.nodes.get
      let previousNode := currentNodes[previous]!
      builder.nodes.set <| currentNodes.set! previous
        { previousNode with nextSiblingIndex := some childIndex }
    previousChildIndex := some childIndex
  let currentNodes ← builder.nodes.get
  builder.nodes.set <| currentNodes.set! nodeIndex
    { currentNodes[nodeIndex]! with firstChildIndex }
  builder.bracketBits.modify (·.push false)
  pure nodeIndex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant0d05c693f88957a5507de2b8ff9f7699cd5aea2cbc8c66bf470320fbb19e3fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant0d05c693f88957a5507de2b8ff9f7699cd5aea2cbc8c66bf470320fbb19e3fed.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d8ec66368c6e46546376e379183943917e390c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
