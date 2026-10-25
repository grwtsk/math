# mkCountableInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:547ccefbbc852562a28c3e0bf8f770635fd6f459974c07ded894f35fee688f89",
  "kind": "def",
  "lexical_name": "mkCountableInstance",
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
  "slug": "mkcountableinstance--f69061e90fa355f2e60b2672",
  "source": {
    "blob": "e248d768f7eebf77dcc04ec5174d3909489147a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 257,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f69061e90fa355f2e60b26728d6e41ee6f1643ef04d098238ceb5a7a6d978059",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:547ccefbbc852562a28c3e0bf8f770635fd6f459974c07ded894f35fee688f89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkCountableInstance (declNames : Array Name) : CommandElabM Bool := do
  let mut seen : NameSet := {}
  let mut toVisit : Array InductiveVal := #[]
  for declName in declNames do
    if seen.contains declName then continue
    let indVal ← getConstInfoInduct declName
    if indVal.isNested || indVal.isReflexive then
      return false -- not supported yet
    seen := seen.append (NameSet.ofList indVal.all)
    toVisit := toVisit.push indVal
  for indVal in toVisit do
    let cmds ← liftTermElabM <| mkCountableCmds indVal (declNames.filter indVal.all.contains)
    withEnableInfoTree false do
      elabCommand <| mkNullNode cmds
  return true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveCountable/Variant8f4e27dfe8b19d5d6f45dd15ccbbd9d3a260730b89fdd9a6e8343335ba587089.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e248d768f7eebf77dcc04ec5174d3909489147a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
