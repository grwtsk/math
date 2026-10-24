# prod_cyclotomic_eq_geom_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "570e302a07f58e3be1a80aafcfa264d5c78e6f0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 346,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fa43cdb-7731-757c-0342-dc2f94d7ee9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8e18aa9-7dd8-9645-1dd7-490b61b4e7a7",
  "kind": "theorem",
  "lexical_name": "prod_cyclotomic_eq_geom_sum",
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
  "slug": "prod-cyclotomic-eq-geom-sum--f0eee5534c4808d536f02de5",
  "source": {
    "blob": "570e302a07f58e3be1a80aafcfa264d5c78e6f0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 346,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0eee5534c4808d536f02de55bf051e32d57caa74d6724f9b84ecdba15a344cf",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8e18aa9-7dd8-9645-1dd7-490b61b4e7a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_cyclotomic_eq_geom_sum {n : ℕ} (h : 0 < n) (R) [CommRing R] :
    ∏ i ∈ n.divisors.erase 1, cyclotomic i R = ∑ i ∈ Finset.range n, X ^ i := by
  suffices (∏ i ∈ n.divisors.erase 1, cyclotomic i ℤ) = ∑ i ∈ Finset.range n, X ^ i by
    simpa only [Polynomial.map_prod, map_cyclotomic_int, Polynomial.map_sum, Polynomial.map_pow,
      Polynomial.map_X] using congr_arg (map (Int.castRingHom R)) this
  rw [← mul_left_inj' (cyclotomic_ne_zero 1 ℤ), prod_erase_mul _ _ (Nat.one_mem_divisors.2 h.ne'),
    cyclotomic_one, geom_sum_mul, prod_cyclotomic_eq_X_pow_sub_one h]

/-- If `p` is prime, then `cyclotomic p R = ∑ i ∈ range p, X ^ i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant6794e0b6c39a9f53127037a6f0c5ed29fadc283279ffac5876fbb172eb8d8a1b.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `570e302a07f58e3be1a80aafcfa264d5c78e6f0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
