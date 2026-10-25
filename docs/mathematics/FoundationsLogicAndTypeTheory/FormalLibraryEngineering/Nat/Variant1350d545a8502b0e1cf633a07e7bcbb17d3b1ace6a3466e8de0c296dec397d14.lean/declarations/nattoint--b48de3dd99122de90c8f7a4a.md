# natToInt'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b02c09d19af8428bb3ead83ad527a5e138ac579295595694b4ad75fb2cb12de",
  "kind": "def",
  "lexical_name": "natToInt'",
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
  "slug": "nattoint--b48de3dd99122de90c8f7a4a",
  "source": {
    "blob": "077d0d36de2dc68929fb568613c5a3623b33f966",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b48de3dd99122de90c8f7a4a1e0af40570a9ba4aa8db4d33d378f27d97eb9396",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b02c09d19af8428bb3ead83ad527a5e138ac579295595694b4ad75fb2cb12de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def natToInt' (e : Expr) : GoalM (Expr × Expr) := do
  match_expr e with
  | HAdd.hAdd _ _ _ inst a b =>
    if (← isInstHAddNat inst) then
      let (a', h₁) ← natToInt' a
      let (b', h₂) ← natToInt' b
      let h := mkApp6 (mkConst ``Nat.ToInt.add_congr) a b a' b' h₁ h₂
      return (mkIntAdd a' b', h)
    else
      mkNatVar e
  | HMul.hMul _ _ _ inst a b =>
    if (← isInstHMulNat inst) then
      let (a', h₁) ← natToInt' a
      let (b', h₂) ← natToInt' b
      let h := mkApp6 (mkConst ``Nat.ToInt.mul_congr) a b a' b' h₁ h₂
      return (mkIntMul a' b', h)
    else
      mkNatVar e
  | HDiv.hDiv _ _ _ inst a b =>
    if (← isInstHDivNat inst) then
      let (a', h₁) ← natToInt' a
      let (b', h₂) ← natToInt' b
      let h := mkApp6 (mkConst ``Nat.ToInt.div_congr) a b a' b' h₁ h₂
      return (mkIntDiv a' b', h)
    else
      mkNatVar e
  | HMod.hMod _ _ _ inst a b =>
    if (← isInstHModNat inst) then
      let (a', h₁) ← natToInt' a
      let (b', h₂) ← natToInt' b
      let h := mkApp6 (mkConst ``Nat.ToInt.mod_congr) a b a' b' h₁ h₂
      return (mkIntMod a' b', h)
    else
      mkNatVar e
  | OfNat.ofNat _ _ _ =>
    if let some n ← getNatValue? e then
      let h := mkApp (mkConst ``Nat.ToInt.natCast_ofNat) e
      return (mkIntLit n, h)
    else
      mkNatVar e
  | HPow.hPow _ _ _ inst a k =>
    if (← isInstHPowNat inst) then
      let (a', h₁) ← natToInt' a
      let h := mkApp4 (mkConst ``Nat.ToInt.pow_congr) a k a' h₁
      return (mkIntPowNat a' k, h)
    else
      mkNatVar e
  | Fin.val n a =>
    let type ← shareCommon (mkApp (mkConst ``Fin) n)
    if let some (a', h) ← toInt? a type then
      let h := mkApp4 (mkConst ``Nat.ToInt.finVal) n a a' h
      return (a' , h)
    else
      -- `n` is not a numeral, but we can still assert `e < n`
      let alreadyProcessed := (← get').natToIntMap.contains { expr := e }
      let r ← mkNatVar e
      unless alreadyProcessed do pushNewFact <| mkApp2 (mkConst ``Fin.isLt) n a
      return r
  | _ => mkNatVar e

/--
Given `a : Nat`, returns `(a', h)` such that `a' : Int`, and `h : NatCast.natCast a = a'`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant1350d545a8502b0e1cf633a07e7bcbb17d3b1ace6a3466e8de0c296dec397d14.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `077d0d36de2dc68929fb568613c5a3623b33f966` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
