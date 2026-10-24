# lt_dist_iff_lt_dist_coe_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6483d621ed3327fc861996655715a987fd1388ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db68e5b8-e106-7c2c-472d-4c87d7e6571d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a694e4a5-11d9-a0b2-e187-a88dc4f2038e",
  "kind": "theorem",
  "lexical_name": "lt_dist_iff_lt_dist_coe_center",
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
  "slug": "lt-dist-iff-lt-dist-coe-center--ca0c8de0a2af385172f64963",
  "source": {
    "blob": "6483d621ed3327fc861996655715a987fd1388ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 186,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca0c8de0a2af385172f649638b5ba787090c8d12b30c73b674e3a14b07e0f27a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a694e4a5-11d9-a0b2-e187-a88dc4f2038e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_dist_iff_lt_dist_coe_center :
    r < dist z w ↔ w.im * Real.sinh r < dist (z : ℂ) (w.center r) :=
  lt_iff_lt_of_cmp_eq_cmp (cmp_eq_cmp_symm.1 <| cmp_dist_eq_cmp_dist_coe_center z w r)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant2cbd1b9a0a533ac3284619b6baa77c7777f9f18519930a705240f23cfc843f7b.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6483d621ed3327fc861996655715a987fd1388ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
