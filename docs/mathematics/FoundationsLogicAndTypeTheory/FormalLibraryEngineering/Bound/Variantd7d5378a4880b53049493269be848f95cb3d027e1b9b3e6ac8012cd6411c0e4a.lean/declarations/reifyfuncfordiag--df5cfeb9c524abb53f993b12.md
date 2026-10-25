# reifyFuncForDiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b50d60ae41045ed1da45fd8f91eab0618b75acb6f95ff6b10fd21efd605512d1",
  "kind": "def",
  "lexical_name": "reifyFuncForDiag",
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
  "slug": "reifyfuncfordiag--df5cfeb9c524abb53f993b12",
  "source": {
    "blob": "7c82574bb73c164f0e47c15ed92778120303e79c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantd7d5378a4880b53049493269be848f95cb3d027e1b9b3e6ac8012cd6411c0e4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df5cfeb9c524abb53f993b12b0dae89b48d8db0f086e225f76349aac1446b4a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantd7d5378a4880b53049493269be848f95cb3d027e1b9b3e6ac8012cd6411c0e4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b50d60ae41045ed1da45fd8f91eab0618b75acb6f95ff6b10fd21efd605512d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def reifyFuncForDiag (func : Lean.Expr) : TacticM LeanCert.Core.Expr := do
  lambdaTelescope func fun _vars body => do
    let fn := body.getAppFn
    if fn.isConstOf ``LeanCert.Core.Expr.eval then
      let args := body.getAppArgs
      if args.size ≥ 2 then
        let astExpr := args[1]!
        let astVal ← unsafe evalExpr LeanCert.Core.Expr (mkConst ``LeanCert.Core.Expr) astExpr
        return astVal
      else
        throwError "Unexpected Expr.eval structure in diagnostic"
    else
      let astExpr ← reify func
      let astVal ← unsafe evalExpr LeanCert.Core.Expr (mkConst ``LeanCert.Core.Expr) astExpr
      return astVal

/-- Run shadow computation to diagnose why a proof failed -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantd7d5378a4880b53049493269be848f95cb3d027e1b9b3e6ac8012cd6411c0e4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantd7d5378a4880b53049493269be848f95cb3d027e1b9b3e6ac8012cd6411c0e4a.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c82574bb73c164f0e47c15ed92778120303e79c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
