# toLinearExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50434a3673cc120990c470a7dd26eeb60518641e7ed1faaf552cbe71eb8f9f53",
  "kind": "def",
  "lexical_name": "toLinearExpr",
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
  "slug": "tolinearexpr--d052acef06d32bfff9cb81f3",
  "source": {
    "blob": "6ea0998e525ff0017113a26c0a85b3d306545b35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d052acef06d32bfff9cb81f3810c5fcf411415b41c69772c1784e01bacde270e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50434a3673cc120990c470a7dd26eeb60518641e7ed1faaf552cbe71eb8f9f53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def toLinearExpr (e : Expr) : M LinearExpr := do
  match e with
  | .lit (.natVal n)      => return num n
  | .mdata _ e            => toLinearExpr e
  | .const ``Nat.zero ..  => return num 0
  | .app ..               => visit e
  | .mvar ..              => visit e
  | _                     => addAsVar e
where
  visit (e : Expr) : M LinearExpr := do
    let mul (a b : Expr) := do
      match (← evalNat a |>.run) with
      | some k => return mulL k (← toLinearExpr b)
      | none => match (← evalNat b |>.run) with
        | some k => return mulR (← toLinearExpr a) k
        | none => addAsVar e
    match_expr e with
    | OfNat.ofNat _ n i =>
      if (← Structural.isInstOfNatNat i) then
        toLinearExpr n
      else if (← isDefEqI i (mkInstOfNatNat n)) then
        toLinearExpr n
      else addAsVar e
    | Nat.succ a => return inc (← toLinearExpr a)
    | Nat.add a b => return add (← toLinearExpr a) (← toLinearExpr b)
    | Add.add _ i a b =>
      if (← DefEq.isInstAddNat i) then return add (← toLinearExpr a) (← toLinearExpr b)
      else addAsVar e
    | HAdd.hAdd _ _ _ i a b =>
      if (← DefEq.isInstHAddNat i) then return add (← toLinearExpr a) (← toLinearExpr b)
      else addAsVar e
    | Nat.mul a b => mul a b
    | Mul.mul _ i a b =>
      if (← DefEq.isInstMulNat i) then mul a b
      else addAsVar e
    | HMul.hMul _ _ _ i a b =>
      if (← DefEq.isInstHMulNat i) then mul a b
      else addAsVar e
    | _ => addAsVar e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd7ea87e2f45308921c62f9d1ebbbe1e66a9d53bb2fd1a90b4774d91d7f840508.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ea0998e525ff0017113a26c0a85b3d306545b35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
