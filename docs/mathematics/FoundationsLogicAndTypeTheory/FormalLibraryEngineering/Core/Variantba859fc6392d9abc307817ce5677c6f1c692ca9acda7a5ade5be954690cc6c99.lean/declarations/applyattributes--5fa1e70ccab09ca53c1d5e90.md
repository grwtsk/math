# applyAttributes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3cd6a042fcbb13365ee7b1abf7004294b9145844f5d85d4f316bb6df022c620",
  "kind": "def",
  "lexical_name": "applyAttributes",
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
  "slug": "applyattributes--5fa1e70ccab09ca53c1d5e90",
  "source": {
    "blob": "85e7fb128cfe562b177613129615fa16e03e7b10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1285,
    "line": 1208,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fa1e70ccab09ca53c1d5e902794bb6a4741995a33744e0a238cabc69a66d7b9",
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

Occurrence: `declaration:f3cd6a042fcbb13365ee7b1abf7004294b9145844f5d85d4f316bb6df022c620`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1208–1285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def applyAttributes (t : TranslateData) (cfg : Config) (src tgt : Name) :
    TermElabM (Array Name) := do
  if !cfg.existing && !cfg.none then
    -- Copy the `instance` attribute, since it is nice to directly tag `instance` declarations.
    copyInstanceAttribute src tgt
    copyAliasAttribute t src tgt
  -- Warn users if the original declaration has an attribute
  if !cfg.existing && !cfg.none && linter.existingAttributeWarning.get (← getOptions) then
    let appliedAttrs ← getAllSimpAttrs src
    if appliedAttrs.size > 0 then
      let appliedAttrs := ", ".intercalate (appliedAttrs.toList.map toString)
      -- Note: we're not bothering to print the correct attribute arguments.
      Linter.logLintIf linter.existingAttributeWarning cfg.ref m!"\
        The source declaration {src} was given the simp-attribute(s) {appliedAttrs} before \
        calling @[{t.attrName}].\nThe preferred method is to use something like \
        `@[{t.attrName} (attr := {appliedAttrs})]`\nto apply the attribute to both \
        {src} and the target declaration {tgt}."
    warnAttr cfg.ref Lean.Meta.Ext.extExtension
      (fun b n => (b.tree.values.any fun t => t.declName = n)) t.attrName `ext src tgt
    warnAttr cfg.ref Lean.Meta.Rfl.reflExt (·.values.contains ·) t.attrName `refl src tgt
    warnAttr cfg.ref Lean.Meta.Symm.symmExt (·.values.contains ·) t.attrName `symm src tgt
    warnAttr cfg.ref Batteries.Tactic.transExt (·.values.contains ·) t.attrName `trans src tgt
    warnAttr cfg.ref Lean.Meta.coeExt (·.contains ·) t.attrName `coe src tgt
    warnParametricAttr cfg.ref Lean.Linter.deprecatedAttr t.attrName `deprecated src tgt
    warnAttrCore cfg.ref Term.elabAsElim.hasTag t.attrName `elab_as_elim src tgt
  -- add attributes
  -- the following is similar to `Term.ApplyAttributesCore`, but we hijack the implementation of
  -- `simps` and `to_additive`.
  let attrs ← elabAttrs cfg.attrs
  let (additiveAttrs, attrs) := attrs.partition (·.name == t.attrName)
  let nestedDecls ←
    match h : additiveAttrs.size with
    | 0 => pure #[]
    | 1 =>
      let cfg ← elabTranslationAttr src additiveAttrs[0].stx
      addTranslationAttr t tgt cfg additiveAttrs[0].kind
    | _ => throwError "cannot apply {t.attrName} multiple times."
  let allDecls := #[src, tgt] ++ nestedDecls
  if attrs.size > 0 then
    trace[translate_detail] "Applying attributes {attrs.map (·.stx)} to {allDecls}"
  -- Sort the attributes based on their application time.
  let mut attrs₁ := #[]
  let mut attrs₂ := #[]
  let mut attrs₃ := #[]
  for attr in attrs do
    match getAttributeImpl (← getEnv) attr.name with
    | .error errMsg => throwError errMsg
    | .ok attrImpl =>
      match attrImpl.applicationTime with
      | .beforeElaboration => attrs₁ := attrs₁.push attr
      | .afterTypeChecking => attrs₂ := attrs₂.push attr
      | .afterCompilation => attrs₃ := attrs₃.push attr
  for attr in attrs₁ ++ attrs₂ ++ attrs₃ do
    if let some impl := (← generatingAttrs.get).find? attr.name then
      withRef attr.stx do withLogging do
        translateLemmas t allDecls "simps lemmas" cfg
          (impl · attr.stx attr.kind)
    else
      let mut attr := attr
      -- Set the target of `(attr := deprecated)` when applied to an `alias`.
      if attr.name == `deprecated then
        if let some info ← Batteries.Tactic.Alias.getAliasInfo? src then
          if let `(attr| deprecated%$tk $[$desc:str]? $[(since := $since)]?) := attr.stx then
            attr := { attr with stx := ← `(attr|
              deprecated%$tk $(mkCIdent info.name) $[$desc:str]? $[(since := $since)]?) }
      for decl in allDecls, i in 0...* do
        if i != 0 then
          -- Translate the target of `(attr := deprecated)` if possible.
          if attr.name == `deprecated then
            if let `(attr| deprecated%$tk $name $[$desc]? $[(since := $since)]?) := attr.stx then
              let name ← realizeGlobalConstNoOverload name
              if let some name := findTranslationName? (← getEnv) t name then
                attr := { attr with stx := ← `(attr|
                  deprecated%$tk $(mkCIdent name) $[$desc]? $[(since := $since)]?) }
        Term.applyAttributes decl #[attr]
  return nestedDecls

/-- Copies equation lemmas and attributes from `src` to `tgt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantba859fc6392d9abc307817ce5677c6f1c692ca9acda7a5ade5be954690cc6c99.lean#L1208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e7fb128cfe562b177613129615fa16e03e7b10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
