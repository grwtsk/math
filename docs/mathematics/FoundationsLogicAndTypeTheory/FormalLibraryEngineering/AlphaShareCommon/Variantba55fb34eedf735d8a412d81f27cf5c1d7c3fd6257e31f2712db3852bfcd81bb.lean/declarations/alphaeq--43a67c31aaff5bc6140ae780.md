# alphaEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:557249e6475075752c16b70ad518d2e6b4dc71b3973f51bd5bad467d90470c39",
  "kind": "def",
  "lexical_name": "alphaEq",
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
  "slug": "alphaeq--43a67c31aaff5bc6140ae780",
  "source": {
    "blob": "5ed2c94e9a7f5b43f4d9fee21372c3675b5afcc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variantba55fb34eedf735d8a412d81f27cf5c1d7c3fd6257e31f2712db3852bfcd81bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43a67c31aaff5bc6140ae780f217ecab97839dab2f5d2d30cbad509df185df18",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variantba55fb34eedf735d8a412d81f27cf5c1d7c3fd6257e31f2712db3852bfcd81bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:557249e6475075752c16b70ad518d2e6b4dc71b3973f51bd5bad467d90470c39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def alphaEq (e₁ e₂ : Expr) : Bool := Id.run do
  match e₁ with
  | .bvar .. | .mvar .. | .const .. | .fvar .. | .sort .. | .lit .. =>
    e₁ == e₂
  | .app f₁ a₁ =>
    let .app f₂ a₂ := e₂ | false
    isSameExpr f₁ f₂ && isSameExpr a₁ a₂
  | .letE _ _ v₁ b₁ _ =>
    let .letE _ _ v₂ b₂ _ := e₂ | false
    isSameExpr v₁ v₂ && isSameExpr b₁ b₂
  | .forallE _ d₁ b₁ _ =>
    let .forallE _ d₂ b₂ _ := e₂ | false
    isSameExpr d₁ d₂ && isSameExpr b₁ b₂
  | .lam _ d₁ b₁ _ =>
    let .lam _ d₂ b₂ _ := e₂ | false
    isSameExpr d₁ d₂ && isSameExpr b₁ b₂
  | .mdata d₁ b₁ =>
    let .mdata d₂ b₂ := e₂ | false
    return isSameExpr b₁ b₂ && d₁ == d₂
  | .proj n₁ i₁ b₁ =>
    let .proj n₂ i₂ b₂ := e₂ | false
    n₁ == n₂ && i₁ == i₂ && isSameExpr b₁ b₂

/--
Returns `true` if `declName` is the name of a grind helper declaration that
should not be unfolded by `unfoldReducible`. `Grind.EqMatch` and `Grind.MatchCond`
are `abbrev`s, but they are gadgets that must survive until the corresponding
propagators consume them.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variantba55fb34eedf735d8a412d81f27cf5c1d7c3fd6257e31f2712db3852bfcd81bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variantba55fb34eedf735d8a412d81f27cf5c1d7c3fd6257e31f2712db3852bfcd81bb.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ed2c94e9a7f5b43f4d9fee21372c3675b5afcc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
