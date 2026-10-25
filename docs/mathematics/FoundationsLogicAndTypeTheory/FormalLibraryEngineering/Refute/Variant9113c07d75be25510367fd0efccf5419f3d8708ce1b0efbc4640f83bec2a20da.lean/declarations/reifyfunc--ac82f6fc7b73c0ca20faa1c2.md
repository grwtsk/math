# reifyFunc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4c75751a635047c2f31f86a7c6906c194d77f388d694861a5e29cff2ee9e9c5",
  "kind": "def",
  "lexical_name": "reifyFunc",
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
  "slug": "reifyfunc--ac82f6fc7b73c0ca20faa1c2",
  "source": {
    "blob": "d8b157be36d7dfa14b62fb28df6ab9edca72cf08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac82f6fc7b73c0ca20faa1c2e93c74314dd2c76da7d2a4d634ae5fd6f1984fcd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4c75751a635047c2f31f86a7c6906c194d77f388d694861a5e29cff2ee9e9c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def reifyFunc (func : Lean.Expr) : TacticM LBExpr := do
  -- func is (fun x => body)
  lambdaTelescope func fun _vars body => do
    let fn := body.getAppFn
    if fn.isConstOf ``LeanCert.Core.Expr.eval then
      let args := body.getAppArgs
      if args.size ≥ 2 then
        -- Already an Expr.eval - extract the AST
        let astExpr := args[1]!
        -- Evaluate to get the actual Expr value
        let astVal ← unsafe evalExpr LBExpr (mkConst ``LeanCert.Core.Expr) astExpr
        return astVal
      else
        throwError "interval_refute: Unexpected Expr.eval structure"
    else
      -- Raw expression - use the reifier
      let astExpr ← LeanCert.Meta.reify func
      let astVal ← unsafe evalExpr LBExpr (mkConst ``LeanCert.Core.Expr) astExpr
      return astVal

/-! ## Main tactic implementation -/

/-- The core refutation logic -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant9113c07d75be25510367fd0efccf5419f3d8708ce1b0efbc4640f83bec2a20da.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8b157be36d7dfa14b62fb28df6ab9edca72cf08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
