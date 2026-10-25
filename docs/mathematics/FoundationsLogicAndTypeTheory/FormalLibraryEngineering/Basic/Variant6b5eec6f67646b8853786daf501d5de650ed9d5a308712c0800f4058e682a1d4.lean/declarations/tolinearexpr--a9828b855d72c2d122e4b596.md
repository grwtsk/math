# toLinearExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc28ae29bdcc18434c6f57e59bb7d2815afdef3130ca54286cc0060c643eb290",
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
  "slug": "tolinearexpr--a9828b855d72c2d122e4b596",
  "source": {
    "blob": "14a33fe145f99f6f7c4e0ab533a1cb30ffc37aba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9828b855d72c2d122e4b5965a5ce1dbf0efd7fecb5cdd889c6b139f3427df6d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc28ae29bdcc18434c6f57e59bb7d2815afdef3130ca54286cc0060c643eb290`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def toLinearExpr (e : Expr) : M Int.Internal.Linear.Expr := do
  match e with
  | .mdata _ e            => toLinearExpr e
  | .app ..               => visit e
  | .mvar ..              => visit e
  | _                     => addAsVar e
where
  visit (e : Expr) : M Int.Internal.Linear.Expr := do
    let mul (a b : Expr) := do
      match (← getIntValue? a) with
      | some k => return .mulL k (← toLinearExpr b)
      | none => match (← getIntValue? b) with
        | some k => return .mulR (← toLinearExpr a) k
        | none => addAsVar e
    match_expr e with
    | OfNat.ofNat _ _ _ =>
      if let some n ← getIntValue? e then return .num n
      else addAsVar e
    | Int.neg a => return .neg (← toLinearExpr a)
    | Neg.neg _ i a =>
      if (← DefEq.isInstNegInt i) then return .neg (← toLinearExpr a)
      else addAsVar e
    | Int.add a b => return .add (← toLinearExpr a) (← toLinearExpr b)
    | Add.add _ i a b =>
      if (← DefEq.isInstAddInt i) then return .add (← toLinearExpr a) (← toLinearExpr b)
      else addAsVar e
    | HAdd.hAdd _ _ _ i a b =>
      if (← DefEq.isInstHAddInt i) then return .add (← toLinearExpr a) (← toLinearExpr b)
      else addAsVar e
    | Int.sub a b => return .sub (← toLinearExpr a) (← toLinearExpr b)
    | Sub.sub _ i a b =>
      if (← DefEq.isInstSubInt i) then return .sub (← toLinearExpr a) (← toLinearExpr b)
      else addAsVar e
    | HSub.hSub _ _ _ i a b =>
      if (← DefEq.isInstHSubInt i) then return .sub (← toLinearExpr a) (← toLinearExpr b)
      else addAsVar e
    | Int.mul a b => mul a b
    | Mul.mul _ i a b =>
      if (← DefEq.isInstMulInt i) then mul a b
      else addAsVar e
    | HMul.hMul _ _ _ i a b =>
      if (← DefEq.isInstHMulInt i) then mul a b
      else addAsVar e
    | _ => addAsVar e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6b5eec6f67646b8853786daf501d5de650ed9d5a308712c0800f4058e682a1d4.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14a33fe145f99f6f7c4e0ab533a1cb30ffc37aba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
