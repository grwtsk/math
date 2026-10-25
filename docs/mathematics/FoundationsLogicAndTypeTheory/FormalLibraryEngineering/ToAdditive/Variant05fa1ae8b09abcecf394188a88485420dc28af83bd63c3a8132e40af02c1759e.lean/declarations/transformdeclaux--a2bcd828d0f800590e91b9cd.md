# transformDeclAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1035ecaec8988970991466f7cdcac73b69bfb0576c82b97e262e563a11c96bdb",
  "kind": "def",
  "lexical_name": "transformDeclAux",
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
  "slug": "transformdeclaux--a2bcd828d0f800590e91b9cd",
  "source": {
    "blob": "8d2dbfc21ec31d53c72b1ae3cdcea7b450370dfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 545,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variant05fa1ae8b09abcecf394188a88485420dc28af83bd63c3a8132e40af02c1759e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2bcd828d0f800590e91b9cd99c836e082d69406e4330dfcd1d69222e5ab7517",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variant05fa1ae8b09abcecf394188a88485420dc28af83bd63c3a8132e40af02c1759e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1035ecaec8988970991466f7cdcac73b69bfb0576c82b97e262e563a11c96bdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def transformDeclAux
    (cfg : Config) (pre tgt_pre : Name) : Name → CoreM Unit := fun src ↦ do
  let env ← getEnv
  trace[to_additive_detail] "visiting {src}"
  -- if we have already translated this declaration, we do nothing.
  if (findTranslation? env src).isSome && src != pre then
      return
  -- if this declaration is not `pre` and not an internal declaration, we return an error,
  -- since we should have already translated this declaration.
  if src != pre && !src.isInternal' then
    throwError "The declaration {pre} depends on the declaration {src} which is in the namespace {
      pre}, but does not have the `@[to_additive]` attribute. This is not supported.\n{""
      }Workaround: move {src} to a different namespace."
  -- we find the additive name of `src`
  let tgt ← findTargetName env src pre tgt_pre
  -- we skip if we already transformed this declaration before.
  if env.contains tgt then
    if tgt == src then
      -- Note: this can happen for equation lemmas of declarations without `@[to_additive]`.
      trace[to_additive_detail] "Auxiliary declaration {src} will be translated to itself."
    else
      trace[to_additive_detail] "Already visited {tgt} as translation of {src}."
    return
  let srcDecl ← getConstInfo src
  -- we first transform all auxiliary declarations generated when elaborating `pre`
  for n in findAuxDecls srcDecl.type pre env.mainModule do
    transformDeclAux cfg pre tgt_pre n
  if let some value := srcDecl.value? then
    for n in findAuxDecls value pre env.mainModule do
      transformDeclAux cfg pre tgt_pre n
  if let .opaqueInfo {value, ..} := srcDecl then
    for n in findAuxDecls value pre env.mainModule do
      transformDeclAux cfg pre tgt_pre n
  -- if the auxiliary declaration doesn't have prefix `pre`, then we have to add this declaration
  -- to the translation dictionary, since otherwise we cannot find the additive name.
  if !pre.isPrefixOf src then
    insertTranslation src tgt
  -- now transform the source declaration
  let trgDecl : ConstantInfo ←
    MetaM.run' <| updateDecl tgt srcDecl <| if src == pre then cfg.reorder else []
  let value ← match trgDecl with
    | .thmInfo { value, .. } | .defnInfo { value, .. } | .opaqueInfo { value, .. } => pure value
    | _ => throwError "Expected {tgt} to have a value."
  trace[to_additive] "generating\n{tgt} : {trgDecl.type} :=\n  {value}"
  try
    -- make sure that the type is correct,
    -- and emit a more helpful error message if it fails
    discard <| MetaM.run' <| inferType value
  catch
    | Exception.error _ msg => throwError "@[to_additive] failed.
      Type mismatch in additive declaration. For help, see the docstring
      of `to_additive.attr`, section `Troubleshooting`.
      Failed to add declaration\n{tgt}:\n{msg}"
    | _ => panic! "unreachable"
  if isNoncomputable env src then
    addDecl trgDecl.toDeclaration!
    setEnv $ addNoncomputable (← getEnv) tgt
  else
    addAndCompile trgDecl.toDeclaration!
  -- now add declaration ranges so jump-to-definition works
  -- note: we currently also do this for auxiliary declarations, while they are not normally
  -- generated for those. We could change that.
  addDeclarationRanges tgt {
    range := ← getDeclarationRange (← getRef)
    selectionRange := ← getDeclarationRange cfg.ref }
  if isProtected (← getEnv) src then
    setEnv $ addProtected (← getEnv) tgt

/-- Copy the instance attribute in a `to_additive`

[todo] it seems not to work when the `to_additive` is added as an attribute later. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variant05fa1ae8b09abcecf394188a88485420dc28af83bd63c3a8132e40af02c1759e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToAdditive/Variant05fa1ae8b09abcecf394188a88485420dc28af83bd63c3a8132e40af02c1759e.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d2dbfc21ec31d53c72b1ae3cdcea7b450370dfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
