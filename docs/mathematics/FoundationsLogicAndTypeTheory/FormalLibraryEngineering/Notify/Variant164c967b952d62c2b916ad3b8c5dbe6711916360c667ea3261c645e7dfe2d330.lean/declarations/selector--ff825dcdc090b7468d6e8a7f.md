# selector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b0fb448de4b939e7b5600209fbda900271a9f3a187356f320f117e67e554ff5",
  "kind": "def",
  "lexical_name": "selector",
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
  "slug": "selector--ff825dcdc090b7468d6e8a7f",
  "source": {
    "blob": "2daea340b11f9c4ef316a5e6e1968ebb0e515663",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notify/Variant164c967b952d62c2b916ad3b8c5dbe6711916360c667ea3261c645e7dfe2d330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff825dcdc090b7468d6e8a7fdb6c5a3a754d00d3cc9eaf1c42fc55c634ddd59e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notify/Variant164c967b952d62c2b916ad3b8c5dbe6711916360c667ea3261c645e7dfe2d330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b0fb448de4b939e7b5600209fbda900271a9f3a187356f320f117e67e554ff5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def selector (notify : Notify) : Selector Unit := {
  tryFn := do
    return none

  registerFn := fun waiter => do
    notify.state.atomically do
      modify fun st => { st with consumers := st.consumers.enqueue (.select waiter) }

  unregisterFn := do
    notify.state.atomically do
      let st ← get

      let consumers ← st.consumers.filterM fun
        | .normal _ => return true
        | .select waiter => return !(← waiter.checkFinished)

      set { st with consumers }
}

end Notify
end Std
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notify/Variant164c967b952d62c2b916ad3b8c5dbe6711916360c667ea3261c645e7dfe2d330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notify/Variant164c967b952d62c2b916ad3b8c5dbe6711916360c667ea3261c645e7dfe2d330.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2daea340b11f9c4ef316a5e6e1968ebb0e515663` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
