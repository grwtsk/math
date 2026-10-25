# mkGrindAttr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a16be83b911f4c76e3c55649d336a9f64e9d265e9c75e91a8c4dede56e307711",
  "kind": "def",
  "lexical_name": "mkGrindAttr",
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
  "slug": "mkgrindattr--58d8b11d9c3a0bcc22d5776e",
  "source": {
    "blob": "13c58404849f60680ed7db74df3123c0f28782db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58d8b11d9c3a0bcc22d5776e42553821db7a7fafc55cf23679f153084b2db3ec",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a16be83b911f4c76e3c55649d336a9f64e9d265e9c75e91a8c4dede56e307711`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkGrindAttr (attrName : Name) (minIndexable : Bool) (showInfo : Bool) (ext : Extension) (ref : Name := by exact decl_name%) : IO Unit :=
  registerBuiltinAttribute {
    ref  := ref
    name := match minIndexable, showInfo with
      | false, false => attrName
      | false, true  => attrName.appendAfter "?"
      | true,  false => attrName.appendAfter "!"
      | true,  true  => attrName.appendAfter "!?"
    descr :=
      let header := match minIndexable, showInfo with
        | false, false => s!"The `[{attrName}]` attribute is used to annotate declarations."
        | false, true  => s!"The `[{attrName}?]` attribute is identical to the `[{attrName}]` attribute, but displays inferred pattern information."
        | true,  false => s!"The `[{attrName}!]` attribute is used to annotate declarations, but selecting minimal indexable subterms."
        | true,  true  => s!"The `[{attrName}!?]` attribute is identical to the `[{attrName}!]` attribute, but displays inferred pattern information."
      header ++ s!"\
      \
      When applied to an equational theorem, `[{attrName} =]`, `[{attrName} =_]`, or `[{attrName} _=_]`\
      will mark the theorem for use in heuristic instantiations by the `{attrName}` tactic,
      using respectively the left-hand side, the right-hand side, or both sides of the theorem.\
      When applied to a function, `[{attrName} =]` automatically annotates the equational theorems associated with that function.\
      When applied to a theorem `[{attrName} ←]` will instantiate the theorem whenever it encounters the conclusion of the theorem
      (that is, it will use the theorem for backwards reasoning).\
      When applied to a theorem `[{attrName} →]` will instantiate the theorem whenever it encounters sufficiently many of the propositional hypotheses
      (that is, it will use the theorem for forwards reasoning).\
      \
      The attribute `[{attrName}]` by itself will effectively try `[{attrName} ←]` (if the conclusion is sufficient for instantiation) and then `[{attrName} →]`.\
      \
      The `grind` tactic utilizes annotated theorems to add instances of matching patterns into the local context during proof search.\
      For example, if a theorem `@[{attrName} =] theorem foo_idempotent : foo (foo x) = foo x` is annotated,\
      `grind` will add an instance of this theorem to the local context whenever it encounters the pattern `foo (foo x)`."
    applicationTime := .afterCompilation
    add := fun declName stx attrKind => MetaM.run' do
      recordExtraModUseFromDecl (isMeta := false) declName
      -- `[grind] def` should be allowed without `[expose]` so make body accessible unconditionally.
      -- When the body is not available (i.e. the def equations are private), the attribute will not
      -- be exported; see `ematchTheoremsExt.exportEntry?`.
      withoutExporting do
      match (← getAttrKindFromOpt stx) with
      | .symbol prio =>
        unless attrName == `grind do
          throwError "symbol priorities must be set using the default `[grind]` attribute"
        addSymbolPriorityAttr declName attrKind prio
      | .norm post inv =>
        unless attrName == `grind do
          throwError "normalizer must be set using the default `[grind]` attribute"
        addSimpTheorem normExt declName (post := post) (inv := inv) attrKind (eval_prio default)
      | .unfold =>
        unless attrName == `grind do
          throwError "declaration to unfold must be set using the default `[grind]` attribute"
        unless (← addDeclToUnfold normExt declName (post := false) (inv := false) (prio := eval_prio default) (attrKind := attrKind)) do
          throwError "cannot mark declaration to be unfolded by `grind`"
      | .cases eager => ext.addCasesAttr declName eager attrKind
      | .funCC => ext.addFunCCAttr declName attrKind
      | .ext => ext.addExtAttr declName attrKind
      | .ematch .user => throwInvalidUsrModifier
      | .ematch k => ext.addEMatchAttr declName attrKind k (← getGlobalSymbolPriorities) (minIndexable := minIndexable) (showInfo := showInfo)
      | .intro =>
        if let some info ← isCasesAttrPredicateCandidate? declName false then
          for ctor in info.ctors do
            ext.addEMatchAttr ctor attrKind (.default false) (← getGlobalSymbolPriorities) (minIndexable := minIndexable) (showInfo := showInfo)
        else
          throwError "invalid `[{attrName} intro]`, `{.ofConstName declName}` is not an inductive predicate"
      | .infer =>
        if let some declName ← isCasesAttrCandidate? declName false then
          ext.addCasesAttr declName false attrKind
          if let some info ← isInductivePredicate? declName then
            -- If it is an inductive predicate,
            -- we also add the constructors (intro rules) as E-matching rules
            for ctor in info.ctors do
              ext.addEMatchAttr ctor attrKind (.default false) (← getGlobalSymbolPriorities) (minIndexable := minIndexable) (showInfo := showInfo)
        else
          ext.addEMatchAttrAndSuggest stx declName attrKind (← getGlobalSymbolPriorities) (minIndexable := minIndexable) (showInfo := showInfo)
      | .inj => ext.addInjectiveAttr declName attrKind
    erase := fun declName => MetaM.run' do
      if showInfo then
        throwError "`[{attrName}?]` is a helper attribute for displaying inferred patterns, if you want to remove the attribute, consider using `[{attrName}]` instead"
      if (← isCasesAttrCandidate declName false) then
        ext.eraseCasesAttr declName
      else if (← ext.isExtTheorem declName) then
        ext.eraseExtAttr declName
      else if (← ext.isInjectiveTheorem declName) then
        ext.eraseInjectiveAttr declName
      else if (← ext.hasFunCCAttr declName) then
        ext.eraseFunCCAttr declName
      else
        ext.eraseEMatchAttr declName
  }

/-
private def registerDefaultGrindAttr (minIndexable : Bool) (showInfo : Bool) : IO Unit :=
  mkGrindAttr `grind minIndexable showInfo

builtin_initialize
  registerDefaultGrindAttr (minIndexable := false) (showInfo := true)
  registerDefaultGrindAttr (minIndexable := false) (showInfo := false)
  registerDefaultGrindAttr (minIndexable := true) (showInfo := true)
  registerDefaultGrindAttr (minIndexable := true) (showInfo := false)
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant78a56c5d45add654f9841c944645369cf0b7d279d4f0ca1604207b3b077470c0.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13c58404849f60680ed7db74df3123c0f28782db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
