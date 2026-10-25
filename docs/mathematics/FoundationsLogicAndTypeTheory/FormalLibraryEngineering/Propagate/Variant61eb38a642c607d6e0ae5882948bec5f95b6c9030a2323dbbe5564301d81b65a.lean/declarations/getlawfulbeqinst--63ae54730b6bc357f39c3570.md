# getLawfulBEqInst?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0332c24a0e161a0da80f459a83dccdd4c546057267fbbf88d7f422bc3714d862",
  "kind": "def",
  "lexical_name": "getLawfulBEqInst?",
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
  "slug": "getlawfulbeqinst--63ae54730b6bc357f39c3570",
  "source": {
    "blob": "d9914205e89571472b089b55eddc9e3054ca88ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant61eb38a642c607d6e0ae5882948bec5f95b6c9030a2323dbbe5564301d81b65a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63ae54730b6bc357f39c357011863dee88423dc6800f31e2e4b5dbfb52921bb8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant61eb38a642c607d6e0ae5882948bec5f95b6c9030a2323dbbe5564301d81b65a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0332c24a0e161a0da80f459a83dccdd4c546057267fbbf88d7f422bc3714d862`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def getLawfulBEqInst? (u : List Level) (α : Expr) (binst : Expr) : GoalM (Option Expr) := do
  synthInstance? <| mkApp2 (mkConst ``LawfulBEq u) α binst
/-
Note about `BEq.beq`
Given `a b : α` in a context where we have `[BEq α] [LawfulBEq α]`
The normalizer (aka `simp`) fails to normalize `if a == b then ... else ...` to `if a = b then ... else ...` using
```
theorem beq_iff_eq [BEq α] [LawfulBEq α] {a b : α} : a == b ↔ a = b :=
  ⟨eq_of_beq, beq_of_eq⟩
```
The main issue is that `ite_congr` requires that the resulting proposition to be decidable,
and we don't have `[DecidableEq α]`. Thus, the normalization step fails.
The following propagators for `BEq.beq` ensure `grind` does not assume this normalization
rule has been applied.
-/

builtin_grind_propagator propagateBEqUp ↑BEq.beq := fun e => do
  /-
  `grind` uses the normalization rule `Bool.beq_eq_decide_eq`, but it is only applicable if
  the type implements the instances `BEq`, `LawfulBEq`, **and** `DecidableEq α`.
  However, we may be in a context where only `BEq` and `LawfulBEq` are available.
  Thus, we have added this propagator as a backup.
  -/
  let_expr f@BEq.beq α binst a b := e | return ()
  let u := f.constLevels!
  if (← isEqv a b) then
    let some linst ← getLawfulBEqInst? u α binst | return ()
    pushEqBoolTrue e <| mkApp6 (mkConst ``Grind.beq_eq_true_of_eq u) α binst linst a b (← mkEqProof a b)
  else if let some h ← mkDiseqProof? a b then
    let some linst ← getLawfulBEqInst? u α binst | return ()
    pushEqBoolFalse e <| mkApp6 (mkConst ``Grind.beq_eq_false_of_diseq u) α binst linst a b h

builtin_grind_propagator propagateBEqDown ↓BEq.beq := fun e => do
  /- See comment above -/
  let_expr f@BEq.beq α binst a b := e | return ()
  let u := f.constLevels!
  if (← isEqBoolTrue e) then
    let some linst ← getLawfulBEqInst? u α binst | return ()
    pushEq a b <| mkApp6 (mkConst ``Grind.eq_of_beq_eq_true u) α binst linst a b (← mkEqProof e (← getBoolTrueExpr))
  else if (← isEqBoolFalse e) then
    let some linst ← getLawfulBEqInst? u α binst | return ()
    let eq ← shareCommon (mkApp3 (mkConst ``Eq [u.head!.succ]) α a b)
    internalize eq (← getGeneration a)
    pushEqFalse eq <| mkApp6 (mkConst ``Grind.ne_of_beq_eq_false u) α binst linst a b (← mkEqProof e (← getBoolFalseExpr))

/-- Propagates `EqMatch` downwards -/
builtin_grind_propagator propagateEqMatchDown ↓Grind.EqMatch := fun e => do
  if (← isEqTrue e) then
    let_expr Grind.EqMatch _ a b origin := e | return ()
    markCaseSplitAsResolved origin
    pushEq a b <| mkOfEqTrueCore e (← mkEqTrueProof e)

/-- Propagates `HEq` downwards -/
builtin_grind_propagator propagateHEqDown ↓HEq := fun e => do
  if (← isEqTrue e) then
    let_expr HEq _ a _ b := e | return ()
    pushHEq a b <| mkOfEqTrueCore e (← mkEqTrueProof e)

/-- Propagates `HEq` upwards -/
builtin_grind_propagator propagateHEqUp ↑HEq := fun e => do
  let_expr HEq _ a _ b := e | return ()
  if (← isEqv a b) then
    pushEqTrue e <| mkEqTrueCore e (← mkHEqProof a b)

/--
Pushes `e = rhs` (justified by `h`) for an `ite`/`dite`-application `e`, after the
condition has become `True` or `False`. `args` are the arguments of `e`, and `h`
proves that the `prefixSize`-prefix of `e` equals `rhs`; if `e` is over-applied,
`rhs` is extended by the trailing arguments via `mkCongrFun`.

Set `ite := true` iff `rhs` is a structural argument of `e` (the `then`/`else`
branch of a non-over-applied `ite`). In that case we call `registerParent e rhs`
because `Internalize.lean`'s `ite` special case skips the branches: `rhs` is being
internalized here for the first time, and the explicit `registerParent` is the
same one the standard `for arg in args` loop in `Internalize.lean` performs for
ordinary application arguments. (`internalize` itself only forwards `parent?` to
satellite solvers; it does not record a structural parent.) Without it, future
merges of `rhs`'s equivalence class would skip re-hashing `e` in the congruence
table, leaving an orphan entry whose `congr` chain no longer matches the table's
representative.

For `dite` (and any over-applied case), `rhs` is a *constructed* reduction (built
via `mkApp` from `e`'s children, possibly post-`preprocess`), not a structural
argument of `e`. Pass `ite := false` so we do not record a spurious parent
relation. The lambda branches of a `dite` are themselves arguments of `e` and were
already internalized as parents by `Internalize.lean`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant61eb38a642c607d6e0ae5882948bec5f95b6c9030a2323dbbe5564301d81b65a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant61eb38a642c607d6e0ae5882948bec5f95b6c9030a2323dbbe5564301d81b65a.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9914205e89571472b089b55eddc9e3054ca88ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
