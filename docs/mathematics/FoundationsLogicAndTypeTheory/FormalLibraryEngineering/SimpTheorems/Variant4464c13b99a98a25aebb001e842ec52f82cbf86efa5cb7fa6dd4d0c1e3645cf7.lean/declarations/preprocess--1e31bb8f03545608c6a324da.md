# preprocess

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d9beea53c1045b85e587746d265d148d204c30cce08145ba6b4a36fd1fafaa8",
  "kind": "def",
  "lexical_name": "preprocess",
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
  "slug": "preprocess--1e31bb8f03545608c6a324da",
  "source": {
    "blob": "375077889ab38d6151fbb04b213bf66513572d23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 319,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant4464c13b99a98a25aebb001e842ec52f82cbf86efa5cb7fa6dd4d0c1e3645cf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e31bb8f03545608c6a324da8d6f56bc1f8f8bdbcf865085f7b8951b73aeb98e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant4464c13b99a98a25aebb001e842ec52f82cbf86efa5cb7fa6dd4d0c1e3645cf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d9beea53c1045b85e587746d265d148d204c30cce08145ba6b4a36fd1fafaa8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def preprocess (e type : Expr) (inv : Bool) (isGlobal : Bool) : MetaM (List (Expr × Expr)) :=
  -- Make sure `mkAppM` etc used below can access private declarations when synthesizing proofs.
  -- When synthesizing new types, only elementary declarations like `Eq` and `False` from
  -- `Init.Prelude` are used and we can assume they are always publicly imported (and if not, we
  -- still get an error, just later than without this line).
  withoutExporting do
    go e type
where
  go (e type : Expr) : MetaM (List (Expr × Expr)) := do
  let type ← whnf type
  if type.isForall then
    forallTelescopeReducing type fun xs type => do
      let e := mkAppN e xs
      let ps ← go e type
      ps.mapM fun (e, type) =>
        return (← mkLambdaFVars xs e, ← mkForallFVars xs type)
  else if let some (_, lhs, rhs) := type.eq? then
    if isGlobal then
      checkBadRewrite lhs rhs
    if inv then
      let type ← mkEq rhs lhs
      let e    ← mkEqSymm e
      return [(e, type)]
    else
      return [(e, type)]
  else if let some (lhs, rhs) := type.iff? then
    if isGlobal then
      checkBadRewrite lhs rhs
    if inv then
      let type ← mkEq rhs lhs
      let e    ← mkEqSymm (← mkPropExt e)
      return [(e, type)]
    else
      let type ← mkEq lhs rhs
      let e    ← mkPropExt e
      return [(e, type)]
  else if let some (_, lhs, rhs) := type.ne? then
    if inv then
      throwError m!"Invalid `←` modifier: Cannot be applied to simp theorems of the form `a ≠ b`"
        ++ .note m!"This simp theorem will rewrite{inlineExpr (← mkEq lhs rhs)}to `{.ofConstName ``False}`, \
                    which should not be applied in the reverse direction"
    if rhs.isConstOf ``Bool.true then
      return [(← mkAppM ``Bool.of_not_eq_true #[e], ← mkEq lhs (mkConst ``Bool.false))]
    else if rhs.isConstOf ``Bool.false then
      return [(← mkAppM ``Bool.of_not_eq_false #[e], ← mkEq lhs (mkConst ``Bool.true))]
    let type ← mkEq (← mkEq lhs rhs) (mkConst ``False)
    let e    ← mkEqFalse e
    return [(e, type)]
  else if let some p := type.not? then
    if inv then
      throwError m!"Invalid `←` modifier: Cannot be applied to simp theorems of the form `¬ P`"
        ++ .note m!"This simp theorem will rewrite{inlineExpr p}to `{.ofConstName ``False}`, which should not \
                    be applied in the reverse direction"
    if let some (_, lhs, rhs) := p.eq? then
      if rhs.isConstOf ``Bool.true then
        return [(← mkAppM ``Bool.of_not_eq_true #[e], ← mkEq lhs (mkConst ``Bool.false))]
      else if rhs.isConstOf ``Bool.false then
        return [(← mkAppM ``Bool.of_not_eq_false #[e], ← mkEq lhs (mkConst ``Bool.true))]
    let type ← mkEq p (mkConst ``False)
    let e    ← withoutExporting do mkEqFalse e
    return [(e, type)]
  else if let some (type₁, type₂) := type.and? then
    let e₁ := mkProj ``And 0 e
    let e₂ := mkProj ``And 1 e
    return (← go e₁ type₁) ++ (← go e₂ type₂)
  else
    if inv then
      throwError m!"Invalid `←` modifier: Cannot be applied to a rule that rewrites to `True`"
        ++ .note m!"This simp theorem will rewrite{inlineExpr type}to `True`, which should not be applied in the reverse direction"
    let type ← mkEq type (mkConst ``True)
    let e    ← withoutExporting do mkEqTrue e
    return [(e, type)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant4464c13b99a98a25aebb001e842ec52f82cbf86efa5cb7fa6dd4d0c1e3645cf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpTheorems/Variant4464c13b99a98a25aebb001e842ec52f82cbf86efa5cb7fa6dd4d0c1e3645cf7.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `375077889ab38d6151fbb04b213bf66513572d23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
