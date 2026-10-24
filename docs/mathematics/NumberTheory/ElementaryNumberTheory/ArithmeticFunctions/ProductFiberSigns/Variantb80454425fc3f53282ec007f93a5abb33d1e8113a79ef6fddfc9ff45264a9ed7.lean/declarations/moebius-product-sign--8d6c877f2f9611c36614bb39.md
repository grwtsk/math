# moebius_product_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b69afcb-4b9c-3d99-f9f1-6d3bf038ff6f",
  "kind": "theorem",
  "lexical_name": "moebius_product_sign",
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
  "slug": "moebius-product-sign--8d6c877f2f9611c36614bb39",
  "source": {
    "blob": "4d7d3a7b9f5b21372d0e7ce56be92f16ad4def41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 20,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ProductFiberSigns/Variantb80454425fc3f53282ec007f93a5abb33d1e8113a79ef6fddfc9ff45264a9ed7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d6c877f2f9611c36614bb392850d46db462cbc2b54df30e4760b1764b8b92fa",
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

Occurrence: `result:2b69afcb-4b9c-3d99-f9f1-6d3bf038ff6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moebius_product_sign (i j : ℕ) :
    (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) =
      (-1 : ℝ)^ArithmeticFunction.cardFactors (i*j) *
        (ArithmeticFunction.moebius i : ℝ)^2 * (ArithmeticFunction.moebius j : ℝ)^2 := by
  by_cases hi : Squarefree i
  · by_cases hj : Squarefree j
    · have hsi : (ArithmeticFunction.moebius i : ℝ)^2 = 1 := by
        exact_mod_cast ArithmeticFunction.moebius_sq_eq_one_of_squarefree hi
      have hsj : (ArithmeticFunction.moebius j : ℝ)^2 = 1 := by
        exact_mod_cast ArithmeticFunction.moebius_sq_eq_one_of_squarefree hj
      rw [hsi, hsj, mul_one, mul_one,
        ArithmeticFunction.cardFactors_mul hi.ne_zero hj.ne_zero,
        ArithmeticFunction.moebius_apply_of_squarefree hi,
        ArithmeticFunction.moebius_apply_of_squarefree hj]
      push_cast
      rw [pow_add]
    · simp only [ArithmeticFunction.moebius_eq_zero_of_not_squarefree hj,
        Int.cast_zero, mul_zero, zero_pow (by norm_num : (2:ℕ)≠0)]
  · simp only [ArithmeticFunction.moebius_eq_zero_of_not_squarefree hi,
      Int.cast_zero, zero_mul, mul_zero, zero_pow (by norm_num : (2:ℕ)≠0)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ProductFiberSigns/Variantb80454425fc3f53282ec007f93a5abb33d1e8113a79ef6fddfc9ff45264a9ed7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ProductFiberSigns/Variantb80454425fc3f53282ec007f93a5abb33d1e8113a79ef6fddfc9ff45264a9ed7.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d7d3a7b9f5b21372d0e7ce56be92f16ad4def41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
