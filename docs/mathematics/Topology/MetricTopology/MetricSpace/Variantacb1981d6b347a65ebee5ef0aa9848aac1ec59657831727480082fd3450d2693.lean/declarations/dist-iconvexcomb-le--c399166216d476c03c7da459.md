# dist_iConvexComb_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6348d829-aef9-2a4b-eea4-db5bfb9374a8",
  "kind": "lemma",
  "lexical_name": "dist_iConvexComb_le",
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
  "slug": "dist-iconvexcomb-le--c399166216d476c03c7da459",
  "source": {
    "blob": "765fba550482faddd0c55ca7289277e253e7798c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 77,
    "path": "GRWTSK/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c399166216d476c03c7da459d23ee00f6052643eec89a05853e1131c05cafeec",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6348d829-aef9-2a4b-eea4-db5bfb9374a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dist_iConvexComb_le {ι : Type*} (f : StdSimplex ℝ ι) (x y : ι → X) :
    dist (f.iConvexComb x) (f.iConvexComb y) ≤ f.iConvexComb fun i ↦ dist (x i) (y i) := by
  simpa [iConvexComb_map, Finsupp.sum_mapDomain_index, add_mul]
    using IsConvexDist.dist_iConvexComb_fst_snd_le (f.map fun i ↦ (x i, y i))

@[deprecated (since := "2026-05-15")] alias dist_convexCombination_right_le := dist_iConvexComb_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `765fba550482faddd0c55ca7289277e253e7798c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
