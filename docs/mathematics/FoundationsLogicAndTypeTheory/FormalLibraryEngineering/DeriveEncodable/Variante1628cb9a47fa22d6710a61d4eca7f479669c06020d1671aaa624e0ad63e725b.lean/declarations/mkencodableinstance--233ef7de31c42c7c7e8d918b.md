# mkEncodableInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:892a63842141e36ab387ce32360ec4f188aa0b2ddd83a6b752a0018c1604cc55",
  "kind": "def",
  "lexical_name": "mkEncodableInstance",
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
  "slug": "mkencodableinstance--233ef7de31c42c7c7e8d918b",
  "source": {
    "blob": "fcc9a7d47514df1eecb2e6f85eb24d6acedc65f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 354,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variante1628cb9a47fa22d6710a61d4eca7f479669c06020d1671aaa624e0ad63e725b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:233ef7de31c42c7c7e8d918b95fb764bc90f41f164517a9bee433aabc27b2cc2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variante1628cb9a47fa22d6710a61d4eca7f479669c06020d1671aaa624e0ad63e725b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:892a63842141e36ab387ce32360ec4f188aa0b2ddd83a6b752a0018c1604cc55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkEncodableInstance (declNames : Array Name) : CommandElabM Bool := do
  let mut seen : NameSet := {}
  let mut toVisit : Array InductiveVal := #[]
  for declName in declNames do
    if seen.contains declName then continue
    let indVal ← getConstInfoInduct declName
    if indVal.isNested || indVal.isReflexive || indVal.numIndices != 0 then
      return false -- not supported yet
    seen := seen.append (NameSet.ofList indVal.all)
    toVisit := toVisit.push indVal
  for indVal in toVisit do
    let cmds ← liftTermElabM <| mkEncodableCmds indVal (declNames.filter indVal.all.contains)
    withEnableInfoTree false do
      elabCommand <| mkNullNode cmds
  return true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variante1628cb9a47fa22d6710a61d4eca7f479669c06020d1671aaa624e0ad63e725b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variante1628cb9a47fa22d6710a61d4eca7f479669c06020d1671aaa624e0ad63e725b.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcc9a7d47514df1eecb2e6f85eb24d6acedc65f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
