# containingNodeIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3144662143ff89f73c9fad43bd00c854314ca94ead282098ba4cdabee3c4709d",
  "kind": "def",
  "lexical_name": "containingNodeIndex",
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
  "slug": "containingnodeindex--1ecb9d8a291dd46557b9ee5b",
  "source": {
    "blob": "c99c00d233ae94a7be533a121998039832a190a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 341,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant822ff102ea04ae8b5db368c9897a7fbcd50019dfff0bd9424c659c3b8264ff8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ecb9d8a291dd46557b9ee5bd7c3eb58287ee7db250f462340f8fcbd8837f92d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant822ff102ea04ae8b5db368c9897a7fbcd50019dfff0bd9424c659c3b8264ff8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3144662143ff89f73c9fad43bd00c854314ca94ead282098ba4cdabee3c4709d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def containingNodeIndex (nodes : Array FlatNode) (span : ByteSpan) : Nat := Id.run do
  let mut selected := 0
  let mut selectedLength := nodes[0]!.span.endByte - nodes[0]!.span.startByte
  for index in [:nodes.size] do
    let node := nodes[index]!
    if node.span.startByte ≤ span.startByte && span.endByte ≤ node.span.endByte then
      let length := node.span.endByte - node.span.startByte
      if length ≤ selectedLength then
        selected := index
        selectedLength := length
  return selected

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant822ff102ea04ae8b5db368c9897a7fbcd50019dfff0bd9424c659c3b8264ff8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/SurfaceSyntaxExportMain/Variant822ff102ea04ae8b5db368c9897a7fbcd50019dfff0bd9424c659c3b8264ff8d.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c99c00d233ae94a7be533a121998039832a190a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
