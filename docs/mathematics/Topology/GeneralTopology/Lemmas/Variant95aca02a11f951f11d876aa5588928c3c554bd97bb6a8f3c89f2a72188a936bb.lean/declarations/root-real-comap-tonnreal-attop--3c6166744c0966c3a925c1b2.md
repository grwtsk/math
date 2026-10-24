# _root_.Real.comap_toNNReal_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b58dcaf90d31748c3dac6ab544f45bdf0396850",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95aca02a11f951f11d876aa5588928c3c554bd97bb6a8f3c89f2a72188a936bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca030e80-bd1e-1751-fa4b-a7a70ee7cc89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89aa7cca-1ba4-209f-ae68-f3487b5caecc",
  "kind": "theorem",
  "lexical_name": "_root_.Real.comap_toNNReal_atTop",
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
  "slug": "root-real-comap-tonnreal-attop--3c6166744c0966c3a925c1b2",
  "source": {
    "blob": "7b58dcaf90d31748c3dac6ab544f45bdf0396850",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant95aca02a11f951f11d876aa5588928c3c554bd97bb6a8f3c89f2a72188a936bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c6166744c0966c3a925c1b299fab99d60bc2d149967007ced07eb411de11361",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant95aca02a11f951f11d876aa5588928c3c554bd97bb6a8f3c89f2a72188a936bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89aa7cca-1ba4-209f-ae68-f3487b5caecc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Real.comap_toNNReal_atTop : comap Real.toNNReal atTop = atTop := by
  refine le_antisymm ?_ tendsto_real_toNNReal_atTop.le_comap
  refine (atTop_basis_Ioi' 0).ge_iff.2 fun a ha ↦ ?_
  filter_upwards [preimage_mem_comap (Ioi_mem_atTop a.toNNReal)] with x hx
  exact (Real.toNNReal_lt_toNNReal_iff_of_nonneg ha.le).1 hx

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant95aca02a11f951f11d876aa5588928c3c554bd97bb6a8f3c89f2a72188a936bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant95aca02a11f951f11d876aa5588928c3c554bd97bb6a8f3c89f2a72188a936bb.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b58dcaf90d31748c3dac6ab544f45bdf0396850` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
