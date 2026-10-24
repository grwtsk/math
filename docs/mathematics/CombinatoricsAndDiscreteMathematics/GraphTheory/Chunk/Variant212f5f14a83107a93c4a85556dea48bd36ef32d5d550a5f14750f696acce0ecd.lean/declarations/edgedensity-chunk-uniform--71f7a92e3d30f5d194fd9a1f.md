# edgeDensity_chunk_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe82b5b7f503465ea2496096f7f8af51b174624c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 524,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ead60818-51d9-3af8-81d9-0dacbf15004a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fa0bd18-4159-b685-31c8-434cd69d1516",
  "kind": "theorem",
  "lexical_name": "edgeDensity_chunk_uniform",
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
  "slug": "edgedensity-chunk-uniform--71f7a92e3d30f5d194fd9a1f",
  "source": {
    "blob": "fe82b5b7f503465ea2496096f7f8af51b174624c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 524,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71f7a92e3d30f5d194fd9a1fe513ce47ea7848393b25490e4a3f31bc223155ee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fa0bd18-4159-b685-31c8-434cd69d1516`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edgeDensity_chunk_uniform [Nonempty α] (hPα : P.parts.card * 16 ^ P.parts.card ≤ card α)
    (hPε : ↑100 ≤ ↑4 ^ P.parts.card * ε ^ 5) (hU : U ∈ P.parts) (hV : V ∈ P.parts) :
    (G.edgeDensity U V : ℝ) ^ 2 - ε ^ 5 / ↑25 ≤
    (∑ ab in (chunk hP G ε hU).parts.product (chunk hP G ε hV).parts,
      (G.edgeDensity ab.1 ab.2 : ℝ) ^ 2) / ↑16 ^ P.parts.card := by
  apply (edgeDensity_chunk_aux (hP := hP) hPα hPε hU hV).trans
  have key : ↑16 ^ P.parts.card =
      (((chunk hP G ε hU).parts ×ˢ (chunk hP G ε hV).parts).card : ℝ) := by
    rw [card_product, cast_mul, card_chunk (m_pos hPα).ne', card_chunk (m_pos hPα).ne', ←
      cast_mul, ← mul_pow]; norm_cast
  simp_rw [key]
  convert sum_div_card_sq_le_sum_sq_div_card (α := ℝ)
#align szemeredi_regularity.edge_density_chunk_uniform SzemerediRegularity.edgeDensity_chunk_uniform

end SzemerediRegularity
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chunk/Variant212f5f14a83107a93c4a85556dea48bd36ef32d5d550a5f14750f696acce0ecd.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe82b5b7f503465ea2496096f7f8af51b174624c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
