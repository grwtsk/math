# tendsto_nhdsWithin_nhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d2f8353d94eebf5ecb72e3d5cd8667e8947e9c6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 666,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0fa23c73-18ff-da89-3d9a-31227bfecb9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae9c4769-8ef7-639d-3ed0-7edcf6a6e136",
  "kind": "theorem",
  "lexical_name": "tendsto_nhdsWithin_nhdsWithin",
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
  "slug": "tendsto-nhdswithin-nhdswithin--b3576febf016eb1fcfabf9a6",
  "source": {
    "blob": "d2f8353d94eebf5ecb72e3d5cd8667e8947e9c6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 673,
    "line": 666,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3576febf016eb1fcfabf9a6405b667240bd991b0f92a287eef6df9d16da3376",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae9c4769-8ef7-639d-3ed0-7edcf6a6e136`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 666–673.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_nhdsWithin_nhdsWithin {t : Set β} {a b} :
    Tendsto f (𝓝[s] a) (𝓝[t] b) ↔
      ∀ ε > 0, ∃ δ > 0, ∀ ⦃x⦄, x ∈ s → edist x a < δ → f x ∈ t ∧ edist (f x) b < ε :=
  (nhdsWithin_basis_eball.tendsto_iff nhdsWithin_basis_eball).trans <|
    forall₂_congr fun ε _ => exists_congr fun δ => and_congr_right fun _ =>
      forall_congr' fun x => by simp; tauto
#align emetric.tendsto_nhds_within_nhds_within EMetric.tendsto_nhdsWithin_nhdsWithin

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean#L666).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2f8353d94eebf5ecb72e3d5cd8667e8947e9c6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
