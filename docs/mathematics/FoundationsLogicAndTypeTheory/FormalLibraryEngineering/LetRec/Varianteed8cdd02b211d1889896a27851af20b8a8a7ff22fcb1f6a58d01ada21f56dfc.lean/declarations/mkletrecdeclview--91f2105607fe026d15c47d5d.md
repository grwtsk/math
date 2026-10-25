# mkLetRecDeclView

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6582e39ca49799f01b368d2df35194f223cbf252e738fc607ab67e8f3d4f3a0c",
  "kind": "def",
  "lexical_name": "mkLetRecDeclView",
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
  "slug": "mkletrecdeclview--91f2105607fe026d15c47d5d",
  "source": {
    "blob": "5e2c45dbbb76a33e2d41e4a5e0a4faf1a926ee23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetRec/Varianteed8cdd02b211d1889896a27851af20b8a8a7ff22fcb1f6a58d01ada21f56dfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91f2105607fe026d15c47d5d293cff10f2497263aefd30bbba9ab3e88db030e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetRec/Varianteed8cdd02b211d1889896a27851af20b8a8a7ff22fcb1f6a58d01ada21f56dfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6582e39ca49799f01b368d2df35194f223cbf252e738fc607ab67e8f3d4f3a0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkLetRecDeclView (letRec : Syntax) : TermElabM LetRecView := do
  let mut decls : Array LetRecDeclView := #[]
  for attrDeclStx in letRec[1][0].getSepArgs do
    let docStr? := attrDeclStx[0].getOptional?.map (TSyntax.mk ·)
    let attrOptStx := attrDeclStx[1]
    let attrs ← if attrOptStx.isNone then pure #[] else elabDeclAttrs attrOptStx[0]
    let decl := attrDeclStx[2][0]
    if decl.isOfKind `Lean.Parser.Term.letPatDecl then
      throwErrorAt decl "patterns are not allowed in 'let rec' expressions"
    else if decl.isOfKind ``Lean.Parser.Term.letIdDecl || decl.isOfKind ``Lean.Parser.Term.letEqnsDecl then
      let declId := decl[0][0]
      unless declId.isIdent do
        throwErrorAt declId "'let rec' expressions must be named"
      let shortDeclName := declId.getId
      let parentName? ← getDeclName?
      let mut declName := parentName?.getD Name.anonymous ++ shortDeclName
      let env ← getEnv
      if env.header.isModule && !env.isExporting then
        declName := mkPrivateName env declName
      if decls.any fun decl => decl.declName == declName then
        withRef declId do
          throwError "`{.ofConstName declName}` has already been declared"
      let binderStx := decl[1]
      checkNotAlreadyDeclared declName
      applyAttributesAt declName attrs AttributeApplicationTime.beforeElaboration
      -- Docstring processing is deferred until the declaration is added to the environment.
      -- This is necessary for Verso docstrings to work correctly, as they may reference the
      -- declaration being defined.
      addDeclarationRangesFromSyntax declName decl declId
      let binders := binderStx.getArgs
      let typeStx := expandOptType declId decl[2]
      let (type, binderIds) ← elabBindersEx binders fun xs => do
          let type ← elabType typeStx
          registerCustomErrorIfMVar type typeStx "failed to infer 'let rec' declaration type"
          let (binderIds, xs) := xs.unzip
          let type ← mkForallFVars xs type
          pure (type, binderIds)
      let mvar ← mkFreshExprMVar type MetavarKind.syntheticOpaque
      let valStx ← if decl.isOfKind `Lean.Parser.Term.letIdDecl then
        pure decl[4]
      else
        liftMacroM <| expandMatchAltsIntoMatch decl decl[3]
      let termination ← elabTerminationHints ⟨attrDeclStx[3]⟩
      decls := decls.push {
        ref := declId, attrs, shortDeclName, declName, parentName?,
        binderIds, binders := binderStx, type, mvar, valStx, termination, docString? := docStr?
      }
    else
      throwUnsupportedSyntax
  return { decls, body := letRec[3] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetRec/Varianteed8cdd02b211d1889896a27851af20b8a8a7ff22fcb1f6a58d01ada21f56dfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetRec/Varianteed8cdd02b211d1889896a27851af20b8a8a7ff22fcb1f6a58d01ada21f56dfc.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e2c45dbbb76a33e2d41e4a5e0a4faf1a926ee23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
