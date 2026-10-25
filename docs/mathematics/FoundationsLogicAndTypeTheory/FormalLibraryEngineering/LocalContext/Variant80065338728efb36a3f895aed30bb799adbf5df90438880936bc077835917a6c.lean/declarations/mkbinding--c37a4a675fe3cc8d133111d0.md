# mkBinding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27cd7321755aba6a9b9a19f3bec2b5473dd8d9a319c33824ff1beb4225e97fd9",
  "kind": "def",
  "lexical_name": "mkBinding",
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
  "slug": "mkbinding--c37a4a675fe3cc8d133111d0",
  "source": {
    "blob": "b70a646cd7bceed2d536a20ce52dc2fffe6b4df5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 587,
    "line": 562,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalContext/Variant80065338728efb36a3f895aed30bb799adbf5df90438880936bc077835917a6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c37a4a675fe3cc8d133111d08253ddacd8e6b5c2f095b07da1d6cce3d8619489",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalContext/Variant80065338728efb36a3f895aed30bb799adbf5df90438880936bc077835917a6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27cd7321755aba6a9b9a19f3bec2b5473dd8d9a319c33824ff1beb4225e97fd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 562–587.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def mkBinding (isLambda : Bool) (lctx : LocalContext) (xs : Array Expr) (b : Expr) (usedLetOnly : Bool := true) (generalizeNondepLet := false) : Expr :=
  let b := b.abstract xs
  xs.size.foldRev (init := b) fun i _ b =>
    let x := xs[i]
    let handleCDecl (n : Name) (ty : Expr) (bi : BinderInfo) : Expr :=
      let ty := ty.abstractRange i xs;
      if isLambda then
        Lean.mkLambda n bi ty b
      else
        Lean.mkForall n bi ty b
    match lctx.findFVar? x with
    | some (.cdecl _ _ n ty bi _)  =>
      handleCDecl n ty bi
    | some (.ldecl _ _ n ty val nondep _) =>
      if nondep && generalizeNondepLet then
        handleCDecl n ty .default
      else if !usedLetOnly || b.hasLooseBVar 0 then
        let ty  := ty.abstractRange i xs
        let val := val.abstractRange i xs
        mkLet n ty val b nondep
      else
        b.lowerLooseBVars 1 1
    | none => panic! "unknown free variable"

/-- Creates the expression `fun x₁ .. xₙ => b` for free variables `xs = #[x₁, .., xₙ]`,
suitably abstracting `b` and the types for each of the `xᵢ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalContext/Variant80065338728efb36a3f895aed30bb799adbf5df90438880936bc077835917a6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LocalContext/Variant80065338728efb36a3f895aed30bb799adbf5df90438880936bc077835917a6c.lean#L562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b70a646cd7bceed2d536a20ce52dc2fffe6b4df5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
