# exists_ne_zero_mem_ringOfIntegers_of_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40cba1711a546ee181af75306b50c3f2d773ceda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 617,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f284863f0100eb30f16d7b933c1a3d008744115b86214b89acb9129950d0e77e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39e9efab-f7ea-5348-04d2-083f122e0ec1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dca9dcab-4a49-89c0-f8a9-af605e1e4572",
  "kind": "theorem",
  "lexical_name": "exists_ne_zero_mem_ringOfIntegers_of_norm_le",
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
  "slug": "exists-ne-zero-mem-ringofintegers-of-norm-le--4658be09c7923358b675e7e6",
  "source": {
    "blob": "40cba1711a546ee181af75306b50c3f2d773ceda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 626,
    "line": 617,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantf284863f0100eb30f16d7b933c1a3d008744115b86214b89acb9129950d0e77e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4658be09c7923358b675e7e62a185080b9ffdcb62ac9fd95bcc6770e1e2602c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantf284863f0100eb30f16d7b933c1a3d008744115b86214b89acb9129950d0e77e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dca9dcab-4a49-89c0-f8a9-af605e1e4572`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 617–626.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ne_zero_mem_ringOfIntegers_of_norm_le {B : ℝ}
    (h : (minkowskiBound K ↑1) ≤ volume (convexBodySum K B)) :
    ∃ a : 𝓞 K, a ≠ 0 ∧ |Algebra.norm ℚ (a : K)| ≤ (B / finrank ℚ K) ^ finrank ℚ K := by
  obtain ⟨_, h_mem, h_nz, h_bd⟩ := exists_ne_zero_mem_ideal_of_norm_le K ↑1 h
  obtain ⟨a, rfl⟩ := (FractionalIdeal.mem_one_iff _).mp h_mem
  exact ⟨a, RingOfIntegers.coe_ne_zero_iff.mp h_nz, h_bd⟩

end minkowski

end NumberField.mixedEmbedding
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantf284863f0100eb30f16d7b933c1a3d008744115b86214b89acb9129950d0e77e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantf284863f0100eb30f16d7b933c1a3d008744115b86214b89acb9129950d0e77e.lean#L617).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40cba1711a546ee181af75306b50c3f2d773ceda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
