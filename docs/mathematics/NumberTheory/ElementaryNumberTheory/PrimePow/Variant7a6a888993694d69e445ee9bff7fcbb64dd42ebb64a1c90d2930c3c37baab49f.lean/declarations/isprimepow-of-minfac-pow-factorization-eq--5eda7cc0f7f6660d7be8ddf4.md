# isPrimePow_of_minFac_pow_factorization_eq

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
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97708fd0-37d1-3347-0b2c-444b4f4aae88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9dcd943a-525d-a868-7a60-e57a4ad9a0db",
  "kind": "theorem",
  "lexical_name": "isPrimePow_of_minFac_pow_factorization_eq",
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
  "slug": "isprimepow-of-minfac-pow-factorization-eq--5eda7cc0f7f6660d7be8ddf4",
  "source": {
    "blob": "1410e1d7515e13c38af8d3490cd9d1da3df94975",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 27,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5eda7cc0f7f6660d7be8ddf46cc3b4e832f71528dc65c06d037266a6f5a29ae6",
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

Occurrence: `result:9dcd943a-525d-a868-7a60-e57a4ad9a0db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrimePow_of_minFac_pow_factorization_eq {n : ℕ}
    (h : n.minFac ^ n.factorization n.minFac = n) (hn : n ≠ 1) : IsPrimePow n := by
  rcases eq_or_ne n 0 with (rfl | hn')
  · simp_all
  refine' ⟨_, _, (Nat.minFac_prime hn).prime, _, h⟩
  rw [pos_iff_ne_zero, ← Finsupp.mem_support_iff, Nat.factor_iff_mem_factorization,
    Nat.mem_factors_iff_dvd hn' (Nat.minFac_prime hn)]
  apply Nat.minFac_dvd
#align is_prime_pow_of_min_fac_pow_factorization_eq isPrimePow_of_minFac_pow_factorization_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant7a6a888993694d69e445ee9bff7fcbb64dd42ebb64a1c90d2930c3c37baab49f.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1410e1d7515e13c38af8d3490cd9d1da3df94975` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
