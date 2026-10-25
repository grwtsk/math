# Lean.SubExpr.GoalsLocation.saveExprWithCtx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23a5e816078e15cbfbf07378a9214d9097a5840320596d6a0add302b65da1258",
  "kind": "def",
  "lexical_name": "Lean.SubExpr.GoalsLocation.saveExprWithCtx",
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
  "slug": "lean-subexpr-goalslocation-saveexprwithctx--60882592d59000eab52cf732",
  "source": {
    "blob": "46c88ee0fb26b129e0f0a7b6e06daf2247fad167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variant3baafb6c550cb3d02474772a764638dfd0d34caa972a2df51bb6ff0d323fa63c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60882592d59000eab52cf732b996a04ada5707c0295b8dec3527b3f206decb2a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variant3baafb6c550cb3d02474772a764638dfd0d34caa972a2df51bb6ff0d323fa63c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23a5e816078e15cbfbf07378a9214d9097a5840320596d6a0add302b65da1258`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.SubExpr.GoalsLocation.saveExprWithCtx (loc : GoalsLocation) : MetaM ExprWithCtx :=
  let mvarId := loc.mvarId
  mvarId.withContext do
    match loc.loc with
    | .hyp fvarId => ExprWithCtx.save (.fvar fvarId)
    | .hypType fvarId pos =>
      Meta.viewSubexpr (fun _ => ExprWithCtx.save) pos (← instantiateMVars (← fvarId.getType))
    | .hypValue fvarId pos =>
      let some val ← fvarId.getValue? | throwError "fvar {Expr.fvar fvarId} is not a let-binding"
      Meta.viewSubexpr (fun _ => ExprWithCtx.save) pos (← instantiateMVars val)
    | .target pos =>
      Meta.viewSubexpr (fun _ => ExprWithCtx.save) pos (← instantiateMVars (← mvarId.getType))

namespace ProofWidgets
open Lean Server

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variant3baafb6c550cb3d02474772a764638dfd0d34caa972a2df51bb6ff0d323fa63c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variant3baafb6c550cb3d02474772a764638dfd0d34caa972a2df51bb6ff0d323fa63c.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46c88ee0fb26b129e0f0a7b6e06daf2247fad167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
