# elabConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:741a5e0036d24d4ea2556aaf01ccad5bb69a6483c65cedadbeb6169f70f05edb",
  "kind": "def",
  "lexical_name": "elabConfig",
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
  "slug": "elabconfig--8419a8fd1f88b1fbb4beb33f",
  "source": {
    "blob": "cabe4195d3557c319acf5e9e948dded3a2a7d5ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Varianta8035883260bdf5cf593ec771d1f06c071d89634ea15273cb82c6ff94e1f9428.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8419a8fd1f88b1fbb4beb33f8b73fec72674f2ca842c9615851f95d3a37d0e8d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Varianta8035883260bdf5cf593ec771d1f06c071d89634ea15273cb82c6ff94e1f9428.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:741a5e0036d24d4ea2556aaf01ccad5bb69a6483c65cedadbeb6169f70f05edb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabConfig (recover : Bool) (structName : Name) (items : Array ConfigItemView) : TermElabM Expr := do
  withoutModifyingStateWithInfoAndMessages <| withLCtx {} {} <| withSaveInfoContext do
    let mkStructInst (source? : Option Term) (fields : TSyntaxArray ``Parser.Term.structInstField) : TermElabM Term :=
      match source? with
      | some source => `({$source with $fields* : $(mkCIdent structName)})
      | none        => `({$fields* : $(mkCIdent structName)})
    let mut source? : Option Term := none
    let mut seenFields : NameSet := {}
    let mut fields : TSyntaxArray ``Parser.Term.structInstField := #[]
    for item in items do
      try
        let option := item.option.getId.eraseMacroScopes
        if option == `config then
          unless fields.isEmpty do
            -- Flush fields. Even though these values will not be used, we still want to elaborate them.
            source? ← mkStructInst source? fields
            seenFields := {}
            fields := #[]
          let valSrc ← withRef item.value `(($item.value : $(mkCIdent structName)))
          if let some source := source? then
            source? ← withRef item.value `({$valSrc, $source with : $(mkCIdent structName)})
          else
            source? := valSrc
        else
          addCompletionInfo <| CompletionInfo.fieldId item.option option {} structName
          let (path, projFn) ← withRef item.option <| expandField structName option
          if item.bool then
            -- Verify that the type is `Bool`
            unless (← getConstInfo projFn).type.bindingBody! == .const ``Bool [] do
              throwErrorAt item.ref m!"Option is not boolean-valued, so `({option} := ...)` syntax must be used"
          let value ←
            match item.value with
            | `(by $seq:tacticSeq) =>
              -- Special case: `(opt := by tacs)` uses the `tacs` syntax itself
              withRef item.value <| `(Unhygienic.run `(tacticSeq| $seq))
            | value => pure value
          if seenFields.contains path then
            -- Flush fields. There is a duplicate, but we still want to elaborate both.
            source? ← mkStructInst source? fields
            seenFields := {}
            fields := #[]
          fields := fields.push <| ← `(Parser.Term.structInstField|
            $(mkCIdentFrom item.option path (canonical := true)):ident := $value)
          seenFields := seenFields.insert path
      catch ex =>
        if recover then
          logException ex
        else
          throw ex
    let stx : Term ← mkStructInst source? fields
    let e ← Term.withSynthesize <| Term.elabTermEnsuringType stx (mkConst structName)
    instantiateMVars e

section
-- We automatically disable the following option for `macro`s but the subsequent `def` both contains
-- a quotation and is called only by `macro`s, so we disable the option for it manually. Note that
-- we can't use `in` as it is parsed as a single command and so the option would not influence the
-- parser.
set_option internal.parseQuotWithCurrentStage false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Varianta8035883260bdf5cf593ec771d1f06c071d89634ea15273cb82c6ff94e1f9428.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Varianta8035883260bdf5cf593ec771d1f06c071d89634ea15273cb82c6ff94e1f9428.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cabe4195d3557c319acf5e9e948dded3a2a7d5ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
