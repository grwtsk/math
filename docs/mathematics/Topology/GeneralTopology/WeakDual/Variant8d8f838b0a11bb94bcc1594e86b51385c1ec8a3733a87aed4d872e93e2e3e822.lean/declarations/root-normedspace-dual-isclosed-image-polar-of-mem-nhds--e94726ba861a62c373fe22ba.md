# _root_.NormedSpace.Dual.isClosed_image_polar_of_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b21c59208a4359b18957f25189f000567b3df91e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0cb4c56d-99dc-9012-50fe-f3d74b9fedee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:592e41e0-b18e-7f38-9b26-baad9f4e4e72",
  "kind": "theorem",
  "lexical_name": "_root_.NormedSpace.Dual.isClosed_image_polar_of_mem_nhds",
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
  "slug": "root-normedspace-dual-isclosed-image-polar-of-mem-nhds--e94726ba861a62c373fe22ba",
  "source": {
    "blob": "b21c59208a4359b18957f25189f000567b3df91e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 236,
    "path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e94726ba861a62c373fe22ba341ff5497fc1bc1a1e181169915693344c451333",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:592e41e0-b18e-7f38-9b26-baad9f4e4e72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.NormedSpace.Dual.isClosed_image_polar_of_mem_nhds {s : Set E}
  (s_nhd : s ∈ 𝓝 (0 : E)) :
    IsClosed (((↑) : Dual 𝕜 E → E → 𝕜) '' NormedSpace.polar 𝕜 s) :=
  WeakDual.isClosed_image_polar_of_mem_nhds 𝕜 s_nhd
#align normed_space.dual.is_closed_image_polar_of_mem_nhds NormedSpace.Dual.isClosed_image_polar_of_mem_nhds

/-- The **Banach-Alaoglu theorem**: the polar set of a neighborhood `s` of the origin in a
normed space `E` is a compact subset of `WeakDual 𝕜 E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b21c59208a4359b18957f25189f000567b3df91e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
