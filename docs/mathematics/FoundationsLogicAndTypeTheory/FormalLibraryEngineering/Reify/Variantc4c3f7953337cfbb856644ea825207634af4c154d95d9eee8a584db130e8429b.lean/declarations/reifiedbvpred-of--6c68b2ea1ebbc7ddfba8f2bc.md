# ReifiedBVPred.of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0592f28ab4956f07341a1b4de29250ec24292f84e756683ecb7364568d8e25a1",
  "kind": "def",
  "lexical_name": "ReifiedBVPred.of",
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
  "slug": "reifiedbvpred-of--6c68b2ea1ebbc7ddfba8f2bc",
  "source": {
    "blob": "9d81319cb4871576b28efc43496bfe53de255560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 311,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variantc4c3f7953337cfbb856644ea825207634af4c154d95d9eee8a584db130e8429b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c68b2ea1ebbc7ddfba8f2bc2a0a3fe46bf16aa32844d091bb2da7162e388891",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variantc4c3f7953337cfbb856644ea825207634af4c154d95d9eee8a584db130e8429b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0592f28ab4956f07341a1b4de29250ec24292f84e756683ecb7364568d8e25a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def ReifiedBVPred.of (origExpr : Expr) : LemmaM (Option ReifiedBVPred) := do
  LemmaM.withBVPredCache origExpr fun origExpr => do
    match ← go origExpr with
    | some pred => return some pred
    | none => ReifiedBVPred.boolAtom origExpr
where
  /--
  Reify `origExpr`, returns `none` if the reification procedure failed.
  -/
  go (origExpr : Expr) : LemmaM (Option ReifiedBVPred) := do
    match_expr origExpr with
    | BEq.beq α _ lhsExpr rhsExpr =>
      let_expr BitVec _ := α | return none
      binaryReflection lhsExpr rhsExpr .eq origExpr
    | BitVec.ult _ lhsExpr rhsExpr =>
      binaryReflection lhsExpr rhsExpr .ult origExpr
    | BitVec.getLsbD _ subExpr idxExpr =>
      let some sub ← ReifiedBVExpr.of subExpr | return none
      let some idx ← getNatValue? idxExpr | return none
      return some (← ReifiedBVPred.mkGetLsbD sub subExpr idx origExpr)
    | _ => return none

  binaryReflection (lhsExpr rhsExpr : Expr) (pred : BVBinPred) (origExpr : Expr) :
      LemmaM (Option ReifiedBVPred) := do
    let some lhs ← ReifiedBVExpr.of lhsExpr | return none
    let some rhs ← ReifiedBVExpr.of rhsExpr | return none
    ReifiedBVPred.mkBinPred lhs rhs lhsExpr rhsExpr pred origExpr

/--
Reify an `Expr` that is a boolean expression containing predicates about `BitVec` as atoms.
Unless this function is called on something that is not a `Bool` it is always going to return `some`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variantc4c3f7953337cfbb856644ea825207634af4c154d95d9eee8a584db130e8429b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variantc4c3f7953337cfbb856644ea825207634af4c154d95d9eee8a584db130e8429b.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d81319cb4871576b28efc43496bfe53de255560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
