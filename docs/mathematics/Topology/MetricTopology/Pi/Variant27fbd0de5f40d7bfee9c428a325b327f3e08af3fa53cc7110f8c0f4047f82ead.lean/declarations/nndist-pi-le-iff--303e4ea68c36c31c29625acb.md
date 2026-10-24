# nndist_pi_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3ef7b38-6d16-9675-91b5-10e9f0737a00",
  "kind": "lemma",
  "lexical_name": "nndist_pi_le_iff",
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
  "slug": "nndist-pi-le-iff--303e4ea68c36c31c29625acb",
  "source": {
    "blob": "9310b235fd5fe9592b1ac105d030574652642fc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 60,
    "path": "GRWTSK/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:303e4ea68c36c31c29625acbf2b4eb442f8cb50f74cb5d81d4af3e6e8d8de3b3",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3ef7b38-6d16-9675-91b5-10e9f0737a00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nndist_pi_le_iff {f g : ∀ b, X b} {r : ℝ≥0} :
    nndist f g ≤ r ↔ ∀ b, nndist (f b) (g b) ≤ r := by simp [nndist_pi_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pi/Variant27fbd0de5f40d7bfee9c428a325b327f3e08af3fa53cc7110f8c0f4047f82ead.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9310b235fd5fe9592b1ac105d030574652642fc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
