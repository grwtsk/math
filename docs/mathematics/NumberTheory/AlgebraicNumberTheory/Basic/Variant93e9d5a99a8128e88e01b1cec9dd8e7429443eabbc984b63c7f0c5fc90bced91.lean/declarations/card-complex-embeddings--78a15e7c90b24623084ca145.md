# card_complex_embeddings

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f2c8e5b4829b7dce562bd07c5c382b1abc7dd1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 401,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93e9d5a99a8128e88e01b1cec9dd8e7429443eabbc984b63c7f0c5fc90bced91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e39cfc78-20bf-c7bb-1b93-1e19e7a6cb78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b050e7a2-9a6e-737f-82ff-162796c669ef",
  "kind": "theorem",
  "lexical_name": "card_complex_embeddings",
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
  "slug": "card-complex-embeddings--78a15e7c90b24623084ca145",
  "source": {
    "blob": "3f2c8e5b4829b7dce562bd07c5c382b1abc7dd1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 401,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant93e9d5a99a8128e88e01b1cec9dd8e7429443eabbc984b63c7f0c5fc90bced91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78a15e7c90b24623084ca145e9122535e838ae5f5edec44bd76e72d0cbbf0dc9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant93e9d5a99a8128e88e01b1cec9dd8e7429443eabbc984b63c7f0c5fc90bced91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b050e7a2-9a6e-737f-82ff-162796c669ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_complex_embeddings :
    card { φ : K →+* ℂ // ¬ComplexEmbedding.IsReal φ } = 2 * nrComplexPlaces K := by
  suffices ∀ w : { w : InfinitePlace K // IsComplex w },
     #{φ : {φ //¬ ComplexEmbedding.IsReal φ} | mkComplex φ = w} = 2 by
    rw [Fintype.card, Finset.card_eq_sum_ones, ← Finset.sum_fiberwise _ (fun φ => mkComplex φ)]
    simp_rw [Finset.sum_const, this, smul_eq_mul, mul_one, Fintype.card, Finset.card_eq_sum_ones,
      Finset.mul_sum, Finset.sum_const, smul_eq_mul, mul_one]
  rintro ⟨w, hw⟩
  convert card_filter_mk_eq w
  · rw [← Fintype.card_subtype, ← Fintype.card_subtype]
    refine Fintype.card_congr (Equiv.ofBijective ?_ ⟨fun _ _ h => ?_, fun ⟨φ, hφ⟩ => ?_⟩)
    · exact fun ⟨φ, hφ⟩ => ⟨φ.val, by rwa [Subtype.ext_iff] at hφ⟩
    · rwa [Subtype.mk_eq_mk, ← Subtype.ext_iff, ← Subtype.ext_iff] at h
    · refine ⟨⟨⟨φ, not_isReal_of_mk_isComplex (hφ.symm ▸ hw)⟩, ?_⟩, rfl⟩
      rwa [Subtype.ext_iff, mkComplex_coe]
  · simp_rw [mult, not_isReal_iff_isComplex.mpr hw, ite_false]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant93e9d5a99a8128e88e01b1cec9dd8e7429443eabbc984b63c7f0c5fc90bced91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant93e9d5a99a8128e88e01b1cec9dd8e7429443eabbc984b63c7f0c5fc90bced91.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f2c8e5b4829b7dce562bd07c5c382b1abc7dd1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
