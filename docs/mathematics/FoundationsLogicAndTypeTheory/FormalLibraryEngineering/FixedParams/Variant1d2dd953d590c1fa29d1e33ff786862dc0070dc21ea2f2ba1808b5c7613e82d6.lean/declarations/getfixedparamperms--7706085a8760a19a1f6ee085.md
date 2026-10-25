# getFixedParamPerms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e0b958ef019d3ae906d522a7fd9c5caa97f593c2ef603c4c214276ed3d17090",
  "kind": "def",
  "lexical_name": "getFixedParamPerms",
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
  "slug": "getfixedparamperms--7706085a8760a19a1f6ee085",
  "source": {
    "blob": "40a8b5d26013b73ac5fa85ff0e020f1e3b240148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 279,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant1d2dd953d590c1fa29d1e33ff786862dc0070dc21ea2f2ba1808b5c7613e82d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7706085a8760a19a1f6ee085ca63b07904cad8bb9fbfa53b5bb0449c691efb1b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant1d2dd953d590c1fa29d1e33ff786862dc0070dc21ea2f2ba1808b5c7613e82d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e0b958ef019d3ae906d522a7fd9c5caa97f593c2ef603c4c214276ed3d17090`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getFixedParamPerms (preDefs : Array PreDefinition) : MetaM FixedParamPerms := do
  let info ← getFixedParamsInfo preDefs
  lambdaTelescope preDefs[0]!.value fun xs _ => do
    let paramInfos := info.graph[0]!
    assert! xs.size = paramInfos.size

    let mut firstPerm := #[]
    let mut numFixed := 0
    for paramIdx in *...xs.size, x in xs, paramInfo? in paramInfos do
      if let some paramInfo := paramInfo? then
        assert! paramInfo[0]! = some paramIdx
        firstPerm := firstPerm.push (some numFixed)
        numFixed := numFixed + 1
      else
        firstPerm := firstPerm.push none

    let mut perms := #[firstPerm]
    for h : funIdx in 1...info.graph.size do
      let paramInfos := info.graph[funIdx]
      let mut perm := #[]
      for paramInfo? in paramInfos do
        if let some paramInfo := paramInfo? then
          if let some firstParamIdx := paramInfo[0]! then
            assert! firstPerm[firstParamIdx]!.isSome
            perm := perm.push firstPerm[firstParamIdx]!
          else
            panic! "Incomplete paramInfo"
        else
          perm := perm.push none
      perms := perms.push perm

    return { numFixed, perms, revDeps := info.revDeps }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant1d2dd953d590c1fa29d1e33ff786862dc0070dc21ea2f2ba1808b5c7613e82d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedParams/Variant1d2dd953d590c1fa29d1e33ff786862dc0070dc21ea2f2ba1808b5c7613e82d6.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a8b5d26013b73ac5fa85ff0e020f1e3b240148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
