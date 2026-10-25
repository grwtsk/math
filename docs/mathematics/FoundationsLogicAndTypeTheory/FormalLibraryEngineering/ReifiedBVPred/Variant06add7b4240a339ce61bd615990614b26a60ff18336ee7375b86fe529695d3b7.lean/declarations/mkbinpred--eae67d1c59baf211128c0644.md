# mkBinPred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e34bd1830950eb227b79e8b0a08ac09cdbdc3df15ee634e12be0c9a4e0446719",
  "kind": "def",
  "lexical_name": "mkBinPred",
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
  "slug": "mkbinpred--eae67d1c59baf211128c0644",
  "source": {
    "blob": "cfa599264c42791bf0a5b4b1601744aa27aee2f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVPred/Variant06add7b4240a339ce61bd615990614b26a60ff18336ee7375b86fe529695d3b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eae67d1c59baf211128c0644e3238c09377172ce05dbed09e58c42662b422c0f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVPred/Variant06add7b4240a339ce61bd615990614b26a60ff18336ee7375b86fe529695d3b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e34bd1830950eb227b79e8b0a08ac09cdbdc3df15ee634e12be0c9a4e0446719`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkBinPred (lhs rhs : ReifiedBVExpr) (lhsExpr rhsExpr : Expr) (pred : BVBinPred)
    (origExpr : Expr) : M (Option ReifiedBVPred) := do
  if h : lhs.width = rhs.width then
    let congrThm := congrThmOfBinPred pred
    let bvExpr : BVPred := .bin (w := lhs.width) lhs.bvExpr pred (h ▸ rhs.bvExpr)
    let expr :=
      mkApp4
        (mkConst ``BVPred.bin)
        (toExpr lhs.width)
        lhs.expr
        (toExpr pred)
        rhs.expr
    let proof := do
      let lhsEval ← ReifiedBVExpr.mkEvalExpr lhs.width lhs.expr
      let rhsEval ← ReifiedBVExpr.mkEvalExpr rhs.width rhs.expr
      let lhsProof? ← lhs.evalsAtAtoms
      let rhsProof? ← rhs.evalsAtAtoms
      let some (lhsProof, rhsProof) :=
        M.simplifyBinaryProof
          (ReifiedBVExpr.mkBVRefl lhs.width)
          lhsEval lhsProof?
          rhsEval rhsProof? | return none
      return mkApp7
        (mkConst congrThm)
        (toExpr lhs.width)
        lhsExpr rhsExpr lhsEval rhsEval
        lhsProof
        rhsProof
    return some ⟨bvExpr, origExpr, proof, expr⟩
  else
    return none
where
  congrThmOfBinPred (pred : BVBinPred) : Name :=
    match pred with
    | .eq => ``Std.Tactic.BVDecide.Reflect.BitVec.beq_congr
    | .ult => ``Std.Tactic.BVDecide.Reflect.BitVec.ult_congr

/--
Construct the reified version of `BitVec.getLsbD subExpr idx`.
This function assumes that `subExpr` is the expression corresponding to `sub`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVPred/Variant06add7b4240a339ce61bd615990614b26a60ff18336ee7375b86fe529695d3b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVPred/Variant06add7b4240a339ce61bd615990614b26a60ff18336ee7375b86fe529695d3b7.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfa599264c42791bf0a5b4b1601744aa27aee2f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
