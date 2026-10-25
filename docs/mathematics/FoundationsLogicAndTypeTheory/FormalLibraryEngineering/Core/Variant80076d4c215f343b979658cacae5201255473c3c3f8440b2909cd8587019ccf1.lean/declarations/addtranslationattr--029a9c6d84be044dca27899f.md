# addTranslationAttr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:061509a62565ba9ed55775cfd6543fdfb27a3f0287f312720f77b70ef9ed23e6",
  "kind": "def",
  "lexical_name": "addTranslationAttr",
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
  "slug": "addtranslationattr--029a9c6d84be044dca27899f",
  "source": {
    "blob": "b666c64abc5bdecd2b7cbf8a39b6630e0227a986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1345,
    "line": 1299,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:029a9c6d84be044dca27899fda73fb9ac941af0f7f2ab516a5b873395f7b1ef2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:061509a62565ba9ed55775cfd6543fdfb27a3f0287f312720f77b70ef9ed23e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1299–1345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def addTranslationAttr (t : TranslateData) (src : Name) (cfg : Config)
    (kind := AttributeKind.global) : AttrM (Array Name) := do
  if (kind != AttributeKind.global) then
    throwError "`{t.attrName}` can only be used as a global attribute"
  withOptions (fun o => if cfg.trace then o.set `trace.translate true else o) do
  let tgt ← targetName t cfg src
  let alreadyExists ← realizeGlobalConst tgt
  if cfg.existing != alreadyExists && !(← isInductive src) && !cfg.self then
    Linter.logLintIf linter.translateExisting cfg.ref <|
      if alreadyExists then
        m!"The translated declaration already exists. Please specify this explicitly using \
           `@[{t.attrName} existing]`."
      else
        "The translated declaration doesn't exist. Please remove the option `existing`."
  if alreadyExists then
    let (reorder, relevantArg) ← MetaM.run' <| checkExistingType t src tgt cfg
    insertTranslation t src tgt reorder relevantArg cfg.ref
    -- since `tgt` already exists, we just need to
    -- add translations `src.x ↦ tgt.x'` for any subfields.
    trace[translate_detail] "declaration {tgt} already exists."
    proceedFields t src tgt cfg
  else
    unless (← withoutExporting do getConstInfo src).hasValue (allowOpaque := true) do
      throwError "`{t.attrName}` cannot translate `{.ofConstName src}` because it has no value."
    let reorder := cfg.reorder?.getD {}
    -- tgt doesn't exist, so let's make it
    transformDeclRec t cfg src tgt src reorder cfg.rename
  if let some doc := cfg.doc then
    if alreadyExists then
      logWarningAt doc <|
        if (← findInternalDocString? (← getEnv) tgt).isSome then
          m!"The target declaration `{.ofConstName tgt}` already has a docstring."
        else
          m!"This docstring should be added directly to `{.ofConstName tgt}`."
    -- TODO: `Syntax.missing` means we do not add binders to the context,
    -- so the docstring is going to have incomplete syntax highlighting.
    addDocString tgt Syntax.missing doc |>.run'.run'
  let nestedNames ← copyMetaData t cfg src tgt
  -- add pop-up information when mousing over the given translated name
  -- (the information will be over the attribute if no translated name is given)
  Term.addTermInfo' cfg.ref (← mkConstWithLevelParams tgt) (isBinder := !alreadyExists)
    |>.run' |>.run'
  return nestedNames.push tgt

end

end Mathlib.Tactic.Translate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean#L1299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b666c64abc5bdecd2b7cbf8a39b6630e0227a986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
