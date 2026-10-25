# propagateConstructorEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:573bd01a6e4ec7e6090a8853894b6da8122d02f9c5bb1ca26c75c9784e1aabf7",
  "kind": "def",
  "lexical_name": "propagateConstructorEq",
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
  "slug": "propagateconstructoreq--dcbb9049e949d547090708b5",
  "source": {
    "blob": "cab91cdf92ef91ceb61392d33d99236b369fae4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1177,
    "line": 1138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcbb9049e949d547090708b5ef9099b7f20bbf1b9c8f49a617494e70c9b7aaab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:573bd01a6e4ec7e6090a8853894b6da8122d02f9c5bb1ca26c75c9784e1aabf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1138–1177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def propagateConstructorEq (e₁ e₂ : Expr) : CCM Unit := do
  let env ← getEnv
  let some c₁ ← isConstructorApp? e₁ | failure
  let some c₂ ← isConstructorApp? e₂ | failure
  unless ← pureIsDefEq (← inferType e₁) (← inferType e₂) do
    -- The implications above only hold if the types are equal.
    -- TODO(Leo): if the types are different, we may still propagate by searching the equivalence
    --            classes of `e₁` and `e₂` for other constructors that may have compatible types.
    return
  let some h ← getEqProof e₁ e₂ | failure
  if c₁.name == c₂.name then
    if 0 < c₁.numFields then
      let name := mkInjectiveTheoremNameFor c₁.name
      if env.contains name then
        let rec
          /-- Given an injective theorem `val : type`, whose `type` is the form of
          `a₁ = a₂ ∧ HEq b₁ b₂ ∧ ..`, destruct `val` and push equality proofs to the todo list. -/
          go (type val : Expr) : CCM Unit := do
            let push (type val : Expr) : CCM Unit :=
              match type.eq? with
              | some (_, lhs, rhs) => pushEq lhs rhs val
              | none =>
                match type.heq? with
                | some (_, _, lhs, rhs) => pushHEq lhs rhs val
                | none => failure
            match type.and? with
            | some (l, r) =>
              push l (.proj ``And 0 val)
              go r (.proj ``And 1 val)
            | none =>
              push type val
        let val ← mkAppM name #[h]
        let type ← inferType val
        go type val
  else
    let falsePr ← mkNoConfusion (.const ``False []) h
    let H := Expr.app (.const ``true_eq_false_of_false []) falsePr
    pushEq (.const ``True []) (.const ``False []) H

/-- Derive contradiction if we can get equality between different values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean#L1138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cab91cdf92ef91ceb61392d33d99236b369fae4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
