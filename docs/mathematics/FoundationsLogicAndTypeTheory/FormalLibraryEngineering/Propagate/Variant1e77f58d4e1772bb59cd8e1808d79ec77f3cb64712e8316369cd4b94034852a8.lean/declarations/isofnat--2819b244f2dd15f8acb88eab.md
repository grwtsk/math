# isOfNat?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:697567247561b3f819613ec78064faed62b638ce28284789e261b37f397999b5",
  "kind": "def",
  "lexical_name": "isOfNat?",
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
  "slug": "isofnat--2819b244f2dd15f8acb88eab",
  "source": {
    "blob": "65636bb150601251ec38988562b68283506f898d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2819b244f2dd15f8acb88eabf816e5a2a9cecb2ff7aba2eb6607887352697b63",
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

Occurrence: `declaration:697567247561b3f819613ec78064faed62b638ce28284789e261b37f397999b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def isOfNat? (a : Expr) : MetaM (Option Nat) := do
  let_expr OfNat.ofNat _ n _ := a | return none
  getNatValue? n

/--
Propagator for the `0*a`, `1*a`, `a*0`, `a*1` for semirings that do not have good support in
`grind ring`. We need this propagator because have normalization rules for them, and users
were surprised when using `grind [zero_mul]` did not have any effect. In this scenario,
`grind` was correctly instantiating `zero_mul : 0*a = 0`, but the normalizer reduces the
instance to `True`.

Alternative approach: We improve the support for equality reasoning for non-commutative rings
and semirings in `grind ring`. For example, we could just replace equalities and keep renormalizing.
If we implement this feature, this propagator can be deleted.
-/
builtin_grind_propagator propagateMul ↑HMul.hMul := fun e => do
  let_expr f@HMul.hMul α₁ α₂ α₃ _ a b := e | return ()
  let some semiringInst ← isUnsupportedSemiring? α₁ | return ()
  unless isSameExpr α₁ α₂ && isSameExpr α₁ α₃ do return ()
  let u :: _ := f.constLevels! | return ()
  let aRoot ← getRoot a
  let bRoot ← getRoot b
  if let some n ← isOfNat? aRoot then
    if n == 0 then
      pushEq e aRoot <| mkApp5 (mkConst ``Grind.Semiring.zero_mul_congr [u]) α₁ semiringInst a b (← mkEqProof a aRoot)
    else if n == 1 then
      pushEq e b <| mkApp5 (mkConst ``Grind.Semiring.one_mul_congr [u]) α₁ semiringInst a b (← mkEqProof a aRoot)
  else if let some n ← isOfNat? bRoot then
    if n == 0 then
      pushEq e bRoot <| mkApp5 (mkConst ``Grind.Semiring.mul_zero_congr [u]) α₁ semiringInst a b (← mkEqProof b bRoot)
    else if n == 1 then
      pushEq e a <| mkApp5 (mkConst ``Grind.Semiring.mul_one_congr [u]) α₁ semiringInst a b (← mkEqProof b bRoot)

end Lean.Meta.Grind.Arith
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Propagate/Variant1e77f58d4e1772bb59cd8e1808d79ec77f3cb64712e8316369cd4b94034852a8.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65636bb150601251ec38988562b68283506f898d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
