# propagateNatBinOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd57e00dce753ff5459499a4c498fb2f88b99654d36babe2df1fd39e2ff3478b",
  "kind": "def",
  "lexical_name": "propagateNatBinOp",
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
  "slug": "propagatenatbinop--2c17ca54b2137118a0d96665",
  "source": {
    "blob": "65636bb150601251ec38988562b68283506f898d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c17ca54b2137118a0d9666582e485f82ea3eb241a655108adf99f524f3dfc44",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd57e00dce753ff5459499a4c498fb2f88b99654d36babe2df1fd39e2ff3478b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def propagateNatBinOp (declName : Name) (congrThmName : Name) (op : Nat → Nat → Nat) (e : Expr) : GoalM Unit := do
  let arity := 6
  unless e.isAppOfArity declName arity do return ()
  unless e.getArg! 0 |>.isConstOf ``Nat do return ()
  unless e.getArg! 1 |>.isConstOf ``Nat do return ()
  let a := e.getArg! (arity - 2) arity
  let aRoot ← getRoot a
  let some k₁ ← getNatValue? aRoot | return ()
  let b := e.getArg! (arity - 1) arity
  let bRoot ← getRoot b
  let some k₂ ← getNatValue? bRoot | return ()
  let k := op k₁ k₂
  let r ← shareCommon (mkNatLit k)
  internalize r 0
  let h := mkApp8 (mkConst congrThmName) a b aRoot bRoot r (← mkEqProof a aRoot) (← mkEqProof b bRoot) eagerReflBoolTrue
  pushEq e r h

builtin_grind_propagator propagateNatAnd ↑HAnd.hAnd := propagateNatBinOp ``HAnd.hAnd ``Grind.Nat.and_congr (· &&& ·)
builtin_grind_propagator propagateNatOr ↑HOr.hOr := propagateNatBinOp ``HOr.hOr ``Grind.Nat.or_congr (· ||| ·)
builtin_grind_propagator propagateNatXOr ↑HXor.hXor := propagateNatBinOp ``HXor.hXor ``Grind.Nat.xor_congr (· ^^^ ·)
builtin_grind_propagator propagateNatShiftLeft ↑HShiftLeft.hShiftLeft :=
  propagateNatBinOp ``HShiftLeft.hShiftLeft ``Grind.Nat.shiftLeft_congr (· <<< ·)
builtin_grind_propagator propagateNatShiftRight ↑HShiftRight.hShiftRight :=
  propagateNatBinOp ``HShiftRight.hShiftRight ``Grind.Nat.shiftRight_congr (· >>> ·)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65636bb150601251ec38988562b68283506f898d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
