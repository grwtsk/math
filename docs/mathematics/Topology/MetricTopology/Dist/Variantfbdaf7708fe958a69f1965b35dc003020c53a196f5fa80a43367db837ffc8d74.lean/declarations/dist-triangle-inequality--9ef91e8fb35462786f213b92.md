# dist.triangle_inequality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29e02b00-524a-8020-8388-84dea175687e",
  "kind": "theorem",
  "lexical_name": "dist.triangle_inequality",
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
  "slug": "dist-triangle-inequality--9ef91e8fb35462786f213b92",
  "source": {
    "blob": "3d7d0c4ce22e7087bcbf76c696cf34d2c5c70b7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 80,
    "path": "GRWTSK/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ef91e8fb35462786f213b92ab5ddf1ef879220b134c475f022ae18d2508255f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29e02b00-524a-8020-8388-84dea175687e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist.triangle_inequality (n m k : ℕ) : dist n k ≤ dist n m + dist m k := by
  have : dist n m + dist m k = n - m + (m - k) + (k - m + (m - n)) := by
    simp [dist, add_comm, add_left_comm, add_assoc]
  rw [this, dist]
  exact add_le_add tsub_le_tsub_add_tsub tsub_le_tsub_add_tsub

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Dist/Variantfbdaf7708fe958a69f1965b35dc003020c53a196f5fa80a43367db837ffc8d74.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d7d0c4ce22e7087bcbf76c696cf34d2c5c70b7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
