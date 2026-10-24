# nhds_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c08dd53-f983-f283-5361-d3284b13b438",
  "kind": "theorem",
  "lexical_name": "nhds_le_of_le",
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
  "slug": "nhds-le-of-le--fb5dc46a039ee2efa4f244fa",
  "source": {
    "blob": "85a377bb7b399663ba1086fa63475f709231a0d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/Neighborhoods/Variantf20ae97a8d0936011e0725eb2a5627777f44f76622d3b77c7b938ae19884b461.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb5dc46a039ee2efa4f244fa4b5bfcb5ba2bf423a384b114e889c58401abf677",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Neighborhoods/Variantf20ae97a8d0936011e0725eb2a5627777f44f76622d3b77c7b938ae19884b461.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c08dd53-f983-f283-5361-d3284b13b438`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_le_of_le {f} (h : x ∈ s) (o : IsOpen s) (sf : 𝓟 s ≤ f) : 𝓝 x ≤ f := by
  rw [nhds_def]; exact iInf₂_le_of_le s ⟨h, o⟩ sf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Neighborhoods/Variantf20ae97a8d0936011e0725eb2a5627777f44f76622d3b77c7b938ae19884b461.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Neighborhoods/Variantf20ae97a8d0936011e0725eb2a5627777f44f76622d3b77c7b938ae19884b461.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85a377bb7b399663ba1086fa63475f709231a0d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
