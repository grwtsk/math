# transformDeclRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fc28f9f084f233b43df5f1eb295a110bb6dd0d9166879fcae312e3e5b9d945c",
  "kind": "def",
  "lexical_name": "transformDeclRec",
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
  "slug": "transformdeclrec--651cc08c0e463dccc8b9b58c",
  "source": {
    "blob": "85e7fb128cfe562b177613129615fa16e03e7b10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 874,
    "line": 773,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:651cc08c0e463dccc8b9b58c61cce48a39b6ad56a6d8a5ea20c20bd66f67ca91",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fc28f9f084f233b43df5f1eb295a110bb6dd0d9166879fcae312e3e5b9d945c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 773–874.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def transformDeclRec (t : TranslateData) (cfg : Config) (rootSrc rootTgt src : Name)
    (reorder : ArgReorder := {}) (rename : NameMap Name := {}) : CoreM Unit := do
  let env ← getEnv
  trace[translate_detail] "visiting {src}"
  -- if we have already translated this declaration, we do nothing.
  if (findTranslation? env t src).isSome && src != rootSrc then
    return
  -- if this declaration is not `rootSrc` and not an internal declaration, we return an error,
  -- since we should have already translated this declaration.
  if src != rootSrc && !src.isInternalDetail then
    throwError "The declaration {rootSrc} depends on the declaration {src} \
    which is in the namespace {rootSrc}, but does not have the `@[{t.attrName}]` attribute. \
    This is not supported.\nWorkaround: move {src} to a different namespace."
  -- we find, or guess, the translated name of `src`
  let tgt ← findTargetName env t src rootSrc rootTgt
  -- we skip if we already transformed this declaration before.
  if env.setExporting false |>.contains tgt then
    if tgt == src then
      -- Note: this can happen for equation lemmas of declarations without a translation.
      trace[translate_detail] "Auxiliary declaration {src} will be translated to itself."
    else
      trace[translate_detail] "Already visited {tgt} as translation of {src}."
    return
  let srcDecl ← withoutExporting do getConstInfo src
  -- we first unfold all auxlemmas, since they are not always able to be translated on their own
  let srcDecl ← withoutExporting do MetaM.run' do declUnfoldSimpAuxLemmas srcDecl
  -- we then transform all auxiliary declarations generated when elaborating `rootSrc`
  for n in ← findAuxDecls srcDecl rootSrc do
    transformDeclRec t cfg rootSrc rootTgt n
  -- expose target body when source body is exposed
  withExporting (isExporting := (← getEnv).setExporting true |>.find? src |>.any (·.hasValue)) do
  -- We still lack a heuristic that automatically infers the `dontTranslate`,
  -- so for now we do a best guess based on argument names.
  let dontTranslate ← if cfg.dontTranslate.isEmpty then pure [] else
    if src == rootSrc then pure cfg.dontTranslate else
      let namesPre := (← getConstInfo rootSrc).type.getForallBinderNames
      let namesSrc := (← getConstInfo src).type.getForallBinderNames
      pure <| cfg.dontTranslate.filterMap (namesPre[·]? >>= namesSrc.idxOf?)
  -- now transform the source declaration
  let (tgtDecl, relevantArg?) ←
    MetaM.run' <| updateAndAddDecl t tgt srcDecl reorder dontTranslate rename
  let relevantArg ←
    if src == rootSrc then
      getRelevantArg t cfg relevantArg? src
    else
      pure (relevantArg?.getD .noArg)
  insertTranslation t src tgt { reorder } relevantArg cfg.ref
  if src == rootSrc && srcDecl.isThm && tgtDecl.type == srcDecl.type then
    Linter.logLintIf linter.translateRedundant cfg.ref m!"`{t.attrName}` did not change the type \
      of theorem `{.ofConstName src}`. Please remove the attribute."
  /- If `src` is explicitly marked as `noncomputable`, then add the new decl as a declaration but
  do not compile it, and mark is as noncomputable. Otherwise, only log errors in compiling if `src`
  has executable code.

  Note that `noncomputable section` does not explicitly mark noncomputable definitions as
  `noncomputable`, but simply abstains from logging compilation errors.

  This is not a perfect solution, as ideally we *should* complain when `src` should
  produce executable code but fails to do so (e.g. outside of `noncomputable section`). However,
  the `messages` and `infoState` are reset before this runs, so we cannot check for compilation
  errors on `src`. The scope set by `noncomputable` section lives in the `CommandElabM` state
  (which is inaccessible here), so we cannot test for `noncomputable section` directly. See [Zulip](https://leanprover.zulipchat.com/#narrow/channel/287929-mathlib4/topic/to_additive.20and.20noncomputable/with/310541981). -/
  if isNoncomputable (← getEnv) src then
    modifyEnv (addNoncomputable · tgt)
  else
    if isMarkedMeta (← getEnv) src then
      -- We need to mark `tgt` as `meta` before running `compileDecl`
      modifyEnv (markMeta · tgt)
    compileDecl tgtDecl.toDeclaration! (logErrors := (IR.findEnvDecl (← getEnv) src).isSome)
  if let .defnInfo { hints := .abbrev, .. } := tgtDecl then
    if (← getReducibilityStatus src) == .reducible then
      setReducibilityStatus tgt .reducible
    if Compiler.getInlineAttribute? (← getEnv) src == some .inline then
      MetaM.run' <| Meta.setInlineAttribute tgt
  -- now add declaration ranges so jump-to-definition works
  -- note: we currently also do this for auxiliary declarations, while they are not normally
  -- generated for those. We could change that.
  addDeclarationRangesFromSyntax tgt (← getRef) cfg.ref
  if isProtected (← getEnv) src then
    modifyEnv (addProtected · tgt)
  if defeqAttr.hasTag (← getEnv) src then
    /- It can be that `src` holds reflexively but `tgt` doesn't, so we need to use `inferDefEqAttr`.
    For example in `Ici_inter_Iic : Ici a ∩ Iic b = Icc a b := rfl`. -/
    MetaM.run' <| inferDefEqAttr tgt
    /- Under the strict `@[defeq]` inference of lean4#13492, `inferDefEqAttr` tags the
    additive translation only `@[backward_defeq]` even when the multiplicative source is
    `@[defeq]` and the additive proof is rfl-shaped, because `withReducibleAndInstances`
    `isDefEq` checks fail systematically for `to_additive`-generated additive lemmas
    (the additive instance projections don't reduce at instance transparency).
    To keep the simp/dsimp behaviour symmetric between additive and multiplicative
    versions, promote `tgt` to `@[defeq]` whenever the source is `@[defeq]` and the
    translated proof is at least rfl-shaped (i.e. `@[backward_defeq]` was inferred). -/
    if backwardDefeqAttr.hasTag (← getEnv) tgt && !defeqAttr.hasTag (← getEnv) tgt then
      defeqAttr.setTag tgt
  if let some matcherInfo ← getMatcherInfo? src then
    Match.addMatcherInfo tgt matcherInfo
  -- necessary so that e.g. match equations can be generated for `tgt`
  enableRealizationsForConst tgt

/-- Copy the instance attribute in a `to_additive`

[todo] it seems not to work when the `to_additive` is added as an attribute later. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean#L773).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e7fb128cfe562b177613129615fa16e03e7b10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
