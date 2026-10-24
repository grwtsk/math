# TendstoLocallyUniformlyOn.congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f12c395-4eae-3839-9fe8-33eb59ef685e",
  "kind": "theorem",
  "lexical_name": "TendstoLocallyUniformlyOn.congr",
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
  "slug": "tendstolocallyuniformlyon-congr--7351d0cdbdf68702d80d610e",
  "source": {
    "blob": "5e6e5146d49d4d4ca1f29f835a3dbe0a7bc16fd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 251,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7351d0cdbdf68702d80d610ea1c1e4f192a29479831c8fcd268641fd6bff4735",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f12c395-4eae-3839-9fe8-33eb59ef685e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TendstoLocallyUniformlyOn.congr {G : ι → α → β} (hf : TendstoLocallyUniformlyOn F f p s)
    (hg : ∀ n, s.EqOn (F n) (G n)) : TendstoLocallyUniformlyOn G f p s := by
  rintro u hu x hx
  obtain ⟨t, ht, h⟩ := hf u hu x hx
  refine ⟨s ∩ t, inter_mem self_mem_nhdsWithin ht, ?_⟩
  filter_upwards [h] with i hi y hy using hg i hy.1 ▸ hi y hy.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8ea31f2a3d7b67c54a31d387d7699033d3825dd8803eed648bf909cf2dd0c.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e6e5146d49d4d4ca1f29f835a3dbe0a7bc16fd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
