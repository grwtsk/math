# withParents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c13711f3fa3d87a6412392dff58fc40741783b40c03d5fc8153dee7d24dbe48e",
  "kind": "def",
  "lexical_name": "withParents",
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
  "slug": "withparents--1a62066d5d1ec1181d8cb4b5",
  "source": {
    "blob": "d4e9e482af56c000ec44903583603375e1941536",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 920,
    "line": 876,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a62066d5d1ec1181d8cb4b5264a29282b13a3251351f7000d3ed28734f4563d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c13711f3fa3d87a6412392dff58fc40741783b40c03d5fc8153dee7d24dbe48e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 876–920.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def withParents (view : StructView) (rs : Array ElabHeaderResult) (indFVar : Expr) (k : StructElabM α) : StructElabM α := do
  go 0
where
  go (i : Nat) : StructElabM α := do
    if h : i < view.parents.size then
      let parentView := view.parents[i]
      withRef parentView.ref do
      -- The only use case for autobound implicits for parents might be outParams, but outParam is not propagated.
      let parentType ← Term.withoutAutoBoundImplicit <| Term.elabType parentView.type
      Term.synthesizeSyntheticMVarsNoPostponing
      let parentType ← whnf parentType
      if parentType.getAppFn == indFVar then
        logWarning "Structure extends itself; skipping"
        return ← go (i + 1)
      if rs.any (fun r => r.indFVar == parentType.getAppFn) then
        throwError "Structure cannot extend types defined in the same mutual block"
      let parentStructName ← try
          getStructureName parentType
        catch ex =>
          throwErrorAt parentView.type ex.toMessageData
            ++ .hint' "This error is possibly due to a change in the `structure` syntax. \
            Now the syntax is `structure S : Type extends P` rather than `structure S extends P : Type`.\n\n\
            The purpose of the change is to accommodate `structure S extends toP : P` syntax for naming parent projections."
      let (rawToParentName, toParentName) := parentView.mkToParentNames parentStructName
      if (← get).parents.any (·.structName == parentStructName) then
        logWarning m!"Duplicate parent structure `{.ofConstName parentStructName}`; skipping"
        go (i + 1)
      else if (← get).parents.any (·.name == toParentName) then
        throwError m!"Field `{toParentName}` has already been declared"
          ++ .hint' "The `toParent : P` syntax can be used to adjust the name for the parent projection"
      else
        withParent view parentView.projRef rawToParentName toParentName parentType fun parentFieldInfo => do
          addParentInfo {
            ref := parentView.projRef
            addTermInfo := parentView.name?.isSome
            fvar := parentFieldInfo.fvar
            subobject := parentFieldInfo.kind.isSubobject
            structName := parentStructName
            name := toParentName
            declName := parentFieldInfo.declName
          }
          go (i + 1)
    else
      k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean#L876).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e9e482af56c000ec44903583603375e1941536` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
