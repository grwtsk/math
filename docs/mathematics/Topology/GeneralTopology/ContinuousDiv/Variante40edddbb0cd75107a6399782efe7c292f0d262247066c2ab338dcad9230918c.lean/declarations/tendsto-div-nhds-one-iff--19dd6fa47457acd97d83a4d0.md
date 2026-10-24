# tendsto_div_nhds_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f95b89ff2c230a6b37f433282994e2694ea132ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e40edddbb0cd75107a6399782efe7c292f0d262247066c2ab338dcad9230918c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ac8e36c-3f16-618b-883d-e7584e1b4d7c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82563c5a-7f81-352a-8896-068c1c4827c6",
  "kind": "theorem",
  "lexical_name": "tendsto_div_nhds_one_iff",
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
  "slug": "tendsto-div-nhds-one-iff--19dd6fa47457acd97d83a4d0",
  "source": {
    "blob": "f95b89ff2c230a6b37f433282994e2694ea132ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 104,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousDiv/Variante40edddbb0cd75107a6399782efe7c292f0d262247066c2ab338dcad9230918c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19dd6fa47457acd97d83a4d03f97877f461ee2ee1792d62ea51b2b342361121a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousDiv/Variante40edddbb0cd75107a6399782efe7c292f0d262247066c2ab338dcad9230918c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82563c5a-7f81-352a-8896-068c1c4827c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_div_nhds_one_iff {α : Type*} {l : Filter α} {x : G} {u : α → G} :
    Tendsto (u · / x) l (𝓝 1) ↔ Tendsto u l (𝓝 x) :=
  haveI A : Tendsto (fun _ : α => x) l (𝓝 x) := tendsto_const_nhds
  ⟨fun h => by simpa using h.mul A, fun h => by simpa using h.div' A⟩

/-- If `f → a` and `g → b` along a nontrivial filter on the domain, valued in a
Hausdorff topological group, then `f / g → 1` if and only if `a = b`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousDiv/Variante40edddbb0cd75107a6399782efe7c292f0d262247066c2ab338dcad9230918c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousDiv/Variante40edddbb0cd75107a6399782efe7c292f0d262247066c2ab338dcad9230918c.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f95b89ff2c230a6b37f433282994e2694ea132ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
