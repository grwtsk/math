# applyAttributes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c31b4b9cdf5fb0effc8aedff490a8552654b170a6954e5657d1005f3eb91c168",
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
  "slug": "applyattributes--9fc785b8efa0c50ad6e73e4e",
  "source": {
    "blob": "b2935c698dfe72503e695031eab3ae2f71a0671a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1295,
    "line": 1229,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantdbe3a7516f598fd781a8df084fb932b6c2b19401bdcac8f13c377929f8caea2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fc785b8efa0c50ad6e73e4e983ee3134a998a8f9a506c2ccaa825e83e53ce29",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantdbe3a7516f598fd781a8df084fb932b6c2b19401bdcac8f13c377929f8caea2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c31b4b9cdf5fb0effc8aedff490a8552654b170a6954e5657d1005f3eb91c168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1229–1295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def applyAttributes (stx : Syntax) (rawAttrs : Array Syntax) (thisAttr src tgt : Name) :
  TermElabM (Array Name) := do
  -- we only copy the `instance` attribute, since `@[to_additive] instance` is nice to allow
  copyInstanceAttribute src tgt
  -- Warn users if the multiplicative version has an attribute
  if linter.existingAttributeWarning.get (← getOptions) then
    let appliedAttrs ← getAllSimpAttrs src
    if appliedAttrs.size > 0 then
      let appliedAttrs := ", ".intercalate (appliedAttrs.toList.map toString)
      -- Note: we're not bothering to print the correct attribute arguments.
      Linter.logLintIf linter.existingAttributeWarning stx m!"\
        The source declaration {src} was given the simp-attribute(s) {appliedAttrs} before \
        calling @[{thisAttr}].\nThe preferred method is to use something like \
        `@[{thisAttr} (attr := {appliedAttrs})]`\nto apply the attribute to both \
        {src} and the target declaration {tgt}."
    warnAttr stx Lean.Elab.Tactic.Ext.extExtension
      (fun b n => (b.tree.values.any fun t => t.declName = n)) thisAttr `ext src tgt
    warnAttr stx Lean.Meta.Rfl.reflExt (·.values.contains ·) thisAttr `refl src tgt
    warnAttr stx Lean.Meta.Symm.symmExt (·.values.contains ·) thisAttr `symm src tgt
    warnAttr stx Batteries.Tactic.transExt (·.values.contains ·) thisAttr `trans src tgt
    warnAttr stx Lean.Meta.coeExt (·.contains ·) thisAttr `coe src tgt
    warnParametricAttr stx Lean.Linter.deprecatedAttr thisAttr `deprecated src tgt
    -- the next line also warns for `@[to_additive, simps]`, because of the application times
    warnParametricAttr stx simpsAttr thisAttr `simps src tgt
    warnExt stx Term.elabAsElim.ext (·.contains ·) thisAttr `elab_as_elim src tgt
  -- add attributes
  -- the following is similar to `Term.ApplyAttributesCore`, but we hijack the implementation of
  -- `simps` and `to_additive`.
  let attrs ← elabAttrs rawAttrs
  let (additiveAttrs, attrs) := attrs.partition (·.name == `to_additive)
  let nestedDecls ←
    match additiveAttrs.size with
      | 0 => pure #[]
      | 1 => addToAdditiveAttr tgt (← elabToAdditive additiveAttrs[0]!.stx) additiveAttrs[0]!.kind
      | _ => throwError "cannot apply {thisAttr} multiple times."
  let allDecls := #[src, tgt] ++ nestedDecls
  if attrs.size > 0 then
    trace[to_additive_detail] "Applying attributes {attrs.map (·.stx)} to {allDecls}"
  for attr in attrs do
    withRef attr.stx do withLogging do
    if attr.name == `simps then
      additivizeLemmas allDecls "simps lemmas" (simpsTacFromSyntax · attr.stx)
      return
    let env ← getEnv
    match getAttributeImpl env attr.name with
    | Except.error errMsg => throwError errMsg
    | Except.ok attrImpl =>
      let runAttr := do
        for decl in allDecls do
          attrImpl.add decl attr.stx attr.kind
      -- not truly an elaborator, but a sensible target for go-to-definition
      let elaborator := attrImpl.ref
      if (← getInfoState).enabled && (← getEnv).contains elaborator then
        withInfoContext (mkInfo := return .ofCommandInfo { elaborator, stx := attr.stx }) do
          try runAttr
          finally if attr.stx[0].isIdent || attr.stx[0].isAtom then
            -- Add an additional node over the leading identifier if there is one
            -- to make it look more function-like.
            -- Do this last because we want user-created infos to take precedence
            pushInfoLeaf <| .ofCommandInfo { elaborator, stx := attr.stx[0] }
      else
        runAttr
  return nestedDecls

/--
Copies equation lemmas and attributes from `src` to `tgt`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantdbe3a7516f598fd781a8df084fb932b6c2b19401bdcac8f13c377929f8caea2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variantdbe3a7516f598fd781a8df084fb932b6c2b19401bdcac8f13c377929f8caea2f.lean#L1229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2935c698dfe72503e695031eab3ae2f71a0671a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
