# Nat.log2Exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f75f5444429f46900ea41ed0df21793f6c8f3df7c36e0216b5029c984f3890dc",
  "kind": "def",
  "lexical_name": "Nat.log2Exact",
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
  "slug": "nat-log2exact--bc0f3dbdc0630f59e8926c83",
  "source": {
    "blob": "40d3a9da2304017320e5405e43c94b9345085669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 923,
    "line": 885,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variantb26bde89131629934bfea77b9e072b39952a5c8892345445d39bdc74db242472.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc0f3dbdc0630f59e8926c833affa806bc781e1fd984eff4a87709ea1c8e2236",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variantb26bde89131629934bfea77b9e072b39952a5c8892345445d39bdc74db242472.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f75f5444429f46900ea41ed0df21793f6c8f3df7c36e0216b5029c984f3890dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 885–923.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Nat.log2Exact (n : Nat) : Option Nat := do
  guard <| n ≠ 0
  let k := n.log2
  guard <| Nat.pow 2 k == n
  return k

builtin_simproc [bv_normalize] bv_udiv_of_two_pow (((_ : BitVec _) / (BitVec.ofNat _ _) : BitVec _)) := fun e => do
  let_expr HDiv.hDiv _α _β _γ _self x y := e | return .continue
  let some ⟨w, yVal⟩ ← getBitVecValue? y | return .continue
  let n := yVal.toNat
  -- BitVec.ofNat w n, where n =def= 2^k
  let some k := Nat.log2Exact n | return .continue
  -- check that k < w.
  if k ≥ w then return .continue
  let rhs := BitVec.mkNatShiftRight x (mkNatLit k) (toExpr w)
  -- 2^k = n
  let hk := Nat.mkDecideProofEq (Nat.mkPow (mkNatLit 2) (mkNatLit k)) (mkNatLit n)
  -- k < w
  let hlt := Nat.mkDecideProofLt (mkNatLit k) (mkNatLit w)
  let proof := mkApp6 (mkConst ``Std.Tactic.BVDecide.Normalize.BitVec.udiv_ofNat_eq_of_lt)
    (toExpr w) x (toExpr n) (toExpr k) hk hlt
  return .done {
      expr :=  rhs
      proof? := some proof
  }

builtin_simproc [bv_normalize] bv_extractLsb'_not (BitVec.extractLsb' _ _ (~~~(_ : BitVec _))) := fun e => do
  let_expr BitVec.extractLsb' initialWidth start len inner := e | return .continue
  let some initialWidthVal ← getNatValue? initialWidth | return .continue
  let some startVal ← getNatValue? start | return .continue
  let some lenVal ← getNatValue? len | return .continue
  if !(startVal + lenVal) < initialWidthVal then return .continue
  let_expr Complement.complement _ _ inner := inner | return .continue
  let newInner := mkApp4 (mkConst ``BitVec.extractLsb') initialWidth start len inner
  let expr := BitVec.mkComplement newInner len
  let lt := Nat.mkDecideProofLt (Nat.mkAdd start len) initialWidth
  let proof := mkApp5 (mkConst ``BitVec.extractLsb'_not_of_lt) initialWidth inner start len lt
  return .visit { expr := expr, proof? := some proof }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variantb26bde89131629934bfea77b9e072b39952a5c8892345445d39bdc74db242472.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simproc/Variantb26bde89131629934bfea77b9e072b39952a5c8892345445d39bdc74db242472.lean#L885).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40d3a9da2304017320e5405e43c94b9345085669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
