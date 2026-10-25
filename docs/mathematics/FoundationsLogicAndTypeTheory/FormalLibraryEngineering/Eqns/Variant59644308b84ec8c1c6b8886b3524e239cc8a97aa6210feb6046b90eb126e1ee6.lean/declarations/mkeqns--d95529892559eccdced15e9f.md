# mkEqns

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bf4be9d55602a26b989587dc20ffb27d67acb35a60643af7674fc35d3f2a8df",
  "kind": "def",
  "lexical_name": "mkEqns",
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
  "slug": "mkeqns--d95529892559eccdced15e9f",
  "source": {
    "blob": "7a2507e3b5079fdac4a97cedbb2629942a736fbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 351,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d95529892559eccdced15e9fbfc2eac9eba3a7edb6cbc9f049d59308ab58b1e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bf4be9d55602a26b989587dc20ffb27d67acb35a60643af7674fc35d3f2a8df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkEqns (declName : Name) (declNames : Array Name) : MetaM (Array Name) := do
  trace[Elab.definition.eqns] "mkEqns: {.ofConstName declName}"
  let info ← getConstInfoDefn declName
  let us := info.levelParams.map mkLevelParam
  withOptions (tactic.hygienic.set · false) do
  let target ← unfoldThmType declName
  let eqnTypes ← withNewMCtxDepth <|
    forallTelescope (cleanupAnnotations := true) target fun xs target => do
      let goal ← mkFreshExprSyntheticOpaqueMVar target
      withReducible do
        mkEqnTypes declNames goal.mvarId!
  let mut thmNames := #[]
  for h : i in *...eqnTypes.size do
    let type := eqnTypes[i]
    trace[Elab.definition.eqns] "eqnType[{i}]: {eqnTypes[i]}"
    let name := mkEqLikeNameFor (← getEnv) declName s!"{eqnThmSuffixBasePrefix}{i+1}"
    thmNames := thmNames.push name
    -- determinism: `type` should be independent of the environment changes since `baseName` was
    -- added
    realizeConst declName name (withEqnOptions declName (doRealize name info type))
  return thmNames
where
  doRealize name info type := withOptions (tactic.hygienic.set · false) do
    let value ← mkEqnProof declName type
    let (type, value) ← removeUnusedEqnHypotheses type value
    addDecl <| (←mkThmOrUnsafeDef {
      name, type, value
      levelParams := info.levelParams
    })
    inferDefEqAttr name

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant59644308b84ec8c1c6b8886b3524e239cc8a97aa6210feb6046b90eb126e1ee6.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a2507e3b5079fdac4a97cedbb2629942a736fbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
