# uniformEquicontinuous_iff

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
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7052c66-b290-3724-767f-af5e78912c2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:984a921b-b498-68cb-c48b-ea2072891e72",
  "kind": "theorem",
  "lexical_name": "uniformEquicontinuous_iff",
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
  "slug": "uniformequicontinuous-iff--7b6d047c69dc44d58f1afa39",
  "source": {
    "blob": "c5446dbbddd6a4838ddb7213cc1ad703b1b10363",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 81,
    "path": "GRWTSK/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b6d047c69dc44d58f1afa39e0d51f0535df3fff918bd02256f7a6ce2079d2b8",
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

Occurrence: `result:984a921b-b498-68cb-c48b-ea2072891e72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformEquicontinuous_iff {ι : Type*} [PseudoMetricSpace β] {F : ι → β → α} :
    UniformEquicontinuous F ↔
      ∀ ε > 0, ∃ δ > 0, ∀ x y, dist x y < δ → ∀ i, dist (F i x) (F i y) < ε :=
  uniformity_basis_dist.uniformEquicontinuous_iff uniformity_basis_dist

/-- For a family of functions to a (pseudo) metric spaces, a convenient way to prove
equicontinuity at a point is to show that all of the functions share a common *local* continuity
modulus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5446dbbddd6a4838ddb7213cc1ad703b1b10363` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
