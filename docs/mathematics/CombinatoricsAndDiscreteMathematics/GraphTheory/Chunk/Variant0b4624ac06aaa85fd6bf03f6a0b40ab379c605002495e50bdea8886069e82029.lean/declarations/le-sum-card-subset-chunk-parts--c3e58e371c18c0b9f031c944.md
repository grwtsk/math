# le_sum_card_subset_chunk_parts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a70af065-b606-8881-17f1-3aa4c39fb69a",
  "kind": "theorem",
  "lexical_name": "le_sum_card_subset_chunk_parts",
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
  "slug": "le-sum-card-subset-chunk-parts--c3e58e371c18c0b9f031c944",
  "source": {
    "blob": "1d3640818920e6fa027bbee864ca5e7737da8fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 204,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3e58e371c18c0b9f031c944d3df383156be72f87f2e88a32adc6db63835ec1f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a70af065-b606-8881-17f1-3aa4c39fb69a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem le_sum_card_subset_chunk_parts (h𝒜 : 𝒜 ⊆ (chunk hP G ε hU).parts) (hs : s ∈ 𝒜) :
    (#𝒜 : ℝ) * #s * (m / (m + 1)) ≤ #(𝒜.sup id) := by
  rw [mul_div_assoc', div_le_iff₀ coe_m_add_one_pos, mul_right_comm]
  gcongr
  · rw [← (ofSubset _ h𝒜 rfl).sum_card_parts, ofSubset_parts, ← cast_mul, cast_le]
    exact card_nsmul_le_sum _ _ _ fun x hx => m_le_card_of_mem_chunk_parts <| h𝒜 hx
  · exact mod_cast card_le_m_add_one_of_mem_chunk_parts (h𝒜 hs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant0b4624ac06aaa85fd6bf03f6a0b40ab379c605002495e50bdea8886069e82029.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d3640818920e6fa027bbee864ca5e7737da8fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
