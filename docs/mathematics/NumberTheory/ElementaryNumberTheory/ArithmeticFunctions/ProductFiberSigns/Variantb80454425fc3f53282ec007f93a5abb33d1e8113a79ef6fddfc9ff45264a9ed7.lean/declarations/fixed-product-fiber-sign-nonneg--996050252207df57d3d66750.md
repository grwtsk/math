# fixed_product_fiber_sign_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1342796-554f-cc19-c1da-aaf9b1f07fc8",
  "kind": "theorem",
  "lexical_name": "fixed_product_fiber_sign_nonneg",
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
  "slug": "fixed-product-fiber-sign-nonneg--996050252207df57d3d66750",
  "source": {
    "blob": "4d7d3a7b9f5b21372d0e7ce56be92f16ad4def41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 58,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ProductFiberSigns/Variantb80454425fc3f53282ec007f93a5abb33d1e8113a79ef6fddfc9ff45264a9ed7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:996050252207df57d3d66750abd2a2ef9a599bf2be983e3faf87024d9b9acfce",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ProductFiberSigns/Variantb80454425fc3f53282ec007f93a5abb33d1e8113a79ef6fddfc9ff45264a9ed7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1342796-554f-cc19-c1da-aaf9b1f07fc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_product_fiber_sign_nonneg (S T : Finset ℕ) (n : ℕ) :
    0 ≤ (-1 : ℝ)^ArithmeticFunction.cardFactors n *
      (∑ i ∈ S, ∑ j ∈ T, if i*j=n then
        (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) := by
  rw [fixed_product_fiber_sign]
  have hs : ((-1 : ℝ)^ArithmeticFunction.cardFactors n)^2=1 := by
    rw [← pow_mul, mul_comm _ 2, pow_mul, neg_one_sq, one_pow]
  rw [← mul_assoc, ← pow_two, hs, one_mul]
  apply sum_nonneg
  intro i _
  apply sum_nonneg
  intro j _
  split_ifs <;> positivity

end
end ProductFiberSignsScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ProductFiberSigns/Variantb80454425fc3f53282ec007f93a5abb33d1e8113a79ef6fddfc9ff45264a9ed7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ProductFiberSigns/Variantb80454425fc3f53282ec007f93a5abb33d1e8113a79ef6fddfc9ff45264a9ed7.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d7d3a7b9f5b21372d0e7ce56be92f16ad4def41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
