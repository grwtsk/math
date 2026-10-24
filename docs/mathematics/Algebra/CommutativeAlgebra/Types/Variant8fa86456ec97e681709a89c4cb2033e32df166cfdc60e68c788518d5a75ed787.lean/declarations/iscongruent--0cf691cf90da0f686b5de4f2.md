# isCongruent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff48de25f6ee824bd7ac8c68ced21f6a22981fa34be1af1dc2f39e960a9935e6",
  "kind": "def",
  "lexical_name": "isCongruent",
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
  "slug": "iscongruent--0cf691cf90da0f686b5de4f2",
  "source": {
    "blob": "319df85256f66e0b9295ed3113fcc6a61dd47bac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 693,
    "line": 644,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0cf691cf90da0f686b5de4f20f4ad1ed4dcc875fff6e978c6de5da1d8fba9216",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff48de25f6ee824bd7ac8c68ced21f6a22981fa34be1af1dc2f39e960a9935e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–693.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def isCongruent (enodes : ENodeMap) (e₁ e₂ : Expr) : Bool :=
  if let .forallE _ d₁ b₁ _ := e₁ then
    if let .forallE _ d₂ b₂ _ := e₂ then
      hasSameRoot enodes d₁ d₂ && hasSameRoot enodes b₁ b₂
    else
      false
  else match_expr e₁ with
  | Grind.nestedProof p₁ _ =>
    let_expr Grind.nestedProof p₂ _ := e₂ | false
    hasSameRoot enodes p₁ p₂
  | Grind.nestedDecidable p₁ _ =>
    let_expr Grind.nestedDecidable p₂ _ := e₂ | false
    hasSameRoot enodes p₁ p₂
  | Eq _ lhs₁ rhs₁ =>
    let_expr Eq _ lhs₂ rhs₂ := e₂ | false
    goEq lhs₁ rhs₁ lhs₂ rhs₂
  | _ => Id.run do
    let .app f a := e₁ | return false
    let .app g b := e₂ | return false
    if useFunCC' enodes e₁ then
      /-
      **Note**: We are not in `MetaM` here. Thus, we cannot check whether `f` and `g` have the same type.
      So, we approximate and try to handle this issue when generating the proof term.
      -/
      useFunCC' enodes e₂ && hasSameRoot enodes a b && hasSameRoot enodes f g
    else if useFunCC' enodes e₂ then
      /-
      Mismatched `funCC` flags: `e₁` uses first-order congruence, `e₂` uses higher-order.
      They hash differently (via `congrHash`), so declaring them congruent here would violate
      the `BEq`/`Hashable` consistency invariant required by `PHashSet`.
      -/
      false
    else
      hasSameRoot enodes a b && go f g
where
  goEq (lhs₁ rhs₁ lhs₂ rhs₂ : Expr) : Bool :=
    (hasSameRoot enodes lhs₁ lhs₂ && hasSameRoot enodes rhs₁ rhs₂)
    ||
    (hasSameRoot enodes lhs₁ rhs₂ && hasSameRoot enodes rhs₁ lhs₂)
  go (a b : Expr) : Bool :=
    if a.isApp && b.isApp then
      hasSameRoot enodes a.appArg! b.appArg! && go a.appFn! b.appFn!
    else if a.isApp || b.isApp then
      -- Different number of arguments: not congruent.
      false
    else
      -- Remark: we do not check whether the types of the functions are equal here
      -- because we are not in the `MetaM` monad.
      hasSameRoot enodes a b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Types/Variant8fa86456ec97e681709a89c4cb2033e32df166cfdc60e68c788518d5a75ed787.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `319df85256f66e0b9295ed3113fcc6a61dd47bac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
