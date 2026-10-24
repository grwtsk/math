# traverseConstructor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11c7a1b5a8df621dfc27ac02cabb06c7f1f1d07c1cac2e49cc3b7419364cc318",
  "kind": "def",
  "lexical_name": "traverseConstructor",
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
  "slug": "traverseconstructor--60f80d8d7d8d2b71d3f862e4",
  "source": {
    "blob": "a5410cfebb1eadedb8f55018f29fbe8a413c445b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 344,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant7dd73171da1aea5029192b22430b972b6735f83d9ad5e0567a2f7d357360b3df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60f80d8d7d8d2b71d3f862e4b43a50dda9c564320f5f8a99103bb7aff0fbe03f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant7dd73171da1aea5029192b22430b972b6735f83d9ad5e0567a2f7d357360b3df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11c7a1b5a8df621dfc27ac02cabb06c7f1f1d07c1cac2e49cc3b7419364cc318`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def traverseConstructor (c n : Name) (applInst f α β : Expr) (args₀ : List Expr)
    (args₁ : List (Bool × Expr)) (m : MVarId) : TermElabM Unit := do
  let ad ← getAuxDefOfDeclName
  let g ← m.getType >>= instantiateMVars
  let args' ← args₁.mapM (fun (y : Bool × Expr) =>
      if y.1 then return (true, mkAppN (.fvar ad) #[g.appFn!, applInst, α, β, f, y.2])
      else traverseField n g.appFn! f α y.2)
  let gargs := args'.filterMap (fun y => if y.1 then some y.2 else none)
  let v ← mkFunCtor c (args₀.map (fun e => (false, e)) ++ args')
  let pureInst ← mkAppOptM ``Applicative.toPure #[none, applInst]
  let constr' ← mkAppOptM ``Pure.pure #[none, pureInst, none, v]
  let r ← gargs.foldlM
      (fun e garg => mkFunUnit garg >>= fun e' => mkAppM ``Seq.seq #[e, e']) constr'
  m.assign r
where
  /-- `mkFunCtor ctor [(true, (arg₁ : m type₁)), (false, (arg₂ : type₂)), (true, (arg₃ : m type₃)),
  (false, (arg₄ : type₄))]` makes `fun (x₁ : type₁) (x₃ : type₃) => ctor x₁ arg₂ x₃ arg₄`. -/
  mkFunCtor (c : Name) (args : List (Bool × Expr)) (fvars : Array Expr := #[])
      (aargs : Array Expr := #[]) : TermElabM Expr := do
    match args with
    | (true, x) :: xs =>
      let n ← mkFreshUserName `x
      let t ← inferType x
      withLocalDeclD n t.appArg! fun y => mkFunCtor c xs (fvars.push y) (aargs.push y)
    | (false, x) :: xs => mkFunCtor c xs fvars (aargs.push x)
    | [] => liftM <| mkAppOptM c (aargs.map some) >>= mkLambdaFVars fvars

/-- derive the `traverse` definition of a `Traversable` instance -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant7dd73171da1aea5029192b22430b972b6735f83d9ad5e0567a2f7d357360b3df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant7dd73171da1aea5029192b22430b972b6735f83d9ad5e0567a2f7d357360b3df.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5410cfebb1eadedb8f55018f29fbe8a413c445b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
