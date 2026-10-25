# isBoolEqTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c33107965bca0df42bf4945c5f470d1fc96011c831c04abd780c4883f1eeb493",
  "kind": "def",
  "lexical_name": "isBoolEqTarget",
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
  "slug": "isbooleqtarget--326c9586ec8540b1ec725a97",
  "source": {
    "blob": "264539ea7faf06998e3580697d34e352712218a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:326c9586ec8540b1ec725a97d4a2705e7f88603e9525e8c83f5aad72b30a72df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c33107965bca0df42bf4945c5f470d1fc96011c831c04abd780c4883f1eeb493`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def isBoolEqTarget (declName : Name) : Bool :=
  declName == ``Bool.and ||
  declName == ``Bool.or  ||
  declName == ``Bool.not ||
  declName == ``BEq.beq  ||
  declName == ``decide

builtin_simproc_decl simpEq (@Eq _ _ _) := fun e => do
  let_expr f@Eq α lhs rhs ← e | return .continue
  match_expr α with
  | Bool =>
    let .const rhsName _ := rhs.getAppFn | return .continue
    if rhsName == ``true || rhsName == ``false then return .continue
    let .const lhsName _ := lhs.getAppFn | return .continue
    if lhsName == ``true || lhsName == ``false then
      -- Just apply comm
      let e' := mkApp3 f α rhs lhs
      return .visit { expr := e', proof? := mkApp2 (mkConst ``Grind.flip_bool_eq) lhs rhs }
    if isBoolEqTarget lhsName || isBoolEqTarget rhsName then
      -- Convert into `(lhs = true) = (rhs = true)`
      let tr := mkConst ``true
      let e' ← mkEq (mkApp3 f α lhs tr) (mkApp3 f α rhs tr)
      return .visit { expr := e', proof? := mkApp2 (mkConst ``Grind.bool_eq_to_prop) lhs rhs }
    return .continue
  | _ =>
    if lhs == rhs then
      let u := f.constLevels!
      return .done { expr := mkConst ``True, proof? := mkApp2 (mkConst ``eq_self u) α lhs }
    else if rhs == mkConst ``True then
      return .done { expr := lhs, proof? := mkApp (mkConst ``Grind.eq_true_eq) lhs }
    else if rhs == mkConst ``False then
      return .visit { expr := mkNot lhs, proof? := mkApp (mkConst ``Grind.eq_false_eq) lhs }
  return .continue

builtin_simproc_decl simpDIte (@dite _ _ _ _ _) := fun e => do
 let_expr f@dite α c inst a b ← e | return .continue
 let .lam _ _ aBody _ := a | return .continue
 if aBody.hasLooseBVars then return .continue
 let .lam _ _ bBody _ := b | return .continue
 if bBody.hasLooseBVars then return .continue
 let us := f.constLevels!
 let expr := mkApp5 (mkConst ``ite us) α c inst aBody bBody
 return .visit { expr, proof? := some (mkApp5 (mkConst ``dite_eq_ite us) c α aBody bBody inst) }

builtin_simproc_decl pushNot (Not _) := fun e => do
 let_expr Not p ← e | return .continue
 match_expr p with
 | True => return .visit { expr := mkConst ``False, proof? := some <| mkConst ``Grind.not_true  }
 | False => return .visit { expr := mkConst ``True, proof? := some <| mkConst ``Grind.not_false  }
 | And q r => return .visit { expr := mkApp2 (mkConst ``Or) (mkNot q) (mkNot r), proof? := some <| mkApp2 (mkConst ``Grind.not_and) q r }
 | Or q r => return .visit { expr := mkApp2 (mkConst ``And) (mkNot q) (mkNot r), proof? := some <| mkApp2 (mkConst ``Grind.not_or) q r }
 | Not q => return .visit { expr := q, proof? := some <| mkApp (mkConst ``Grind.not_not) q }
 | f@Eq α a b =>
   if α.isProp then
     return .visit { expr := mkApp3 f α a (mkNot b), proof? := some <| mkApp2 (mkConst ``Grind.not_eq_prop) a b }
   else match_expr b with
     | Bool.true => return .visit { expr := mkApp3 f α a (mkConst ``Bool.false), proof? := some <| mkApp (mkConst ``Bool.not_eq_true) a }
     | Bool.false => return .visit { expr := mkApp3 f α a (mkConst ``Bool.true), proof? := some <| mkApp (mkConst ``Bool.not_eq_false) a }
     | _ => return .continue
 | f@ite α c inst a b => return .visit { expr := mkApp5 f α c inst (mkNot a) (mkNot b), proof? := some <| mkApp4 (mkConst ``Grind.not_ite) c inst a b }
 | Exists α p =>
   let expr := mkForall `a .default α (mkNot (mkApp p (mkBVar 0)))
   let u ← getLevel α
   return .visit { expr, proof? := mkApp2 (mkConst ``Grind.not_exists [u]) α p }
 | LE.le α _ a b =>
   match_expr α with
   | Int => return .visit { expr := mkIntLE (mkIntAdd b (mkIntLit 1)) a, proof? := some <| mkApp2 (mkConst ``Int.not_le_eq) a b }
   | Nat => return .visit { expr := mkNatLE (mkNatAdd b (mkNatLit 1)) a, proof? := some <| mkApp2 (mkConst ``Nat.not_le_eq) a b }
   | _ => return .continue
 | _ =>
  if let .forallE n α b info := e then
    if α.isProp && !b.hasLooseBVars then
      return .visit { expr := mkAnd α (mkNot b), proof? := some <| mkApp2 (mkConst ``Grind.not_implies) α b }
    else
      let p    := mkLambda n info α b
      let notP := mkLambda n info α (mkNot b)
      let u ← getLevel α
      let expr := mkApp2 (mkConst ``Exists [u]) α notP
      return .visit { expr, proof? := some <| mkApp2 (mkConst ``Grind.not_forall [u]) α p }
  else
    return .continue

builtin_simproc_decl simpOr (Or _ _) := fun e => do
  let_expr Or p q ← e | return .continue
  match_expr p with
  | True => return .visit { expr := p, proof? := some <| mkApp (mkConst ``true_or) q }
  | False => return .visit { expr := q, proof? := some <| mkApp (mkConst ``false_or) q }
  | Or p₁ p₂ => return .visit { expr := mkOr p₁ (mkOr p₂ q), proof? := some <| mkApp3 (mkConst ``Grind.or_assoc) p₁ p₂ q }
  | _ =>
  match_expr q with
  | Or q r =>
    if p.isForall then return .continue
    if q.isForall then return .visit { expr := mkOr q (mkOr p r), proof? := some <| mkApp3 (mkConst ``Grind.or_swap12) p q r }
    if r.isForall then return .visit { expr := mkOr r (mkOr q p), proof? := some <| mkApp3 (mkConst ``Grind.or_swap13) p q r }
    return .continue
  | True => return .visit { expr := q, proof? := some <| mkApp (mkConst ``or_true) p }
  | False => return .visit { expr := p, proof? := some <| mkApp (mkConst ``or_false) p }
  | _ => return .continue

builtin_simproc_decl reduceCtorEqCheap (_ = _) := fun e => do
  let_expr Eq _ lhs rhs ← e | return .continue
  let some c₁ ← isConstructorApp? lhs | return .continue
  let some c₂ ← isConstructorApp? rhs | return .continue
  unless c₁.name != c₂.name do return .continue
  withLocalDeclD `h e fun h =>
    return .done { expr := mkConst ``False, proof? := (← withDefault <| mkEqFalse' (← mkLambdaFVars #[h] (← mkNoConfusion (mkConst ``False) h))) }

builtin_dsimproc_decl unfoldReducibleSimproc (_) := fun e => do
  Sym.unfoldReducibleStep e

/-- Returns the array of simprocs used by `grind`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variant03162a7ef7789615a8e2d21c64b022a5c3e51fc707d2860dd8f2e9d0f3e0b17f.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `264539ea7faf06998e3580697d34e352712218a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
