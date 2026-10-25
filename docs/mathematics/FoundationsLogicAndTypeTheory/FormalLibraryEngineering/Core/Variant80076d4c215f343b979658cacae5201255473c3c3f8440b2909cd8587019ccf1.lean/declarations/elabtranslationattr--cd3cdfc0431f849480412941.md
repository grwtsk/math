# elabTranslationAttr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:189c10ec8097e18f3965a160952cfdea9a0ab8df29bda19618e9c115fdbb03a7",
  "kind": "def",
  "lexical_name": "elabTranslationAttr",
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
  "slug": "elabtranslationattr--cd3cdfc0431f849480412941",
  "source": {
    "blob": "b666c64abc5bdecd2b7cbf8a39b6630e0227a986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1199,
    "line": 1146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd3cdfc0431f8494804129415e83598daa44743a73f77c5ea4ac2fef3cd499a3",
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

Occurrence: `declaration:189c10ec8097e18f3965a160952cfdea9a0ab8df29bda19618e9c115fdbb03a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1146–1199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabTranslationAttr (declName : Name) (stx : Syntax) : CoreM Config := do
  match stx[2] with
  | `(attrArgs| $hint $[$opts:bracketedOption]* $[$tgt]? $[$doc]?) =>
    MetaM.run' <| forallTelescope (← getConstInfo declName).type fun xs _ => do
    let argNames ← xs.mapM (·.fvarId!.getUserName)
    let mut attrs := #[]
    let mut reorder? := none
    let mut relevantArg? := none
    let mut dontTranslate := []
    let mut rename : NameMap Name := {}
    for opt in opts do
      match opt with
      | `(bracketedOption| (attr := $[$stxs],*)) =>
        attrs := attrs ++ stxs
      | `(bracketedOption| (reorder := $reorder)) =>
        if reorder?.isSome then
          throwErrorAt opt "cannot specify `reorder` multiple times"
        reorder? ← some <$> elabReorder reorder argNames xs (.ofConstName declName)
      | `(bracketedOption| (relevant_arg := $n)) =>
        if relevantArg?.isSome then
          throwErrorAt opt "cannot specify `relevant_arg` multiple times"
        if let `($_:hole) := n then
          relevantArg? := some .noArg
        else
          relevantArg? := some <| .arg (← elabArgStx ⟨n.raw⟩ argNames xs (.ofConstName declName))
      | `(bracketedOption| (dont_translate := $[$types]*)) =>
        dontTranslate := dontTranslate ++
          (← types.toList.mapM (elabArgStx · argNames xs (.ofConstName declName)))
      | `(bracketedOption| (rename := $[$rules],*)) =>
        if !rename.isEmpty then
          throwErrorAt opt "cannot specify `rename` multiple times"
        rename ← elabRename rules declName argNames
      | _ => throwUnsupportedSyntax
    let mut existing := false; let mut self := false; let mut none := false
    match hint with
    | `(translationHint| existing) => existing := true
    | `(translationHint| self) => existing := true; self := true
    | `(translationHint| none) => none := true
    | _ => pure ()
    if (self || none) && !attrs.isEmpty then
      throwError "invalid `(attr := ...)` after `self` or `none`, \
        as there is no other declaration for the attributes.\n\
        Instead, you can write the attributes in the usual way."
    trace[translate_detail]
      "attributes: {attrs}; reorder arguments: {reorder?.elim "none" (·.toString)}"
    return {
      trace := !stx[1].isNone
      target := match tgt with | some tgt => tgt.getId | _ => Name.anonymous
      doc, attrs, reorder?, relevantArg?, dontTranslate, existing, self, none, rename,
      ref := match tgt with | some tgt => tgt.raw | _ => stx[0] }
  | _ => throwUnsupportedSyntax

mutual
/-- Apply attributes to the original and translated declarations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant80076d4c215f343b979658cacae5201255473c3c3f8440b2909cd8587019ccf1.lean#L1146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b666c64abc5bdecd2b7cbf8a39b6630e0227a986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
