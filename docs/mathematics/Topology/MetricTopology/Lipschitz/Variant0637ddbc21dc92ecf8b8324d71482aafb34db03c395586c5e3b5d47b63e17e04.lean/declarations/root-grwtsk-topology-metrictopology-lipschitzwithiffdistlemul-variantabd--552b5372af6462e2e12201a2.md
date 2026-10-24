# _root_.GRWTSK.Topology.MetricTopology.LipschitzWithIffDistLeMul.Variantabdafde82be94189e4779892c3cb06e3b1afa387167f0d9292680ee66d2ed0c2.Real.lipschitzWith_toNNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9a6f16f-9e24-7b2a-7b0c-fdeccf6caf73",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.MetricTopology.LipschitzWithIffDistLeMul.Variantabdafde82be94189e4779892c3cb06e3b1afa387167f0d9292680ee66d2ed0c2.Real.lipschitzWith_toNNReal",
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
  "slug": "root-grwtsk-topology-metrictopology-lipschitzwithiffdistlemul-variantabd--552b5372af6462e2e12201a2",
  "source": {
    "blob": "1068dde9909b6c61147ae0cef8c7cb96c4ce2327",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 174,
    "path": "GRWTSK/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:552b5372af6462e2e12201a2d80352df80674f2ed250e57ac3c86fcd7771804a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9a6f16f-9e24-7b2a-7b0c-fdeccf6caf73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.MetricTopology.LipschitzWithIffDistLeMul.Variantabdafde82be94189e4779892c3cb06e3b1afa387167f0d9292680ee66d2ed0c2.Real.lipschitzWith_toNNReal : LipschitzWith 1 Real.toNNReal := by
  refine lipschitzWith_iff_dist_le_mul.mpr (fun x y ↦ ?_)
  simpa only [NNReal.coe_one, dist_prod_same_right, one_mul, Real.dist_eq] using!
    lipschitzWith_iff_dist_le_mul.mp lipschitzWith_max (x, 0) (y, 0)

/-- The set of functions which are 1-Lipschitz on a metric space separates points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Lipschitz/Variant0637ddbc21dc92ecf8b8324d71482aafb34db03c395586c5e3b5d47b63e17e04.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1068dde9909b6c61147ae0cef8c7cb96c4ce2327` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
