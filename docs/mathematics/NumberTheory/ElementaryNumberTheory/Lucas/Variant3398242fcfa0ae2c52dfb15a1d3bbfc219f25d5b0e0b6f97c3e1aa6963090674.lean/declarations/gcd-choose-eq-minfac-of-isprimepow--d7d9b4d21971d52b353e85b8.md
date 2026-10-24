# gcd_choose_eq_minFac_of_isPrimePow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31bd1f8d0f7f96128a4942ec32890ae7c8adf169",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/3398242fcfa0ae2c52dfb15a1d3bbfc219f25d5b0e0b6f97c3e1aa6963090674.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30c6b5f7-b400-5621-3046-075d64a3e9b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bcb25b6-e767-bfab-e1a3-20f6dcff85e0",
  "kind": "theorem",
  "lexical_name": "gcd_choose_eq_minFac_of_isPrimePow",
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
  "slug": "gcd-choose-eq-minfac-of-isprimepow--d7d9b4d21971d52b353e85b8",
  "source": {
    "blob": "31bd1f8d0f7f96128a4942ec32890ae7c8adf169",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 202,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lucas/Variant3398242fcfa0ae2c52dfb15a1d3bbfc219f25d5b0e0b6f97c3e1aa6963090674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7d9b4d21971d52b353e85b827d94d810e84744bfc8245ca5b43124aac922066",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lucas/Variant3398242fcfa0ae2c52dfb15a1d3bbfc219f25d5b0e0b6f97c3e1aa6963090674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bcb25b6-e767-bfab-e1a3-20f6dcff85e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcd_choose_eq_minFac_of_isPrimePow (h : IsPrimePow n) :
    (Icc 1 (n - 1)).gcd n.choose = n.minFac := by
  have ne_zero : (Icc 1 (n - 1)).gcd n.choose ≠ 0 :=
    gcd_ne_zero_iff.mpr ⟨1, by simp; grind [IsPrimePow.two_le h]⟩
  have isPrime := minFac_prime_iff.mpr (IsPrimePow.ne_one h)
  have : multiplicity n.minFac ((Icc 1 (n - 1)).gcd n.choose) = 1 := by
    refine multiplicity_eq_of_dvd_of_not_dvd ?_ (minFac_sq_ndvd_gcd_choose_of_isPrimePow h)
    simpa using minFac_dvd_gcd_choose_of_isPrimePow h
  rw [Nat.prod_primeFactors_coe_pow_factorization ne_zero, primeFactors_gcd_choose_of_isPrimePow h]
  simp [← Nat.multiplicity_eq_factorization isPrime, this]

/-- For a natural number `n` greater than `1`, assume that `n` is not a prime power, then
the greatest common divisor of  `choose n 1, ⋯, choose n (n - 1)` is `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lucas/Variant3398242fcfa0ae2c52dfb15a1d3bbfc219f25d5b0e0b6f97c3e1aa6963090674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lucas/Variant3398242fcfa0ae2c52dfb15a1d3bbfc219f25d5b0e0b6f97c3e1aa6963090674.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31bd1f8d0f7f96128a4942ec32890ae7c8adf169` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
