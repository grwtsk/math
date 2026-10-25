# getChecks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55625b9271bdad008fafc4c3272c0404d241d94b4345df19a450431e641a9f1b",
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
  "slug": "getchecks--87927bbe75af37a079faf8e3",
  "source": {
    "blob": "9d9fd3824554a343c4e6b96b13113b3c1ccc8611",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87927bbe75af37a079faf8e3c4bdee72dd8dd8704f8c8c19b52b48b3091a4f2d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55625b9271bdad008fafc4c3272c0404d241d94b4345df19a450431e641a9f1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–95.

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

/--
Runs all the specified linters on all the specified declarations in parallel,
producing a list of results.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Varianta9fa9e3b6bf50d71bd8f3e50073d0c239d6146bc440431e8ed7bfde3e5d7ca97.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d9fd3824554a343c4e6b96b13113b3c1ccc8611` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
