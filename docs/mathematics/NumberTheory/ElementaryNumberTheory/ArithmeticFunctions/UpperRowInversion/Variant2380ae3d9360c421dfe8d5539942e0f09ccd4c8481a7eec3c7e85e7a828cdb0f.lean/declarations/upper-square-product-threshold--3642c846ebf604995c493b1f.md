# upper_square_product_threshold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f96f34fd-c3c2-5715-8be9-35c6ab36280c",
  "kind": "theorem",
  "lexical_name": "upper_square_product_threshold",
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
  "slug": "upper-square-product-threshold--3642c846ebf604995c493b1f",
  "source": {
    "blob": "97594ead3b30a81da7361a0e0a5ee94e89fd0033",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 176,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversion/Variant2380ae3d9360c421dfe8d5539942e0f09ccd4c8481a7eec3c7e85e7a828cdb0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3642c846ebf604995c493b1fdf22c1e9709d03e604fec09d343a1470fd5ad1fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversion/Variant2380ae3d9360c421dfe8d5539942e0f09ccd4c8481a7eec3c7e85e7a828cdb0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f96f34fd-c3c2-5715-8be9-35c6ab36280c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_square_product_threshold (A : ℝ) (i j : ℕ)
    (hi : ⌊Real.exp A⌋₊ / 2 < i) (hj : ⌊Real.exp A⌋₊ / 2 < j) :
    Real.exp (2 * A) ≤ 4 * ((i * j : ℕ) : ℝ) := by
  let N := ⌊Real.exp A⌋₊
  have hi2 : N + 1 ≤ 2 * i := by dsimp [N]; omega
  have hj2 : N + 1 ≤ 2 * j := by dsimp [N]; omega
  have hprod : (N + 1) ^ 2 ≤ 4 * (i * j) := by
    nlinarith [Nat.mul_le_mul hi2 hj2]
  have hp : ((N : ℝ) + 1) ^ 2 ≤ 4 * ((i * j : ℕ) : ℝ) := by exact_mod_cast hprod
  have hf : Real.exp A < (N : ℝ) + 1 := Nat.lt_floor_add_one (Real.exp A)
  have hx : Real.exp (2 * A) = (Real.exp A) ^ 2 := by
    rw [two_mul, Real.exp_add, pow_two]
  rw [hx]
  nlinarith [Real.exp_pos A]

/-- The entire upper square keeps the actual Φ kernel with both strict surviving channels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversion/Variant2380ae3d9360c421dfe8d5539942e0f09ccd4c8481a7eec3c7e85e7a828cdb0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversion/Variant2380ae3d9360c421dfe8d5539942e0f09ccd4c8481a7eec3c7e85e7a828cdb0f.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97594ead3b30a81da7361a0e0a5ee94e89fd0033` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
