# isNotFieldQuick

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60f6319ae532097812427a65410e1db43ebeead698fcd8edd80d5fdc20724b4b",
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
  "slug": "isnotfieldquick--e24aff47b06fa90c0f3a9940",
  "source": {
    "blob": "7c6b53635b26cecb72d0b153878f916511a5ad6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 64,
    "path": "GRWTSK/Algebra/Simproc/Variante8ccf06c1f35f17bd32c79fccdcbc58f2266d5e2edac91ac4cf5307f93d7303b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e24aff47b06fa90c0f3a99404019262ef1fdb52caeb9259acc088f7b4c2f3023",
  "verification": {
    "reference": "docs/verification/Algebra/Simproc/Variante8ccf06c1f35f17bd32c79fccdcbc58f2266d5e2edac91ac4cf5307f93d7303b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60f6319ae532097812427a65410e1db43ebeead698fcd8edd80d5fdc20724b4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–104.

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

[Verification target and public status](../../../../../verification/Algebra/Simproc/Variante8ccf06c1f35f17bd32c79fccdcbc58f2266d5e2edac91ac4cf5307f93d7303b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Simproc/Variante8ccf06c1f35f17bd32c79fccdcbc58f2266d5e2edac91ac4cf5307f93d7303b.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6b53635b26cecb72d0b153878f916511a5ad6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
