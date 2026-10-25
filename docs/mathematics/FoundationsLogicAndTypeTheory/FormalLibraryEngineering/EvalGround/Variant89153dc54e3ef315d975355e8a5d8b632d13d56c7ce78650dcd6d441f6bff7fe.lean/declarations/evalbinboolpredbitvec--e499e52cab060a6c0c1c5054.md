# evalBinBoolPredBitVec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:917779cc6476083eecf25aaa8d343b0c845c985c70f76c881b9970cb0ca1a180",
  "kind": "abbrev",
  "lexical_name": "evalBinBoolPredBitVec",
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
  "slug": "evalbinboolpredbitvec--e499e52cab060a6c0c1c5054",
  "source": {
    "blob": "ca7fb677ac132baa9c07c60fd3d5eca5b25f6b22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 496,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variant89153dc54e3ef315d975355e8a5d8b632d13d56c7ce78650dcd6d441f6bff7fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e499e52cab060a6c0c1c505402c84c0fb9fd1ecd7ef265511b78c160bd76d5a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variant89153dc54e3ef315d975355e8a5d8b632d13d56c7ce78650dcd6d441f6bff7fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:917779cc6476083eecf25aaa8d343b0c845c985c70f76c881b9970cb0ca1a180`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev evalBinBoolPredBitVec (op : {n : Nat} → BitVec n → BitVec n → Bool) (a b : Expr) : SimpM Result := do
  let some a := getBitVecValue? a | return .rfl
  let some b := getBitVecValue? b | return .rfl
  if h : a.n = b.n then
    let r := op a.val (h ▸ b.val)
    let e ← share (toExpr r)
    return .step e (if r then eagerReflBoolTrue else eagerReflBoolFalse) (done := true)
  else
    return .rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variant89153dc54e3ef315d975355e8a5d8b632d13d56c7ce78650dcd6d441f6bff7fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variant89153dc54e3ef315d975355e8a5d8b632d13d56c7ce78650dcd6d441f6bff7fe.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca7fb677ac132baa9c07c60fd3d5eca5b25f6b22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
