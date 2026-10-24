# IsLUB.frequently_nhds_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:416901b3-7dda-e095-568d-0c42689888fe",
  "kind": "theorem",
  "lexical_name": "IsLUB.frequently_nhds_mem",
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
  "slug": "islub-frequently-nhds-mem--0ac0e646c4c75a866580ee3f",
  "source": {
    "blob": "fb02c1be7a0438ffdde87cc516acc06c3a5b73bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/IsLUB/Variant0861100c5bcaabf56154aebfbcdfbacbb0c19680c3fd86f00ec62567795869a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ac0e646c4c75a866580ee3fe0b5a975f5c8527efa6f1e8b2b7311d3d7490e17",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsLUB/Variant0861100c5bcaabf56154aebfbcdfbacbb0c19680c3fd86f00ec62567795869a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:416901b3-7dda-e095-568d-0c42689888fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLUB.frequently_nhds_mem {a : α} {s : Set α} (ha : IsLUB s a) (hs : s.Nonempty) :
    ∃ᶠ x in 𝓝 a, x ∈ s :=
  (ha.frequently_mem hs).filter_mono inf_le_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsLUB/Variant0861100c5bcaabf56154aebfbcdfbacbb0c19680c3fd86f00ec62567795869a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsLUB/Variant0861100c5bcaabf56154aebfbcdfbacbb0c19680c3fd86f00ec62567795869a7.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb02c1be7a0438ffdde87cc516acc06c3a5b73bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
