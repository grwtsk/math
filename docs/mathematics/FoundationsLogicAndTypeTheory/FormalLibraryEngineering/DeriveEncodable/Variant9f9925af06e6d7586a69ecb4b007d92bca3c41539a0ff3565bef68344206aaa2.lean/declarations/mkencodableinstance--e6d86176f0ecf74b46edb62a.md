# mkEncodableInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a99d15fb8214bb80b46a59ce402af395d944930dce3d5ea6c2f2d6105b11db22",
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
  "slug": "mkencodableinstance--e6d86176f0ecf74b46edb62a",
  "source": {
    "blob": "522697bdddee7643f0337e16d99fe30b36c566d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 351,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6d86176f0ecf74b46edb62ab73383c8ababb457e7da11e2cf4098e8b331c56e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a99d15fb8214bb80b46a59ce402af395d944930dce3d5ea6c2f2d6105b11db22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–366.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant9f9925af06e6d7586a69ecb4b007d92bca3c41539a0ff3565bef68344206aaa2.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `522697bdddee7643f0337e16d99fe30b36c566d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
