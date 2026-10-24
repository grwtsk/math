# tendsto_nhds_atTop_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a2dc63c-4a2a-bd67-1719-f993f13bf824",
  "kind": "theorem",
  "lexical_name": "tendsto_nhds_atTop_iff",
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
  "slug": "tendsto-nhds-attop-iff--10257b706fd8292f99bad808",
  "source": {
    "blob": "4faaed80de0f0d727797ed38aef77508b6c6b792",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 202,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10257b706fd8292f99bad808f083515e79a49392491464179331fc1343f628be",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a2dc63c-4a2a-bd67-1719-f993f13bf824`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem tendsto_nhds_atTop_iff [Preorder β] {l : Filter α} {f : α → Filter β} :
    Tendsto f l (𝓝 atTop) ↔ ∀ y, ∀ᶠ a in l, Ici y ∈ f a := by
  simp only [nhds_atTop, tendsto_iInf, tendsto_principal, mem_Iic, le_principal_iff]
#align filter.tendsto_nhds_at_top_iff Filter.tendsto_nhds_atTop_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant47b58e0e726f26794e672a54f01d344b1c0539a92faa52488bd0295db5f9a675.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4faaed80de0f0d727797ed38aef77508b6c6b792` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
