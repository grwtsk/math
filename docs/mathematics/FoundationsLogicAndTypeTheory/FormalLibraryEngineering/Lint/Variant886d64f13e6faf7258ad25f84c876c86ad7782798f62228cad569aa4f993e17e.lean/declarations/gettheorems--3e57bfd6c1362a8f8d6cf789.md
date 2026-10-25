# getTheorems

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d9cd0761d6174a8e0aaaae3f8e5993366a23bacb07123c5670ac4d36614afa9",
  "kind": "def",
  "lexical_name": "getTheorems",
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
  "slug": "gettheorems--3e57bfd6c1362a8f8d6cf789",
  "source": {
    "blob": "f08305186716589ebd6c1f2181e9647d006be01e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 167,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e57bfd6c1362a8f8d6cf78971985ead344b0c7e2bcdf9a24c67eaca20da7af3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d9cd0761d6174a8e0aaaae3f8e5993366a23bacb07123c5670ac4d36614afa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getTheorems (prefixes? : Option (Array Name)) (inModule : Bool) : CoreM (List Name) := do
  let skip := skipExt.getState (← getEnv)
  let skipSuffixes := skipSuffixExt.getState (← getEnv)
  let origins := (← Grind.grindExt.getEMatchTheorems).getOrigins
  let env ← getEnv
  return origins.filterMap fun origin => Id.run do
    let .decl declName := origin | return none
    if skip.contains declName then return none
    -- Check if declName's last component ends with any of the skip suffixes
    if skipSuffixes.any fun suff => nameEndsWithSuffix declName suff then return none
    let some prefixes := prefixes? | return some declName
    if inModule then
      let some modIdx := env.getModuleIdxFor? declName | return none
      let modName := env.header.moduleNames[modIdx]!
      if prefixes.any fun pre => pre.isPrefixOf modName then
        return some declName
      else
        return none
    else
      let keep := prefixes.any fun pre =>
        if pre == `_root_ then
          declName.components.length == 1
        else
          pre.isPrefixOf declName
      unless keep do return none
      return some declName

@[builtin_command_elab Lean.Grind.grindLintCheck]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variant886d64f13e6faf7258ad25f84c876c86ad7782798f62228cad569aa4f993e17e.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f08305186716589ebd6c1f2181e9647d006be01e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
