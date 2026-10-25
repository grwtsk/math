# mkGate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65741f617b2ed6c78b311b94d12d5a37f881bd9f486fca9fd46bbd2cb3784d3b",
  "kind": "def",
  "lexical_name": "mkGate",
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
  "slug": "mkgate--3bbbdfb2a3d145f2c2fd26cc",
  "source": {
    "blob": "f20e13f8f9e5c66ec6411f4142509302f9142a2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVLogical/Variant018cf99ae15dba3f30411be4fec597ff7ec6e608a291eed3848c91093431b895.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bbbdfb2a3d145f2c2fd26cc546950991d2ac39961d17154f8451f0d26c9877e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVLogical/Variant018cf99ae15dba3f30411be4fec597ff7ec6e608a291eed3848c91093431b895.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65741f617b2ed6c78b311b94d12d5a37f881bd9f486fca9fd46bbd2cb3784d3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkGate (lhs rhs : ReifiedBVLogical) (lhsExpr rhsExpr : Expr) (gate : Gate) (origExpr : Expr) :
    M ReifiedBVLogical := do
  let congrThm := congrThmOfGate gate
  let boolExpr := .gate gate lhs.bvExpr rhs.bvExpr
  let expr :=
    mkApp4
      (mkConst ``BoolExpr.gate)
      (mkConst ``BVPred)
      (toExpr gate)
      lhs.expr
      rhs.expr
  let proof := do
    let lhsEvalExpr ← ReifiedBVLogical.mkEvalExpr lhs.expr
    let rhsEvalExpr ← ReifiedBVLogical.mkEvalExpr rhs.expr
    let lhsProof? ← lhs.evalsAtAtoms
    let rhsProof? ← rhs.evalsAtAtoms
    let some (lhsProof, rhsProof) :=
      M.simplifyBinaryProof
        ReifiedBVLogical.mkRefl
        lhsEvalExpr lhsProof?
        rhsEvalExpr rhsProof? | return none
    return mkApp6
      (mkConst congrThm)
      lhsExpr rhsExpr
      lhsEvalExpr rhsEvalExpr
      lhsProof rhsProof
  return ⟨boolExpr, origExpr, proof, expr⟩
where
  congrThmOfGate (gate : Gate) : Name :=
    match gate with
    | .and => ``Std.Tactic.BVDecide.Reflect.Bool.and_congr
    | .xor => ``Std.Tactic.BVDecide.Reflect.Bool.xor_congr
    | .beq => ``Std.Tactic.BVDecide.Reflect.Bool.beq_congr
    | .or => ``Std.Tactic.BVDecide.Reflect.Bool.or_congr

/--
Construct the reified version of `Bool.not subExpr`.
This function assumes that `subExpr` is the expression corresponding to `sub`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVLogical/Variant018cf99ae15dba3f30411be4fec597ff7ec6e608a291eed3848c91093431b895.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReifiedBVLogical/Variant018cf99ae15dba3f30411be4fec597ff7ec6e608a291eed3848c91093431b895.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f20e13f8f9e5c66ec6411f4142509302f9142a2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
