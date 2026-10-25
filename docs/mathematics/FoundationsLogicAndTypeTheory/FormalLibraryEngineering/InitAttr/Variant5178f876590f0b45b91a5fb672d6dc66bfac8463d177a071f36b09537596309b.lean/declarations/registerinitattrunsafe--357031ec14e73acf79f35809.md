# registerInitAttrUnsafe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:366b748f57509f1d018ff57b9baacf2473b55964a74ae013e242bf12c0908de1",
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
  "slug": "registerinitattrunsafe--357031ec14e73acf79f35809",
  "source": {
    "blob": "5f0710a4cd7303b4e4711b63771e0b8752d98c91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:357031ec14e73acf79f35809b7494eea8483979c087a91297e37270f37a04c91",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:366b748f57509f1d018ff57b9baacf2473b55964a74ae013e242bf12c0908de1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–89.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InitAttr/Variant5178f876590f0b45b91a5fb672d6dc66bfac8463d177a071f36b09537596309b.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f0710a4cd7303b4e4711b63771e0b8752d98c91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
