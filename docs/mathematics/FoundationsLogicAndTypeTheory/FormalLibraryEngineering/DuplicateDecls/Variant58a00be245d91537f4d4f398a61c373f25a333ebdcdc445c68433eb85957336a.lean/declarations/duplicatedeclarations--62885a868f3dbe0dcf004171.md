# duplicateDeclarations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08f6a12749e6aa0f85b482cc34d69bb8d2b71be5f464b6af14a6e3848b0dfc0a",
  "kind": "def",
  "lexical_name": "duplicateDeclarations",
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
  "slug": "duplicatedeclarations--62885a868f3dbe0dcf004171",
  "source": {
    "blob": "d7cd657d6afdfef62e6923d7b28db5d612e4b7ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DuplicateDecls/Variant58a00be245d91537f4d4f398a61c373f25a333ebdcdc445c68433eb85957336a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62885a868f3dbe0dcf004171c60ea65dc1484ebe8155cf050d2d8b290875ed53",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DuplicateDecls/Variant58a00be245d91537f4d4f398a61c373f25a333ebdcdc445c68433eb85957336a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08f6a12749e6aa0f85b482cc34d69bb8d2b71be5f464b6af14a6e3848b0dfc0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def duplicateDeclarations (cfg : Target) : CoreM (Array (Array Name)) := MetaM.run' do
  let env ← getEnv
  let mut visited : Std.HashMap Expr Name := {}
  let mut dups : Std.HashMap Expr (Array Name) := {}
  for (name, cinfo) in env.constants.map₁ do
    if name.isInternalDetail
      || name.isMetaprogramming
      || !allowCompletion env name
      || Linter.isDeprecated env name
      || isAlias cinfo then continue
    if ← isProp cinfo.type then
      unless cfg matches .theorems do continue
    else
      match cfg with
      | .theorems => continue
      | .instances => if (← isClass? cinfo.type).isNone then continue
      | .defs =>
        if (← isClass? cinfo.type).isNone then
          if let some value := cinfo.value? then
            let normValue ← sortBinders value
            let normType ← sortBinders cinfo.type
            let key := .app normValue normType
            if let some name' := visited[key]? then
              dups := dups.alter key (·.getD #[name'] |>.push name)
            else
              visited := visited.insert key name
        continue
    let normType ← sortBinders cinfo.type
    if let some name' := visited[normType]? then
      dups := dups.alter normType (·.getD #[name'] |>.push name)
    else
      visited := visited.insert normType name
  return dups.valuesArray

/-- Given a module name, return a number that can be used for sorting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DuplicateDecls/Variant58a00be245d91537f4d4f398a61c373f25a333ebdcdc445c68433eb85957336a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DuplicateDecls/Variant58a00be245d91537f4d4f398a61c373f25a333ebdcdc445c68433eb85957336a.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7cd657d6afdfef62e6923d7b28db5d612e4b7ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
