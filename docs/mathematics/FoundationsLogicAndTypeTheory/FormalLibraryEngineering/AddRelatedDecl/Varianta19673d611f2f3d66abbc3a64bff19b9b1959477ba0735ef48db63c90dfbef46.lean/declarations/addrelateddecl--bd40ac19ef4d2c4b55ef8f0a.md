# addRelatedDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cef29f6bc4d5f2e12dbd8d03595e39e29faaccc7f696c2111c663c4f1b725b85",
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
  "slug": "addrelateddecl--bd40ac19ef4d2c4b55ef8f0a",
  "source": {
    "blob": "d4f341e1bdb0ad3adf95eafdff02bb05415c1591",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRelatedDecl/Varianta19673d611f2f3d66abbc3a64bff19b9b1959477ba0735ef48db63c90dfbef46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd40ac19ef4d2c4b55ef8f0a4ba20f3c24affb63db02353447e35a919fa287c1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRelatedDecl/Varianta19673d611f2f3d66abbc3a64bff19b9b1959477ba0735ef48db63c90dfbef46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cef29f6bc4d5f2e12dbd8d03595e39e29faaccc7f696c2111c663c4f1b725b85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addRelatedDecl (src : Name) (suffix : String) (ref : Syntax)
    (attrs? : Option (Syntax.TSepArray `Lean.Parser.Term.attrInstance ","))
    (construct : Expr → Expr → List Name → MetaM (Expr × List Name)) :
    MetaM Unit := do
  let tgt := match src with
    | Name.str n s => Name.mkStr n <| s ++ suffix
    | x => x
  addDeclarationRangesFromSyntax tgt (← getRef) ref
  let info ← getConstInfo src
  let (newValue, newLevels) ← construct info.type info.value! info.levelParams
  let newValue ← instantiateMVars newValue
  let newType ← instantiateMVars (← inferType newValue)
  match info with
  | ConstantInfo.thmInfo info =>
    addAndCompile <| .thmDecl
      { info with levelParams := newLevels, type := newType, name := tgt, value := newValue }
  | ConstantInfo.defnInfo info =>
    -- Structure fields are created using `def`, even when they are propositional,
    -- so we don't rely on this to decided whether we should be constructing a `theorem` or a `def`.
    addAndCompile <| if ← isProp newType then .thmDecl
      { info with levelParams := newLevels, type := newType, name := tgt, value := newValue }
      else .defnDecl
      { info with levelParams := newLevels, type := newType, name := tgt, value := newValue }
  | _ => throwError "Constant {src} is not a theorem or definition."
  if isProtected (← getEnv) src then
    setEnv <| addProtected (← getEnv) tgt
  let attrs := match attrs? with | some attrs => attrs | none => #[]
  _ ← Term.TermElabM.run' <| do
    let attrs ← elabAttrs attrs
    Term.applyAttributes src attrs
    Term.applyAttributes tgt attrs

end Mathlib.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRelatedDecl/Varianta19673d611f2f3d66abbc3a64bff19b9b1959477ba0735ef48db63c90dfbef46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddRelatedDecl/Varianta19673d611f2f3d66abbc3a64bff19b9b1959477ba0735ef48db63c90dfbef46.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4f341e1bdb0ad3adf95eafdff02bb05415c1591` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
