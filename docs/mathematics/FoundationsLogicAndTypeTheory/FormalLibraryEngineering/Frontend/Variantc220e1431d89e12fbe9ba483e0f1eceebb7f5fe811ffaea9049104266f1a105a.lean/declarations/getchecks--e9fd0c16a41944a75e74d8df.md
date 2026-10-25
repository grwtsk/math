# getChecks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b167058be7b9ce3d3045a8b983d3a63abe10d6f23b3efed17eb1f2b8b4ce0454",
  "kind": "def",
  "lexical_name": "getChecks",
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
  "slug": "getchecks--e9fd0c16a41944a75e74d8df",
  "source": {
    "blob": "c22cdb258576b0217a819ba616a6587b1487e025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc220e1431d89e12fbe9ba483e0f1eceebb7f5fe811ffaea9049104266f1a105a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9fd0c16a41944a75e74d8df2a6f35316aa6bfbc999fc2ee110c83f74be4c2ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc220e1431d89e12fbe9ba483e0f1eceebb7f5fe811ffaea9049104266f1a105a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b167058be7b9ce3d3045a8b983d3a63abe10d6f23b3efed17eb1f2b8b4ce0454`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getChecks (slow : Bool) (runOnly : Option (List Name)) (runAlways : Option (List Name)) :
    CoreM (Array NamedLinter) := do
  let mut result := #[]
  for (name, declName, default) in batteriesLinterExt.getState (← getEnv) do
    let shouldRun := match (runOnly, runAlways) with
      | (some only, some always) => only.contains name && (always.contains name || default)
      | (some only, none) => only.contains name
      | (none, some always) => default || always.contains name
      | _ => default
    if shouldRun then
      let linter ← getLinter name declName
      if slow || linter.isFast then
        let _ := Inhabited.mk linter
        result := result.binInsert (·.name.lt ·.name) linter
  pure result

/-- Traces via `IO.println` if `inIO` is `true`, and via `trace[...]` otherwise. It seems that
`trace` messages in a running `CoreM` are not propagated through to `IO` in the current setup. We
use `IO.println` directly instead of running `printTraces` at the end of our `CoreM` action so that
trace messages are printed to stdout immediately, and are not lost if any part of the action hangs.

This declaration is `macro_inline`, so it should have the same thunky behavior as `trace[...]`. -/
@[macro_inline, expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc220e1431d89e12fbe9ba483e0f1eceebb7f5fe811ffaea9049104266f1a105a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantc220e1431d89e12fbe9ba483e0f1eceebb7f5fe811ffaea9049104266f1a105a.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c22cdb258576b0217a819ba616a6587b1487e025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
