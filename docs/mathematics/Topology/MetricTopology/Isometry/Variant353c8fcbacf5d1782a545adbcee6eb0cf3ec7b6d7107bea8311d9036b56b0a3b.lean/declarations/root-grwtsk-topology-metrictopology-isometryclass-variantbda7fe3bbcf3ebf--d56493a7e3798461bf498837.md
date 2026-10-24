# _root_.GRWTSK.Topology.MetricTopology.IsometryClass.Variantbda7fe3bbcf3ebf569345bedea9dcb29f0200adfcde7ec21a0bcb9ea2fd5b572.Fin.appendIsometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a893c0f96b1d1f947495ac15d1925c5c60d4cd6e6855466852a19698e4cff366",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.MetricTopology.IsometryClass.Variantbda7fe3bbcf3ebf569345bedea9dcb29f0200adfcde7ec21a0bcb9ea2fd5b572.Fin.appendIsometry",
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
  "slug": "root-grwtsk-topology-metrictopology-isometryclass-variantbda7fe3bbcf3ebf--d56493a7e3798461bf498837",
  "source": {
    "blob": "c47831d19f76a5642954c01f3596e876d8bd0a57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 603,
    "path": "GRWTSK/Topology/MetricTopology/Isometry/Variant353c8fcbacf5d1782a545adbcee6eb0cf3ec7b6d7107bea8311d9036b56b0a3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d56493a7e3798461bf4988379524eebb06df2189076668b2b4bc890f9a3931dc",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Isometry/Variant353c8fcbacf5d1782a545adbcee6eb0cf3ec7b6d7107bea8311d9036b56b0a3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a893c0f96b1d1f947495ac15d1925c5c60d4cd6e6855466852a19698e4cff366`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Topology.MetricTopology.IsometryClass.Variantbda7fe3bbcf3ebf569345bedea9dcb29f0200adfcde7ec21a0bcb9ea2fd5b572.Fin.appendIsometry (m n : ℕ) : (Fin m → α) × (Fin n → α) ≃ᵢ (Fin (m + n) → α) where
  toEquiv := Fin.appendEquiv _ _
  isometry_toFun _ _ := by simp_rw [Fin.appendEquiv, Fin.edist_append_eq_max_edist, Prod.edist_eq]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Isometry/Variant353c8fcbacf5d1782a545adbcee6eb0cf3ec7b6d7107bea8311d9036b56b0a3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Isometry/Variant353c8fcbacf5d1782a545adbcee6eb0cf3ec7b6d7107bea8311d9036b56b0a3b.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c47831d19f76a5642954c01f3596e876d8bd0a57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
