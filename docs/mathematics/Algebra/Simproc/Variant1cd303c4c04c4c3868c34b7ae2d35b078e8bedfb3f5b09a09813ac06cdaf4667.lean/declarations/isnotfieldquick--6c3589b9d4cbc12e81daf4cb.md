# isNotFieldQuick

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60efcdf03d305f647df51fbd13cc64c767c4a512bf206b2eadc07bf1017460d8",
  "kind": "def",
  "lexical_name": "isNotFieldQuick",
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
  "slug": "isnotfieldquick--6c3589b9d4cbc12e81daf4cb",
  "source": {
    "blob": "a640dafd35ec5a29a7ce1c30ff92c78e7dd68da9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 72,
    "path": "GRWTSK/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c3589b9d4cbc12e81daf4cb9da3695eb450b5219c6e4c3bb2eaf5602773c8f8",
  "verification": {
    "reference": "docs/verification/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60efcdf03d305f647df51fbd13cc64c767c4a512bf206b2eadc07bf1017460d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def isNotFieldQuick (type : Expr) : Bool := Id.run do
  let .const declName _ := type.getAppFn | return false
  return notField.contains declName

builtin_simproc_decl expandDiv (_ / _) := fun e => do
  let_expr f@HDiv.hDiv α β γ _ a b ← e | return .continue
  if isNotFieldQuick α then return .continue
  unless (← isDefEq α β <&&> isDefEq α γ) do return .continue
  let us := f.constLevels!
  let [u, _, _] := us | return .continue
  let field := mkApp (mkConst ``Grind.Field [u]) α
  let some fieldInst ← synthInstanceMeta? field | return .continue
  let some mulInst ← synthInstanceMeta? (mkApp3 (mkConst ``HMul us) α α α) | return .continue
  let some invInst ← synthInstanceMeta? (mkApp (mkConst ``Inv [u]) α) | return .continue
  let expr := mkApp6 (mkConst ``HMul.hMul us) α α α mulInst a (mkApp3 (mkConst ``Inv.inv [u]) α invInst b)
  return .visit { expr, proof? := some <| mkApp4 (mkConst ``Grind.Field.div_eq_mul_inv [u]) α fieldInst a b }

builtin_simproc_decl normFieldInv (_ ⁻¹) := fun e => do
  let_expr Inv.inv α _ a ← e | return .continue
  if isNotFieldQuick α then return .continue
  match_expr a with
  | NatCast.natCast _ _ _ => return .continue -- Already normalized
  | OfNat.ofNat _ _ _ => return .continue -- Already normalized
  | _ =>
  let some (expr, h) ← normFieldExpr? e α | return .continue
  checkWithKernel h
  return .done { expr, proof? := h }

/-!
Normalize arithmetic instances for `Nat` and `Int` operations.
Recall that both `Nat` and `Int` have builtin support in `grind`,
and we use the default instances. However, Mathlib may register
nonstandard ones after instances such as
```
instance instDistrib : Distrib Nat where
  mul := (· * ·)
```
are added to the environment.
-/

/-- Generic instance normalizer -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Simproc/Variant1cd303c4c04c4c3868c34b7ae2d35b078e8bedfb3f5b09a09813ac06cdaf4667.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a640dafd35ec5a29a7ce1c30ff92c78e7dd68da9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
