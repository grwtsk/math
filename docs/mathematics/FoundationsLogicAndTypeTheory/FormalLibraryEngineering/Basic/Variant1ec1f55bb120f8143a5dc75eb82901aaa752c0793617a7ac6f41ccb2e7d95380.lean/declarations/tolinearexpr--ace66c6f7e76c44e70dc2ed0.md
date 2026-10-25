# toLinearExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08cec46716963dff46669aeb9dd151645d0619006f4f1692689cce56192b5d52",
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
  "slug": "tolinearexpr--ace66c6f7e76c44e70dc2ed0",
  "source": {
    "blob": "a7d36b08e59f503a22716ba632c7d4dad6d4ba2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ec1f55bb120f8143a5dc75eb82901aaa752c0793617a7ac6f41ccb2e7d95380.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ace66c6f7e76c44e70dc2ed083ca0d634e8975e991f2de81b747fd8e9b0ac863",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ec1f55bb120f8143a5dc75eb82901aaa752c0793617a7ac6f41ccb2e7d95380.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08cec46716963dff46669aeb9dd151645d0619006f4f1692689cce56192b5d52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–145.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ec1f55bb120f8143a5dc75eb82901aaa752c0793617a7ac6f41ccb2e7d95380.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1ec1f55bb120f8143a5dc75eb82901aaa752c0793617a7ac6f41ccb2e7d95380.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7d36b08e59f503a22716ba632c7d4dad6d4ba2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
