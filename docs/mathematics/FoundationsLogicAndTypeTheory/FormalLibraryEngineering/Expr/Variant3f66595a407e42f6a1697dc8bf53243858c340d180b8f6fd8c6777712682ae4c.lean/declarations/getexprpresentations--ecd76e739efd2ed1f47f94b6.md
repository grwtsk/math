# getExprPresentations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54481e2a262d202c7bc67d0def5cf8fbb88c129799f4389d4676ae4532e52a80",
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
  "slug": "getexprpresentations--ecd76e739efd2ed1f47f94b6",
  "source": {
    "blob": "0eb892745f31ad77b2576526e9b7fecd67350f2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecd76e739efd2ed1f47f94b61f500da8afe1850aac00767a7ed83c2168320b16",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54481e2a262d202c7bc67d0def5cf8fbb88c129799f4389d4676ae4532e52a80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getExprPresentations : GetExprPresentationsParams → RequestM (RequestTask ExprPresentations)
  | ⟨⟨expr⟩⟩ => RequestM.asTask do
    let mut presentations : Array ExprPresentationData := #[]
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eb892745f31ad77b2576526e9b7fecd67350f2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
