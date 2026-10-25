# mkDeclExt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a73cf0e7a5f5077f41dd2bf20c7af1efa85382eab809e751e3d519cca0799c8",
  "kind": "def",
  "lexical_name": "mkDeclExt",
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
  "slug": "mkdeclext--287e2cf6c786290dfb509b12",
  "source": {
    "blob": "860b0097b857ac2b475edcbf10c3c5a9382ed860",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseExt/Variant63a604d81f68225d748622f5b6971623b6e3f26dfaa635f8940c310b0e1b3052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:287e2cf6c786290dfb509b12b7d464fb467ef42986cb65a8a1299af9792782b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseExt/Variant63a604d81f68225d748622f5b6971623b6e3f26dfaa635f8940c310b0e1b3052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a73cf0e7a5f5077f41dd2bf20c7af1efa85382eab809e751e3d519cca0799c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkDeclExt (phase : Phase) (name : Name := by exact decl_name%) :
    IO (DeclExt phase.toPurity) :=
  registerPersistentEnvExtension {
    name,
    mkInitial := pure {},
    addImportedFn := fun _ => pure {},
    addEntryFn := fun s decl => s.insert decl.name decl
    exportEntriesFnEx env s := Id.run do
      let all := sortedEntries s declLt
      let exported := all.filterMap fun decl => do
        guard <| isDeclPublic env decl.name
        if isDeclTransparent env phase decl.name then
          some decl
        else
          some { decl with value := .extern { entries := [.opaque] } }
      return { exported, server := exported, «private» := all }
    statsFn := statsFn,
    asyncMode := .sync,
    replay? := some (replayFn phase)
  }


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseExt/Variant63a604d81f68225d748622f5b6971623b6e3f26dfaa635f8940c310b0e1b3052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseExt/Variant63a604d81f68225d748622f5b6971623b6e3f26dfaa635f8940c310b0e1b3052.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `860b0097b857ac2b475edcbf10c3c5a9382ed860` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
