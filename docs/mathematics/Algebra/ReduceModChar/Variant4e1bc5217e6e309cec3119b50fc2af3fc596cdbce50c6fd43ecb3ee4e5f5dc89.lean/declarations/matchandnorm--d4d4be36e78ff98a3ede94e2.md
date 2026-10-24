# matchAndNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c51895106b1bd5f3f29bcb8c45f347074662cae213d3dad86dc7add3e655a21a",
  "kind": "def",
  "lexical_name": "matchAndNorm",
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
  "slug": "matchandnorm--d4d4be36e78ff98a3ede94e2",
  "source": {
    "blob": "069ecae606bea5cefcd387aff9a1be100f1f8393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 220,
    "path": "GRWTSK/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4d4be36e78ff98a3ede94e2589323a8c8fac95d218bd44cead329763479c872",
  "verification": {
    "reference": "docs/verification/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c51895106b1bd5f3f29bcb8c45f347074662cae213d3dad86dc7add3e655a21a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def matchAndNorm (expensive := false) (e : Expr) : MetaM Simp.Result := do
  let α ← inferType e
  let u_succ : Level ← getLevel α
  let (.succ u) := u_succ | throwError "expected {α} to be a `Type _`, not `Sort {u_succ}`"
  have α : Q(Type u) := α
  match ← typeToCharP (expensive := expensive) α with
    | (.intLike n instRing instCharP) =>
      -- Handle the numeric expressions first, e.g. `-5` (which shouldn't become `-1 * 5`)
      normIntNumeral n e instRing instCharP >>= Result.toSimpResult <|>
      normNegCoeffMul n e instRing instCharP <|> -- `-(3 * X) → ((n - 1) * 3) * X`
      normNeg n e instRing instCharP -- `-X → (n - 1) * X`

    /- Here we could add a `natLike` result using only a `Semiring` instance.
    This would activate only the less-powerful procedures
    that cannot handle subtraction.
    -/

    | .failure =>
      throwError "inferred type `{α}` does not have a known characteristic"

-- We use a few `simp` lemmas to preprocess the expression and clean up subterms like `0 * X`.
attribute [reduce_mod_char] sub_eq_add_neg
attribute [reduce_mod_char] zero_add add_zero zero_mul mul_zero one_mul mul_one
attribute [reduce_mod_char] eq_self_iff_true -- For closing non-numeric goals, e.g. `X = X`

/-- Reduce all numeric subexpressions of `e` modulo their characteristic.

Use `derive (expensive := true)` to do more work in finding the characteristic of
the type of `e`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReduceModChar/Variant4e1bc5217e6e309cec3119b50fc2af3fc596cdbce50c6fd43ecb3ee4e5f5dc89.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `069ecae606bea5cefcd387aff9a1be100f1f8393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
