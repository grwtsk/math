# addRelatedDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f91f961e5bdc9525713d5e1d0e27a9faa4a547c8955f1619ba3f9e1eaa976697",
  "kind": "def",
  "lexical_name": "addRelatedDecl",
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
  "slug": "addrelateddecl--6d16cc537d8355adfb781321",
  "source": {
    "blob": "594b89efa1e047563621b12cff45171d767d4f3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 120,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRelatedDecl/Variantbca5cbb92b9f2b561b2e5dd87da3682d9b802d13dcdca3949faa5c36b2e10180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d16cc537d8355adfb7813216f1c1179c43f3cdd920d42fd5b98d144006c339a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRelatedDecl/Variantbca5cbb92b9f2b561b2e5dd87da3682d9b802d13dcdca3949faa5c36b2e10180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f91f961e5bdc9525713d5e1d0e27a9faa4a547c8955f1619ba3f9e1eaa976697`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addRelatedDecl (src tgt : Name) (ref : Syntax)
    (attrs : TSyntax ``optAttrArg)
    (construct : Expr → List Name → MetaM (Expr × List Name))
    (docstringPrefix? : Option String := none)
    (hoverInfo : Bool := false) :
    MetaM Unit := do
  -- If `tgt` already exists in an imported module, the `addDeclarationRangesFromSyntax` call
  -- below panics (and if it exists in the current module, `addDecl` would fail with a less
  -- helpful message), so we check for a pre-existing declaration up front.
  checkNotAlreadyDeclared tgt
  addDeclarationRangesFromSyntax tgt (← getRef) ref
  let info ← withoutExporting <| getConstInfo src
  let value := .const src (info.levelParams.map mkLevelParam)
  let (newValue, newLevels) ← construct value info.levelParams
  let newValue ← instantiateMVars newValue
  let newType ← instantiateMVars (← inferType newValue)
  unless ← isProp newType do throwError "Related declaration is not a proposition: {newType}"
  warnIfImplicitIllTyped ref tgt newType
  addDecl <| ← mkThmOrUnsafeDef
    { levelParams := newLevels, type := newType, name := tgt, value := newValue }
  if isProtected (← getEnv) src then
    setEnv <| addProtected (← getEnv) tgt
  match docstringPrefix?, ← findDocString? (← getEnv) src with
  | none, none => pure ()
  | some doc, none | none, some doc => addDocStringCore tgt doc
  | some docPre, some docPost => addDocStringCore tgt s!"{docPre}\n\n---\n\n{docPost}"
  inferDefEqAttr tgt
  Term.TermElabM.run' do
    let attrs ← elabOptAttrArg attrs
    Term.applyAttributes src attrs
    Term.applyAttributes tgt attrs
    if hoverInfo then
      Term.addTermInfo' ref (← mkConstWithLevelParams tgt) (isBinder := true)

end Mathlib.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRelatedDecl/Variantbca5cbb92b9f2b561b2e5dd87da3682d9b802d13dcdca3949faa5c36b2e10180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRelatedDecl/Variantbca5cbb92b9f2b561b2e5dd87da3682d9b802d13dcdca3949faa5c36b2e10180.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `594b89efa1e047563621b12cff45171d767d4f3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
