# mkNoConfusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2fa65d9c2d824fcccdd5adf10b48e7f87c5aa27d5e2e7c6581b45918c46be8e",
  "kind": "def",
  "lexical_name": "mkNoConfusion",
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
  "slug": "mknoconfusion--fb6743e1027b3b5e1f43be8a",
  "source": {
    "blob": "badc98ea274a8f09f3678220a28462f71e927671",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 535,
    "line": 477,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant7d8b45360bc016cdae3c9872d71ee499b96a94e88409ea9115d9202d1ab734e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb6743e1027b3b5e1f43be8ad94095d0baf4c62994846d54dce4c8e90ecc3f9c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant7d8b45360bc016cdae3c9872d71ee499b96a94e88409ea9115d9202d1ab734e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2fa65d9c2d824fcccdd5adf10b48e7f87c5aa27d5e2e7c6581b45918c46be8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkNoConfusion (target : Expr) (h : Expr) : MetaM Expr := do
  let type ← inferType h
  let type ← whnf type
  match type.eq? with
  | none           => throwAppBuilderException `noConfusion ("equality expected" ++ hasTypeMsg h type)
  | some (α, a, b) =>
    let α ← whnfD α
    matchConstInduct α.getAppFn (fun _ => throwAppBuilderException `noConfusion ("inductive type expected" ++ indentExpr α)) fun indVal us => do
      let u ← getLevel target
      if let some (ctorA, ys1) ← constructorApp'? a then
       if let some (ctorB, ys2) ← constructorApp'? b then
        -- Different constructors: Use use `ctorIdx`
        if ctorA.cidx ≠ ctorB.cidx then
          let ctorIdxName := Name.mkStr indVal.name "ctorIdx"
          if (← hasConst ctorIdxName) && (← hasConst `noConfusion_of_Nat) then
            let ctorIdx := mkAppN (mkConst ctorIdxName us) α.getAppArgs
            let v ← getLevel α
            return mkApp2 (mkConst ``False.elim [u]) target <|
              mkAppN (mkConst `noConfusion_of_Nat [v]) #[α, ctorIdx, a, b, h]
          else
            throwError "mkNoConfusion: Missing {ctorIdxName} or {`noConfusion_of_Nat}"
        else
          -- Same constructors: use per-constructor noConfusion
          -- Nullary constructors, the construction is trivial
          if ctorA.numFields = 0 then
            return ← withLocalDeclD `P target fun P => mkLambdaFVars #[P] P

          let noConfusionName := ctorA.name.str "noConfusion"
          unless (← hasConst noConfusionName) do
            throwError "mkNoConfusion: Missing {noConfusionName}"
          let noConfusionNameInfo ← getConstVal noConfusionName

          let xs := α.getAppArgs[:ctorA.numParams]
          let noConfusion := mkAppN (mkConst noConfusionName (u :: us)) xs
          let fields1 : Array Expr := ys1[ctorA.numParams:]
          let fields2 : Array Expr := ys2[ctorA.numParams:]
          let mut e := mkAppN noConfusion (#[target] ++ fields1 ++ fields2)
          let arity := noConfusionNameInfo.type.getNumHeadForalls
          -- Index equalities expected. Can be less than `indVal.numIndices` when this constructor
          -- has fixed indices.
          assert! arity ≥ xs.size + fields1.size + fields2.size + 3
          let numIndEqs := arity - (xs.size + fields1.size + fields2.size + 3) -- 3 for `target`, `h` and the continuation
          for _ in [:numIndEqs] do
            let eq ← whnf (← whnfForall (← inferType e)).bindingDomain!
            if let some (_,i,_,_) := eq.heq? then
              e := mkApp e (← mkHEqRefl i)
            else if let some (_,i,_) := eq.eq? then
              e := mkApp e (← mkEqRefl i)
            else
              throwError "mkNoConfusion: unexpected equality `{eq}` as next argument to{inlineExpr (← inferType e)}"
          let eq := (← whnfForall (← inferType e)).bindingDomain!
          if eq.isHEq then
            e := mkApp e (← mkHEqOfEq h)
          else
            e := mkApp e h
          return e
      throwError "mkNoConfusion: No manifest constructors in {a} = {b}"

/-- Given a `monad` and `e : α`, makes `pure e`.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant7d8b45360bc016cdae3c9872d71ee499b96a94e88409ea9115d9202d1ab734e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AppBuilder/Variant7d8b45360bc016cdae3c9872d71ee499b96a94e88409ea9115d9202d1ab734e2.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `badc98ea274a8f09f3678220a28462f71e927671` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
