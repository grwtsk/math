# getDeprecatedInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7cacbd469081e90070bc87ba5d6d415b6a6e8e0edb5650176891015d83fbeb92",
  "kind": "def",
  "lexical_name": "getDeprecatedInfo",
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
  "slug": "getdeprecatedinfo--87c218d945674e117ec9089e",
  "source": {
    "blob": "a919edf350e4c178bff0d205153e11355a32ab00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindDeprecations/Variant71155d79f364d513551484c2dd8982734a08cdf033478351e421d294a6fa9e4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87c218d945674e117ec9089e4eb43291391a663957f2751afae286c923c0b407",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindDeprecations/Variant71155d79f364d513551484c2dd8982734a08cdf033478351e421d294a6fa9e4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7cacbd469081e90070bc87ba5d6d415b6a6e8e0edb5650176891015d83fbeb92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getDeprecatedInfo (nm : Name) (verbose? : Bool) :
    CommandElabM (Option DeprecationInfo) := do
  let env ← getEnv
  -- if there is a `since` in the deprecation
  if let some {since? := some since, ..} := Linter.deprecatedAttr.getParam? env nm
  then
    -- retrieve the `range` for the declaration
    if let some {range := rg, ..} ← findDeclarationRanges? nm
    then
      -- retrieve the module where the declaration is located
      if let some mod ← findModuleOf? nm
      then
        -- We filter here based on the top dir of the declaration.
        unless repos.contains mod.getRoot do
          return none
        if verbose? then
          logInfo
            s!"In the module '{mod}', the declaration {nm} at {rg.pos}--{rg.endPos} \
              is deprecated since {since}"
        return some { module := mod
                      decl := nm
                      rgStart := rg.pos
                      rgStop := rg.endPos
                      since := since }
  return none

/--
The output is the `HashMap` whose keys are the names of the files containing
deprecated declarations, and whose values are the arrays of ranges
corresponding to the deprecated declarations in that file.
The input `oldDate` and `newDate` are strings of the form "YYYY-MM-DD".
The output contains all the declarations that were deprecated after `oldDate`
and before `newDate`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindDeprecations/Variant71155d79f364d513551484c2dd8982734a08cdf033478351e421d294a6fa9e4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindDeprecations/Variant71155d79f364d513551484c2dd8982734a08cdf033478351e421d294a6fa9e4b.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a919edf350e4c178bff0d205153e11355a32ab00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
