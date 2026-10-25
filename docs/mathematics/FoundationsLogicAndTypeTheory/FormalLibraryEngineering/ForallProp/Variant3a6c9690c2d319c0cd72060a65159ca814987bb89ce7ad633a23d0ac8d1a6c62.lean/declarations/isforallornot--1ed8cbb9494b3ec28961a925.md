# isForallOrNot?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d41127c8d8157182b50691bf0269c938435309256749216981b552c2cdb7fb0d",
  "kind": "def",
  "lexical_name": "isForallOrNot?",
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
  "slug": "isforallornot--1ed8cbb9494b3ec28961a925",
  "source": {
    "blob": "14bb804b0ede7aac0ac190c76c5c11b5baa95a12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant3a6c9690c2d319c0cd72060a65159ca814987bb89ce7ad633a23d0ac8d1a6c62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ed8cbb9494b3ec28961a925b4d586401fdcffe3d8eb6fdaa318e618fdfbbe04",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant3a6c9690c2d319c0cd72060a65159ca814987bb89ce7ad633a23d0ac8d1a6c62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d41127c8d8157182b50691bf0269c938435309256749216981b552c2cdb7fb0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def isForallOrNot? (e : Expr) : Option (Name × Expr × Expr) :=
  if let .forallE n d b _ := e then
    some (n, d, b)
  else if e.isAppOfArity ``Not 1 then
    some (`a, e.appArg!, mkConst ``False)
  else
    none

/--
Applies the following rewriting rules:
- `Grind.imp_true_eq`
- `Grind.imp_false_eq`
- `Grind.forall_imp_eq_or`
- `Grind.true_imp_eq`
- `Grind.false_imp_eq`
- `Grind.imp_self_eq`
- `forall_true`
- `forall_false`
- `Grind.forall_or_forall`
- `Grind.forall_forall_or`
- `Grind.forall_and`
-/
builtin_simproc_decl simpForall ((a : _) → _) := fun e => do
  let .forallE varName d b info := e | return .continue
  if !b.hasLooseBVars then
    match_expr d with
    | True => if (← isProp b) then return .done { expr := b, proof? := mkApp (mkConst ``Grind.true_imp_eq) b }
    | False => if (← isProp b) then return .done { expr := mkConst ``True, proof? := mkApp (mkConst ``Grind.false_imp_eq) b }
    | _ =>
    if let .forallE aName α pRaw info' := d then
      if (← pure pRaw.hasLooseBVars <&&> isProp d) then
        let p := mkLambda aName info' α pRaw
        let q := b
        let u ← getLevel α
        let expr := mkOr (mkApp2 (mkConst ``Exists [u]) α (mkLambda aName info' α (mkNot pRaw))) q
        return .visit { expr, proof? := mkApp3 (mkConst ``Grind.forall_imp_eq_or [u]) α p q }
    else match_expr b with
    | True => if (← isProp d) then return .done { expr := mkConst ``True, proof? := mkApp (mkConst ``Grind.imp_true_eq) d }
    | False => if (← isProp d) then return .visit { expr := mkNot d, proof? := mkApp (mkConst ``Grind.imp_false_eq) d }
    | _ => if (← isProp d <&&> isDefEq d b) then
      return .done { expr := mkConst ``True, proof? := mkApp (mkConst ``Grind.imp_self_eq) d }
  else
    -- `b` has loose bound variables
    match_expr d with
    | True =>
      let pTrue := b.instantiate1 (mkConst ``True.intro)
      if (← isProp pTrue) then
        let p := mkLambda varName info d b
        return .done { expr := pTrue, proof? := mkApp (mkConst ``Grind.forall_true) p }
    | False =>
      let p := mkLambda varName info d b
      if (← isDefEq (← inferType p) (mkForall varName info d (mkSort 0))) then
        return .done { expr := mkConst ``True, proof? := mkApp (mkConst ``forall_false) p }
    | _ => pure ()
  -- We try to apply `forall_and`, `forall_or_forall`, and `forall_forall_or` whether `b` has loose bound variables or not.
  if b.isApp && b.getAppNumArgs == 2 then
    let .const bDeclName _ := b.appFn!.appFn! | return .continue
    if bDeclName == ``Or then
      let left  := b.appFn!.appArg!
      let right := b.appArg!
      let α := d
      if let some (bName, βRaw, qRaw) := isForallOrNot? left then
        let pRaw := right
        let p := mkLambda varName info α pRaw
        let q := mkLambda varName info α (mkLambda bName .default βRaw qRaw)
        let β := mkLambda varName info α βRaw
        let u ← getLevel α
        let v ← withLocalDeclD varName α fun a => getLevel (βRaw.instantiate1 a)
        let expr := mkForall varName info α (mkForall bName .default βRaw (mkOr qRaw (pRaw.liftLooseBVars 0 1)))
        return .visit { expr, proof? := mkApp4 (mkConst ``Grind.forall_forall_or [u, v]) α β p q }
      else if let some (bName, βRaw, qRaw) := isForallOrNot? right then
        let pRaw := left
        let p := mkLambda varName info α pRaw
        let q := mkLambda varName info α (mkLambda bName .default βRaw qRaw)
        let β := mkLambda varName info α βRaw
        let u ← getLevel α
        let v ← withLocalDeclD varName α fun a => getLevel (βRaw.instantiate1 a)
        let expr := mkForall varName info α (mkForall bName .default βRaw (mkOr (pRaw.liftLooseBVars 0 1) qRaw))
        return .visit { expr, proof? := mkApp4 (mkConst ``Grind.forall_or_forall [u, v]) α β p q }
    else if bDeclName == ``And then
      let pRaw := b.appFn!.appArg!
      let qRaw := b.appArg!
      let p := mkLambda varName info d pRaw
      let q := mkLambda varName info d qRaw
      let expr := mkAnd (mkForall varName info d pRaw) (mkForall varName info d qRaw)
      let u ← getLevel d
      return .visit { expr, proof? := mkApp3 (mkConst ``Grind.forall_and [u]) d p q }
  -- None of the rules were applicable
  return .continue

/--
Applies the following rewriting rules:
- `Grind.exists_or`
- `Grind.exists_and_left`
- `Grind.exists_and_right`
- `Grind.exists_prop`
- `Grind.exists_const`
-/
builtin_simproc_decl simpExists (Exists _) := fun e => do
  let_expr ex@Exists α fn := e | return .continue
  let .lam x _ b _ := fn | return .continue
  if b.isApp && b.getAppNumArgs == 2 then
    let .const bDeclName _ := b.appFn!.appFn! | return .continue
    if bDeclName == ``Or then
      let pRaw := b.appFn!.appArg!
      let qRaw := b.appArg!
      let p := mkLambda x .default α pRaw
      let q := mkLambda x .default α qRaw
      let u := ex.constLevels!
      let expr := mkOr (mkApp2 ex α p) (mkApp2 ex α q)
      return .visit { expr, proof? := mkApp3 (mkConst ``Grind.exists_or u) α p q }
    else if bDeclName == ``And then
      let pRaw := b.appFn!.appArg!
      let qRaw := b.appArg!
      if !pRaw.hasLooseBVars then
        let b := pRaw
        let p := mkLambda x .default α qRaw
        let expr := mkAnd b (mkApp2 ex α p)
        let u := ex.constLevels!
        return .visit { expr, proof? := mkApp3 (mkConst ``Grind.exists_and_left u) α p b }
      else if !qRaw.hasLooseBVars then
        let p := mkLambda x .default α pRaw
        let b := qRaw
        let expr := mkAnd (mkApp2 ex α p) b
        let u := ex.constLevels!
        return .visit { expr, proof? := mkApp3 (mkConst ``Grind.exists_and_right u) α p b }
  if !b.hasLooseBVars then
    if (← isProp α) then
      let expr := mkAnd α b
      return .visit { expr, proof? := mkApp2 (mkConst ``Grind.exists_prop) α b }
    else
      let u := ex.constLevels!
      let nonempty := mkApp (mkConst ``Nonempty u) α
      if let some nonemptyInst ← synthInstanceMeta? nonempty then
        return .visit { expr := b, proof? := mkApp3 (mkConst ``Grind.exists_const u) α nonemptyInst b }
  return .continue

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant3a6c9690c2d319c0cd72060a65159ca814987bb89ce7ad633a23d0ac8d1a6c62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForallProp/Variant3a6c9690c2d319c0cd72060a65159ca814987bb89ce7ad633a23d0ac8d1a6c62.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14bb804b0ede7aac0ac190c76c5c11b5baa95a12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
