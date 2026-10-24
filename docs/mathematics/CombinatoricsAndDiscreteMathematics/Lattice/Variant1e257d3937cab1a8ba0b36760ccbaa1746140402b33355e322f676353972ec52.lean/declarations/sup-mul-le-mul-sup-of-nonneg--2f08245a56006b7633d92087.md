# sup_mul_le_mul_sup_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c181ead3494a06cce55dd7785d290cedd4825064",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1894,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e257d3937cab1a8ba0b36760ccbaa1746140402b33355e322f676353972ec52.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b4ec64d-cb10-1ae1-c871-197fe45dc5e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4598ba26-2fc5-06bc-60b4-fc4bfac4dea4",
  "kind": "theorem",
  "lexical_name": "sup_mul_le_mul_sup_of_nonneg",
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
  "slug": "sup-mul-le-mul-sup-of-nonneg--2f08245a56006b7633d92087",
  "source": {
    "blob": "c181ead3494a06cce55dd7785d290cedd4825064",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1900,
    "line": 1894,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant1e257d3937cab1a8ba0b36760ccbaa1746140402b33355e322f676353972ec52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f08245a56006b7633d92087ed24f1562f32627fd389576aa3e956128cab4527",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant1e257d3937cab1a8ba0b36760ccbaa1746140402b33355e322f676353972ec52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4598ba26-2fc5-06bc-60b4-fc4bfac4dea4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1894–1900.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_mul_le_mul_sup_of_nonneg [LinearOrderedSemiring α] [OrderBot α] {a b : ι → α}
    (s : Finset ι) (ha : ∀ i ∈ s, 0 ≤ a i) (hb : ∀ i ∈ s, 0 ≤ b i) :
    s.sup (a * b) ≤ s.sup a * s.sup b :=
  Finset.sup_le fun _i hi =>
    mul_le_mul (le_sup hi) (le_sup hi) (hb _ hi) ((ha _ hi).trans <| le_sup hi)
#align finset.sup_mul_le_mul_sup_of_nonneg Finset.sup_mul_le_mul_sup_of_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant1e257d3937cab1a8ba0b36760ccbaa1746140402b33355e322f676353972ec52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant1e257d3937cab1a8ba0b36760ccbaa1746140402b33355e322f676353972ec52.lean#L1894).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c181ead3494a06cce55dd7785d290cedd4825064` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
