# mkIte

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3852fe1c5a981588687c0dc82943c23ba95a0024e0dfa27fd2565550aa818f92",
  "kind": "def",
  "lexical_name": "mkIte",
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
  "slug": "mkite--033b3546fa3eaecf6ba67650",
  "source": {
    "blob": "fd4991daed8a0916a0615563fc146f82bd5ffbb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVLogical/Variant689062c14238b0db68335727fb8c9a34d3b809777e6fb0d131118e306703420d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:033b3546fa3eaecf6ba67650fae1453505356f6c54f222eb634c9573057101d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVLogical/Variant689062c14238b0db68335727fb8c9a34d3b809777e6fb0d131118e306703420d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3852fe1c5a981588687c0dc82943c23ba95a0024e0dfa27fd2565550aa818f92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkIte (discr lhs rhs : ReifiedBVLogical) (discrExpr lhsExpr rhsExpr : Expr) (origExpr : Expr) :
    M ReifiedBVLogical := do
  let boolExpr := .ite discr.bvExpr lhs.bvExpr rhs.bvExpr
  let expr :=
    mkApp4
      (mkConst ``BoolExpr.ite)
      (mkConst ``BVPred)
      discr.expr
      lhs.expr
      rhs.expr
  let proof := do
    let discrEvalExpr ← ReifiedBVLogical.mkEvalExpr discr.expr
    let lhsEvalExpr ← ReifiedBVLogical.mkEvalExpr lhs.expr
    let rhsEvalExpr ← ReifiedBVLogical.mkEvalExpr rhs.expr
    let discrProof? ← discr.evalsAtAtoms
    let lhsProof? ← lhs.evalsAtAtoms
    let rhsProof? ← rhs.evalsAtAtoms
    let some (discrProof, lhsProof, rhsProof) :=
      M.simplifyTernaryProof
        ReifiedBVLogical.mkRefl
        discrEvalExpr discrProof?
        lhsEvalExpr lhsProof?
        rhsEvalExpr rhsProof? | return none
    return mkApp9
      (mkConst ``Std.Tactic.BVDecide.Reflect.Bool.cond_congr)
      discrExpr lhsExpr rhsExpr
      discrEvalExpr lhsEvalExpr rhsEvalExpr
      discrProof lhsProof rhsProof
  return ⟨boolExpr, origExpr, proof, expr⟩

end ReifiedBVLogical

end Lean.Meta.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVLogical/Variant689062c14238b0db68335727fb8c9a34d3b809777e6fb0d131118e306703420d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVLogical/Variant689062c14238b0db68335727fb8c9a34d3b809777e6fb0d131118e306703420d.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd4991daed8a0916a0615563fc146f82bd5ffbb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
