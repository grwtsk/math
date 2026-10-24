# Nat.mul_divisors_filter_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1410e1d7515e13c38af8d3490cd9d1da3df94975",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f70f1213-fc1d-596e-07d9-b72ccb88d80b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9201b999-16ef-e2fe-6580-32115b659e5c",
  "kind": "theorem",
  "lexical_name": "Nat.mul_divisors_filter_prime_pow",
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
  "slug": "nat-mul-divisors-filter-prime-pow--c50ef63bd6524437c6fd8be0",
  "source": {
    "blob": "1410e1d7515e13c38af8d3490cd9d1da3df94975",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 144,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c50ef63bd6524437c6fd8be065f75522333d25b68dc34cc2972b074d36c9f4da",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9201b999-16ef-e2fe-6580-32115b659e5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.mul_divisors_filter_prime_pow {a b : ℕ} (hab : a.coprime b) :
    (a * b).divisors.filter IsPrimePow = (a.divisors ∪ b.divisors).filter IsPrimePow := by
  rcases eq_or_ne a 0 with (rfl | ha)
  · simp only [Nat.coprime_zero_left] at hab
    simp [hab, Finset.filter_singleton, not_isPrimePow_one]
  rcases eq_or_ne b 0 with (rfl | hb)
  · simp only [Nat.coprime_zero_right] at hab
    simp [hab, Finset.filter_singleton, not_isPrimePow_one]
  ext n
  simp only [ha, hb, Finset.mem_union, Finset.mem_filter, Nat.mul_eq_zero, and_true_iff, Ne.def,
    and_congr_left_iff, not_false_iff, Nat.mem_divisors, or_self_iff]
  apply hab.isPrimePow_dvd_mul
#align nat.mul_divisors_filter_prime_pow Nat.mul_divisors_filter_prime_pow
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1410e1d7515e13c38af8d3490cd9d1da3df94975` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
