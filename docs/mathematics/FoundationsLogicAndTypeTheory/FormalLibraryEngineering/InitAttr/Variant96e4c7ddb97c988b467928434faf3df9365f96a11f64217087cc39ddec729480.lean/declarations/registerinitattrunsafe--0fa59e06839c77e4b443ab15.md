# registerInitAttrUnsafe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da771d20b3e81b8ccfbbdbb21ccd719241264ded96013f4e0b839d224ea3059e",
  "kind": "def",
  "lexical_name": "registerInitAttrUnsafe",
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
  "slug": "registerinitattrunsafe--0fa59e06839c77e4b443ab15",
  "source": {
    "blob": "85e2af84af2515ac600c17ff08f48ad42033b091",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fa59e06839c77e4b443ab1555670cf2a14db6a290427e924a2624a9b0cb413b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da771d20b3e81b8ccfbbdbb21ccd719241264ded96013f4e0b839d224ea3059e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def registerInitAttrUnsafe (attrName : Name) (runAfterImport : Bool) (ref : Name) : IO (ParametricAttribute Name) :=
  registerParametricAttribute {
    ref := ref
    name := attrName
    descr := "initialization procedure for global references"
    -- We want to run `[init]` in declaration order
    preserveOrder := true
    getParam := fun declName stx => withoutExporting do
      let decl ← getConstInfo declName
      match (← Attribute.Builtin.getIdent? stx) with
      | some initFnName =>
        let initFnName ← Elab.realizeGlobalConstNoOverloadWithInfo initFnName
        let initDecl ← getConstInfo initFnName
        match getIOTypeArg initDecl.type with
        | none => throwError "initialization function `{initFnName}` must have type of the form `IO <type>`"
        | some initTypeArg =>
          if decl.type == initTypeArg then pure initFnName
          else throwError "initialization function `{initFnName}` type mismatch"
      | none =>
        if isIOUnit decl.type then pure Name.anonymous
        else throwError "initialization function must have type `IO Unit`"
    -- Save `meta initialize` in .olean; `initialize`s of any kind will be stored in .ir by
    -- `exportIREntries` analogously to `Lean.IR.declMapExt` so we can run them when meta-imported,
    -- even without the .olean file.
    filterExport := fun env declName _ =>
      -- TODO: The interpreter currently depends on `[builtin_init]` to be exported for
      -- `prefer_native` handling but this is incorrect with private imports anyway and should be
      -- replaced by consulting a builtin list.
      !runAfterImport || isMarkedMeta env declName
  }

@[implemented_by registerInitAttrUnsafe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant96e4c7ddb97c988b467928434faf3df9365f96a11f64217087cc39ddec729480.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e2af84af2515ac600c17ff08f48ad42033b091` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
