# mkDiagSummary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:688c3a6e7fc7e6cfe98af2314ccccf5b397f320a2873aeec0af84a0d3c1a8bcb",
  "kind": "def",
  "lexical_name": "mkDiagSummary",
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
  "slug": "mkdiagsummary--752ac81690e448123d90abc0",
  "source": {
    "blob": "1cb4711929f294c53b5f45b7792902ed8b598f5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variant0e21d2029ef0623d4fb97e37adab75e1232b58e1635dcb18568c91df7dc0542b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:752ac81690e448123d90abc0075f0cbf0ac6b12f464faf55694af9723813a11c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variant0e21d2029ef0623d4fb97e37adab75e1232b58e1635dcb18568c91df7dc0542b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:688c3a6e7fc7e6cfe98af2314ccccf5b397f320a2873aeec0af84a0d3c1a8bcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkDiagSummary (cls : Name) (counters : PHashMap Name Nat) (p : Name → Bool := fun _ => true) : MetaM DiagSummary := do
  let threshold := diagnostics.threshold.get (← getOptions)
  let entries := collectAboveThreshold counters threshold p Name.lt
  if entries.isEmpty then
    return {}
  else
    let mut data := #[]
    for (declName, counter) in entries do
      data := data.push <| .trace { cls } m!"{.ofConst (← mkConstWithLevelParams declName)} ↦ {counter}" #[]
    return { data, max := entries[0]!.2 }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variant0e21d2029ef0623d4fb97e37adab75e1232b58e1635dcb18568c91df7dc0542b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variant0e21d2029ef0623d4fb97e37adab75e1232b58e1635dcb18568c91df7dc0542b.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cb4711929f294c53b5f45b7792902ed8b598f5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
