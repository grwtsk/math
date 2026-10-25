# defaultMkCtorProxyType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d547bb2a2a676519232bf459854b052d2ba1131e9b71eaab841a9d18fd64bcd5",
  "kind": "def",
  "lexical_name": "defaultMkCtorProxyType",
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
  "slug": "defaultmkctorproxytype--8bd0801dca7cae2b8c0b633b",
  "source": {
    "blob": "fe39c29b57aa8afb2366bb56f5b303e3f5bf1a5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bd0801dca7cae2b8c0b633b73950e7d644b2d8fe993da7e04a0920b8088b913",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d547bb2a2a676519232bf459854b052d2ba1131e9b71eaab841a9d18fd64bcd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def defaultMkCtorProxyType (xs : List (Expr × Name))
    (decorateSigma : Expr → TermElabM Expr := pure) :
    TermElabM (Expr × Term) :=
  match xs with
  | [] => return (mkConst ``Unit, ← `(term| ()))
  | [(x, a)] => do
    let xty ← inferType x
    if ← Meta.isProp xty then
      return (← mkAppM ``PLift #[xty], ← `(term| ⟨$(mkIdent a)⟩))
    else
      return (xty, mkIdent a)
  | (x, a) :: xs => do
    let (xsty, patt) ← defaultMkCtorProxyType xs
    let xty ← inferType x
    if ← Meta.isProp xty then
      withLocalDeclD `x' (← mkAppM ``PLift #[xty]) fun x' => do
        let xsty' := xsty.replaceFVar x (← mkAppM ``PLift.down #[x'])
        let ty ← decorateSigma (← mkAppM ``Sigma #[← mkLambdaFVars #[x'] xsty'])
        return (ty, ← `(term| ⟨⟨$(mkIdent a)⟩, $patt⟩))
    else
      let ty ← decorateSigma (← mkAppM ``Sigma #[← mkLambdaFVars #[x] xsty])
      return (ty, ← `(term| ⟨$(mkIdent a), $patt⟩))

/-- Create a `Sum` of types, mildly optimized to not have a trailing `Empty`.

The `decorateSum` function is to wrap the `Sum` a decorator such as `Lex`.
It should yield a definitionally equal type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProxyType/Variantf8caa1eeb02fb8508b587f95f8a0b6493b931dc58ad24ec166cdad31731ce9f6.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe39c29b57aa8afb2366bb56f5b303e3f5bf1a5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
