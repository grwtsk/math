# evalShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ea3b042bba64b96c1b56405a063bbf85a5706d010384e0194af446ba2ecb406",
  "kind": "def",
  "lexical_name": "evalShift",
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
  "slug": "evalshift--c6d71c5c02e6e2f489804a71",
  "source": {
    "blob": "c409e1e357eb53da61b145b9d9cb2f8ad601c5c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 245,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantb42843d8aa1004293d228644cfcbb314df8a2b9b53dfec555461a0ea2a474f62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6d71c5c02e6e2f489804a7108f8f5adf61504a02663925cbc11395c4bb8be37",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantb42843d8aa1004293d228644cfcbb314df8a2b9b53dfec555461a0ea2a474f62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ea3b042bba64b96c1b56405a063bbf85a5706d010384e0194af446ba2ecb406`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalShift (left : Bool) (α β : Expr) (a b : Expr) : DSimpM Result :=
  if isSameExpr α β then
    match_expr α with
    | Nat => evalBinNat (shift left) a b
    | Fin _ => if left then evalBinFin' (· <<< ·) a b else evalBinFin' (· >>> ·) a b
    | BitVec _ => if left then evalBinBitVec' (· <<< ·) a b else evalBinBitVec' (· >>> ·) a b
    | UInt8 => evalBinUInt8 (shift left) a b
    | UInt16 => evalBinUInt16 (shift left) a b
    | UInt32 => evalBinUInt32 (shift left) a b
    | UInt64 => evalBinUInt64 (shift left) a b
    | Int8 => evalBinInt8 (shift left) a b
    | Int16 => evalBinInt16 (shift left) a b
    | Int32 => evalBinInt32 (shift left) a b
    | Int64 => evalBinInt64 (shift left) a b
    | _ => return .rfl
  else
  match_expr β with
  | Nat =>
    match_expr α with
    | Int => do
      let some a := getIntValue? a | return .rfl
      let some b := getNatValue? b | return .rfl
      let e := if left then a <<< b else a >>> b
      let e ← share <| toExpr e
      return .step e (done := true)
    | BitVec _ => do
      let some a := getBitVecValue? a | return .rfl
      let some b := getNatValue? b | return .rfl
      let e := if left then a.val <<< b else a.val >>> b
      let e ← share <| toExpr e
      return .step e (done := true)
    | _ => return .rfl
  | BitVec _ => do
    let_expr BitVec _ := α | return .rfl
    let some a := getBitVecValue? a | return .rfl
    let some b := getBitVecValue? b | return .rfl
    let e := if left then a.val <<< b.val else a.val >>> b.val
    let e ← share <| toExpr e
    return .step e (done := true)
  | _ => return .rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantb42843d8aa1004293d228644cfcbb314df8a2b9b53dfec555461a0ea2a474f62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EvalGround/Variantb42843d8aa1004293d228644cfcbb314df8a2b9b53dfec555461a0ea2a474f62.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c409e1e357eb53da61b145b9d9cb2f8ad601c5c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
