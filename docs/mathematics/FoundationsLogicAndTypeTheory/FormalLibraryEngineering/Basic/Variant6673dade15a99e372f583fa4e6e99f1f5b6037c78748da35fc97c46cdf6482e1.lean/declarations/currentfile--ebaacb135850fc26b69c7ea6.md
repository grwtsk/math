# currentFile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9e992508c3d92b144c7887f5d69fd9e56da8bbf70ce48ece7635566497dd8c0",
  "kind": "def",
  "lexical_name": "currentFile",
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
  "slug": "currentfile--ebaacb135850fc26b69c7ea6",
  "source": {
    "blob": "1be4e7a36525456e98d78c93c339db405c7e6724",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 382,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebaacb135850fc26b69c7ea65ca47f61445b0fad37bdc044fd4c5a00c5e0a2e9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9e992508c3d92b144c7887f5d69fd9e56da8bbf70ce48ece7635566497dd8c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def currentFile : Selector := fun _ cfg => do
  let env ← getEnv
  let max := cfg.maxSuggestions
  -- Use map₂ from the staged map, which contains locally defined constants
  let mut suggestions := #[]
  for (name, _) in env.constants.map₂ do
    if suggestions.size >= max then
      break
    -- Allow private names since they're accessible from the current module
    if isDeniedPremise env name (allowPrivate := true) then
      continue
    if wasOriginallyTheorem env name then
      suggestions := suggestions.push { name := name, score := 1.0 }
  return suggestions

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6673dade15a99e372f583fa4e6e99f1f5b6037c78748da35fc97c46cdf6482e1.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1be4e7a36525456e98d78c93c339db405c7e6724` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
