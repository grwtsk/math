# uniformEquicontinuous_of_continuity_modulus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5446dbbddd6a4838ddb7213cc1ad703b1b10363",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f83e08b-128c-0084-6b3d-fa39594568b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77f4a6d0-fcf2-da0b-f4e4-072144ff6f8e",
  "kind": "theorem",
  "lexical_name": "uniformEquicontinuous_of_continuity_modulus",
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
  "slug": "uniformequicontinuous-of-continuity-modulus--f3085e9a0337d1a3de29ca21",
  "source": {
    "blob": "c5446dbbddd6a4838ddb7213cc1ad703b1b10363",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 99,
    "path": "GRWTSK/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3085e9a0337d1a3de29ca21dafd033d21995a264a5405378a6f87cfea35309b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77f4a6d0-fcf2-da0b-f4e4-072144ff6f8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformEquicontinuous_of_continuity_modulus {ι : Type*} [PseudoMetricSpace β] (b : ℝ → ℝ)
    (b_lim : Tendsto b (𝓝 0) (𝓝 0)) (F : ι → β → α)
    (H : ∀ (x y : β) (i), dist (F i x) (F i y) ≤ b (dist x y)) : UniformEquicontinuous F := by
  rw [Metric.uniformEquicontinuous_iff]
  intro ε ε0
  rcases tendsto_nhds_nhds.1 b_lim ε ε0 with ⟨δ, δ0, hδ⟩
  refine ⟨δ, δ0, fun x y hxy i => ?_⟩
  calc
    dist (F i x) (F i y) ≤ b (dist x y) := H x y i
    _ ≤ |b (dist x y)| := le_abs_self _
    _ = dist (b (dist x y)) 0 := by simp [Real.dist_eq]
    _ < ε := hδ (by simpa only [Real.dist_eq, tsub_zero, abs_dist] using hxy)

/-- For a family of functions between (pseudo) metric spaces, a convenient way to prove
equicontinuity is to show that all of the functions share a common *global* continuity modulus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5446dbbddd6a4838ddb7213cc1ad703b1b10363` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
