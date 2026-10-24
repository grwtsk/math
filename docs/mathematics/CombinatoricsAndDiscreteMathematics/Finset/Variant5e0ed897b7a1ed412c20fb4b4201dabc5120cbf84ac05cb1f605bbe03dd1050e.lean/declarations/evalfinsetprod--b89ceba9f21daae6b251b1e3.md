# evalFinsetProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:359f0b32ddd87a7d3f77456793002d0cf3c0b2c7dcf136c598a61bd9c3b710af",
  "kind": "def",
  "lexical_name": "evalFinsetProd",
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
  "slug": "evalfinsetprod--b89ceba9f21daae6b251b1e3",
  "source": {
    "blob": "37c0742304ab18b06dae30191ed820f9a0907bcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 248,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b89ceba9f21daae6b251b1e3cc07a890e9a73c6b93627a53c49d6e058748c264",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:359f0b32ddd87a7d3f77456793002d0cf3c0b2c7dcf136c598a61bd9c3b710af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def evalFinsetProd : PositivityExt where eval {u α} zα pα? e :=
  match pα? with | none => pure .none | some pα => do
  match e with
  | ~q(@Finset.prod $ι _ $instα $s $f) =>
    let i : Q($ι) ← mkFreshExprMVarQ q($ι) .syntheticOpaque
    have body : Q($α) := Expr.betaRev f #[i]
    let rbody ← core zα pα body
    let _instαmon ← synthInstanceQ q(CommMonoidWithZero $α)
    -- Try to show that the product is positive
    let p_pos : Option Q(0 < $e) ← do
      let .positive pbody := rbody | pure none -- Fail if the body is not provably positive
      -- TODO(https://github.com/leanprover-community/quote4/issues/38):
      -- We must name the following, else `assertInstancesCommute` loops.
      let .some _instαzeroone ← trySynthInstanceQ q(ZeroLEOneClass $α) | pure none
      let .some _instαposmul ← trySynthInstanceQ q(PosMulStrictMono $α) | pure none
      let .some _instαnontriv ← trySynthInstanceQ q(Nontrivial $α) | pure none
      assertInstancesCommute
      let pr : Q(∀ i, 0 < $f i) ← mkLambdaFVars #[i] pbody (binderInfoForMVars := .default)
      pure <| some q(prod_pos fun i _ ↦ $pr i)
    if let some p_pos := p_pos then return .positive p_pos
    -- Try to show that the product is nonnegative
    let p_nonneg : Option Q(0 ≤ $e) ← do
      let some pbody := rbody.toNonneg
        | pure none -- Fail if the body is not provably nonnegative
      let pr : Q(∀ i, 0 ≤ $f i) ← mkLambdaFVars #[i] pbody (binderInfoForMVars := .default)
      -- TODO(https://github.com/leanprover-community/quote4/issues/38):
      -- We must name the following, else `assertInstancesCommute` loops.
      let .some _instαzeroone ← trySynthInstanceQ q(ZeroLEOneClass $α) | pure none
      let .some _instαposmul ← trySynthInstanceQ q(PosMulMono $α) | pure none
      assertInstancesCommute
      pure <| some q(prod_nonneg fun i _ ↦ $pr i)
    if let some p_nonneg := p_nonneg then return .nonnegative p_nonneg
    -- Fall back to showing that the product is nonzero
    let pbody ← rbody.toNonzero
    let pr : Q(∀ i, $f i ≠ 0) ← mkLambdaFVars #[i] pbody (binderInfoForMVars := .default)
    -- TODO(https://github.com/leanprover-community/quote4/issues/38):
    -- We must name the following, else `assertInstancesCommute` loops.
    let _instαnontriv ← synthInstanceQ q(Nontrivial $α)
    let _instαnozerodiv ← synthInstanceQ q(NoZeroDivisors $α)
    assertInstancesCommute
    return .nonzero q(prod_ne_zero fun i _ ↦ $pr i)

end Mathlib.Meta.Positivity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant5e0ed897b7a1ed412c20fb4b4201dabc5120cbf84ac05cb1f605bbe03dd1050e.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37c0742304ab18b06dae30191ed820f9a0907bcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
