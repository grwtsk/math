# getExprPresentations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bb8c4c7d4a5574db4a2c0deeb4218dc517b44b03800fb34f8fdc4737d06103b",
  "kind": "def",
  "lexical_name": "getExprPresentations",
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
  "slug": "getexprpresentations--1cffe82508d40aeed55fb322",
  "source": {
    "blob": "5ebd0201277845e94b9e482a7ca3e51231e3b047",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1cffe82508d40aeed55fb3225098ad7d04b94a8a222dd832d5a51a3f5156a6ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bb8c4c7d4a5574db4a2c0deeb4218dc517b44b03800fb34f8fdc4737d06103b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getExprPresentations : GetExprPresentationsParams → RequestM (RequestTask ExprPresentations)
  | ⟨ref⟩ => RequestM.asTask do
    let mut presentations : Array ExprPresentationData := #[]
    let expr := ref.val
    let env := expr.ci.env
    for nm in exprPresenters.ext.getState env do
      presentations ← addPresenterIfApplicable expr nm presentations
    -- FIXME: The fact that we need this loop suggests that TagAttribute is not the right way
    -- to implement a persistent, iterable set of names.
    for modNm in env.allImportedModuleNames do
      let some modIdx := env.getModuleIdx? modNm
        | throw <| RequestError.internalError s!"unknown module {modNm}"
      for nm in exprPresenters.ext.getModuleEntries env modIdx do
        presentations ← addPresenterIfApplicable expr nm presentations
    return { presentations }
where addPresenterIfApplicable (expr : ExprWithCtx) (nm : Name) (ps : Array ExprPresentationData) :
    RequestM (Array ExprPresentationData) :=
  match evalExprPresenter expr.ci.env expr.ci.options nm with
  | .ok p =>
    try
      let html ← expr.runMetaM fun e => do
        let e ← Lean.instantiateMVars e
        p.present e
      return ps.push ⟨nm, p.userName, html⟩
    catch _ =>
      return ps
  | .error e =>
    throw <| RequestError.internalError s!"Failed to evaluate Expr presenter '{nm}': {e}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant4a9b274ff32a0b2854e05d46f37aa3d8180c87360c8d008493908b8877bb5ac3.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ebd0201277845e94b9e482a7ca3e51231e3b047` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
