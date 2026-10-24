# prod_cyclotomic_eq_X_pow_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d85c79681ce75e89a6c58a85c2a2f5279474c82f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 362,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f321c8c-36cf-4ab5-67b6-1acb478e62c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:702df7bc-2756-313b-8c8a-82f709730310",
  "kind": "theorem",
  "lexical_name": "prod_cyclotomic_eq_X_pow_sub_one",
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
  "slug": "prod-cyclotomic-eq-x-pow-sub-one--56f60ae6e77d0e810ef9f4c4",
  "source": {
    "blob": "d85c79681ce75e89a6c58a85c2a2f5279474c82f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 362,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56f60ae6e77d0e810ef9f4c4e8fb46e009a3dde01ee39f79a3b1868c3c8a6605",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:702df7bc-2756-313b-8c8a-82f709730310`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_cyclotomic_eq_X_pow_sub_one {n : ℕ} (hpos : 0 < n) (R : Type*) [CommRing R] :
    ∏ i in Nat.divisors n, cyclotomic i R = X ^ n - 1 := by
  have integer : ∏ i in Nat.divisors n, cyclotomic i ℤ = X ^ n - 1 := by
    apply map_injective (Int.castRingHom ℂ) Int.cast_injective
    simp only [Polynomial.map_prod, int_cyclotomic_spec, Polynomial.map_pow, map_X,
      Polynomial.map_one, Polynomial.map_sub]
    exact prod_cyclotomic'_eq_X_pow_sub_one hpos (Complex.isPrimitiveRoot_exp n hpos.ne')
  simpa only [Polynomial.map_prod, map_cyclotomic_int, Polynomial.map_sub, Polynomial.map_one,
    Polynomial.map_pow, Polynomial.map_X] using congr_arg (map (Int.castRingHom R)) integer
set_option linter.uppercaseLean3 false in
#align polynomial.prod_cyclotomic_eq_X_pow_sub_one Polynomial.prod_cyclotomic_eq_X_pow_sub_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant5d20294909e34c9e49dee6ab82669d157dc0b364e70ac7d9190dd95b308a2e19.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d85c79681ce75e89a6c58a85c2a2f5279474c82f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
