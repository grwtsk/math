# Lean.SubExpr.GoalsLocation.saveExprWithCtx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7265e28a9759c6491b3e65a61d196ecc174e385438b2320e49276f9e7deda8a4",
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
  "slug": "lean-subexpr-goalslocation-saveexprwithctx--b3a1c344f1993ad08114aab6",
  "source": {
    "blob": "888b3b1012086076392c6566594e0ffde4e082b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 7,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3a1c344f1993ad08114aab6815274c2e47e43ab9cf4a88efa615fe89a50d7c4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7265e28a9759c6491b3e65a61d196ecc174e385438b2320e49276f9e7deda8a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Lean.SubExpr.GoalsLocation.saveExprWithCtx (loc : GoalsLocation) : MetaM ExprWithCtx :=
  let mvarId := loc.mvarId
  match loc.loc with
  | .hyp fv =>
    mvarId.withContext <|
      ExprWithCtx.save (mkFVar fv)
  | .hypType fv pos => mvarId.withContext do
    let tp ← Meta.inferType (mkFVar fv)
    Meta.viewSubexpr (visit := fun _ => ExprWithCtx.save) pos tp
  | .hypValue fv pos => mvarId.withContext do
    let some val ← fv.getValue?
      | throwError "fvar {mkFVar fv} is not a let-binding"
    Meta.viewSubexpr (visit := fun _ => ExprWithCtx.save) pos val
  | .target pos => mvarId.withContext do
    let tp ← Meta.inferType (mkMVar mvarId)
    Meta.viewSubexpr (visit := fun _ => ExprWithCtx.save) pos tp

namespace ProofWidgets
open Lean Server

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelectionPanel/Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee.lean#L7).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `888b3b1012086076392c6566594e0ffde4e082b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
