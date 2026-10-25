# reduceNatEqExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5999123836d3e9bfaf7f263cf65b767904338d3b54371746d9056a789f6f921c",
  "kind": "def",
  "lexical_name": "reduceNatEqExpr",
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
  "slug": "reducenateqexpr--eb19096af7007049eee4d4c2",
  "source": {
    "blob": "248c7877ed6ab21e0ebccef88d382f0621327822",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb19096af7007049eee4d4c21638a0bb76dfaa621632fa94f8e574a39f0f431e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5999123836d3e9bfaf7f263cf65b767904338d3b54371746d9056a789f6f921c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def reduceNatEqExpr (x y : Expr) : SimpM (Option EqResult):= do
  /-
  **TODO**: These proofs rely too much on definitional equality.
  Example:
  `x + 1 + 1 + ... + 1 = x + 1 + ... + 1`
  It will treat both sides as `x + n = x + n`.
  -/
  let some xno ← NatOffset.fromExpr? x | return none
  let some yno ← NatOffset.fromExpr? y | return none
  match xno, yno with
  | .const xn, .const yn =>
    return some (.decide (xn = yn))
  | .offset xb xo xn, .const yn => do
    if xn ≤ yn then
      let leProof ← mkOfDecideEqTrue (mkLENat xo y)
      applyEqLemma (.eq xb (toExpr (yn - xn))) ``Nat.Simproc.add_eq_le #[xb, xo, y, leProof]
    else
      let gtProof ← mkOfDecideEqTrue (mkGTNat xo y)
      applyEqLemma .false ``Nat.Simproc.add_eq_gt  #[xb, xo, y, gtProof]
  | .const xn, .offset yb yo yn => do
    if yn ≤ xn then
      let leProof ← mkOfDecideEqTrue (mkLENat yo x)
      applyEqLemma (.eq yb (toExpr (xn - yn))) ``Nat.Simproc.eq_add_le  #[x, yb, yo, leProof]
    else
      let gtProof ← mkOfDecideEqTrue (mkGTNat yo x)
      applyEqLemma .false ``Nat.Simproc.eq_add_gt #[x, yb, yo, gtProof]
  | .offset xb xo xn, .offset yb yo yn => do
    if xn ≤ yn then
      let zb := (if xn = yn then yb else mkAddNat yb (toExpr (yn - xn)))
      let leProof ← mkOfDecideEqTrue (mkLENat xo yo)
      applyEqLemma (.eq xb zb) ``Nat.Simproc.add_eq_add_le #[xb, yb, xo, yo, leProof]
    else
      let zb := mkAddNat xb (toExpr (xn - yn))
      let geProof ← mkOfDecideEqTrue (mkGENat xo yo)
      applyEqLemma (.eq zb yb) ``Nat.Simproc.add_eq_add_ge #[xb, yb, xo, yo, geProof]

builtin_simproc [simp, seval] reduceEqDiff ((_ : Nat) = _) := fun e => do
  unless e.isAppOfArity ``Eq 3 do
    return .continue
  let x := e.appFn!.appArg!
  let y := e.appArg!
  match ← reduceNatEqExpr x y with
  | none =>
    return .continue
  | some (.decide true) =>
    let d ← mkDecide e
    let p := mkAppN (mkConst ``eq_true_of_decide)  #[e, d.appArg!, (← mkEqRefl (mkConst ``true))]
    return .done  { expr := mkConst ``True,  proof? := some p, cache := true }
  | some (.decide false) =>
    let d ← mkDecide e
    let p := mkAppN (mkConst ``eq_false_of_decide) #[e, d.appArg!, (← mkEqRefl (mkConst ``false))]
    return .done  { expr := mkConst ``False, proof? := some p, cache := true }
  | some (.false p)  =>
    return .done  { expr := mkConst ``False, proof? := some p, cache := true }
  | some (.eq x y p) =>
    return .visit { expr := mkEqNat x y,     proof? := some p, cache := true }

builtin_simproc [simp, seval] reduceBeqDiff ((_ : Nat) == _) := fun e => do
  unless e.isAppOfArity ``BEq.beq 4 do
    return .continue
  let x := e.appFn!.appArg!
  let y := e.appArg!
  match ← reduceNatEqExpr x y with
  | none =>
    return .continue
  | some (.decide b) =>
    return .done { expr := toExpr b }
  | some (.false p) =>
    let q := mkAppN (mkConst ``Nat.Simproc.beqFalseOfEqFalse) #[x, y, p]
    return .done  { expr := mkConst ``false, proof? := some q, cache := true }
  | some (.eq u v p) =>
    let q := mkAppN (mkConst ``Nat.Simproc.beqEqOfEqEq) #[x, y, u, v, p]
    return .visit { expr := mkBEqNat u v, proof? := some q, cache := true }

builtin_simproc [simp, seval] reduceBneDiff ((_ : Nat) != _) := fun e => do
  unless e.isAppOfArity ``bne 4 do
    return .continue
  let x := e.appFn!.appArg!
  let y := e.appArg!
  match ← reduceNatEqExpr x y with
  | none =>
    return .continue
  | some (.decide b) =>
    return .done { expr := toExpr (!b) }
  | some (.false p) =>
    let q := mkAppN (mkConst ``Nat.Simproc.bneTrueOfEqFalse) #[x, y, p]
    return .done  { expr := mkConst ``true, proof? := some q, cache := true }
  | some (.eq u v p) =>
    let q := mkAppN (mkConst ``Nat.Simproc.bneEqOfEqEq) #[x, y, u, v, p]
    return .visit { expr := mkBneNat u v, proof? := some q, cache := true }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `248c7877ed6ab21e0ebccef88d382f0621327822` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
