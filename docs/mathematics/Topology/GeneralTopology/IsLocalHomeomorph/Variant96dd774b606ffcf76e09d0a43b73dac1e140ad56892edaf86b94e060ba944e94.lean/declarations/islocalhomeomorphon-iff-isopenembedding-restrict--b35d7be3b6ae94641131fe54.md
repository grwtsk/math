# isLocalHomeomorphOn_iff_isOpenEmbedding_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71c40719-3662-85f3-fa06-348f474f8a91",
  "kind": "theorem",
  "lexical_name": "isLocalHomeomorphOn_iff_isOpenEmbedding_restrict",
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
  "slug": "islocalhomeomorphon-iff-isopenembedding-restrict--b35d7be3b6ae94641131fe54",
  "source": {
    "blob": "72d8c157ccde7944aa3c1f144f993529cf98ae22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b35d7be3b6ae94641131fe544917382b00fcc17bd9fe30774c444e562c5c7251",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71c40719-3662-85f3-fa06-348f474f8a91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalHomeomorphOn_iff_isOpenEmbedding_restrict {f : X → Y} :
    IsLocalHomeomorphOn f s ↔ ∀ x ∈ s, ∃ U ∈ 𝓝 x, IsOpenEmbedding (U.restrict f) := by
  refine ⟨fun h x hx ↦ ?_, fun h x hx ↦ ?_⟩
  · obtain ⟨e, hxe, rfl⟩ := h x hx
    exact ⟨e.source, e.open_source.mem_nhds hxe, e.isOpenEmbedding_restrict⟩
  · obtain ⟨U, hU, emb⟩ := h x hx
    have : IsOpenEmbedding ((interior U).restrict f) := by
      refine emb.comp ⟨.inclusion interior_subset, ?_⟩
      rw [Set.range_inclusion]; exact isOpen_induced isOpen_interior
    obtain ⟨cont, inj, openMap⟩ := isOpenEmbedding_iff_continuous_injective_isOpenMap.mp this
    haveI : Nonempty X := ⟨x⟩
    exact ⟨PartialHomeomorph.ofContinuousOpenRestrict
      (Set.injOn_iff_injective.mpr inj).toPartialEquiv
      (continuousOn_iff_continuous_restrict.mpr cont) openMap isOpen_interior,
      mem_interior_iff_mem_nhds.mpr hU, rfl⟩

namespace IsLocalHomeomorphOn

variable {f s}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72d8c157ccde7944aa3c1f144f993529cf98ae22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
