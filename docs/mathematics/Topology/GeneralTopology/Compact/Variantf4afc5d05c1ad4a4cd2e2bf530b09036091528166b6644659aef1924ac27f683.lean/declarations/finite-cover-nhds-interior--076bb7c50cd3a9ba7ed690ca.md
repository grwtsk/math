# finite_cover_nhds_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b705c03-9789-aef5-ce0a-fc034549c7cb",
  "kind": "theorem",
  "lexical_name": "finite_cover_nhds_interior",
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
  "slug": "finite-cover-nhds-interior--076bb7c50cd3a9ba7ed690ca",
  "source": {
    "blob": "50faf667b485e24757b73ff5809b3fb7d2f4a5ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 825,
    "line": 820,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variantf4afc5d05c1ad4a4cd2e2bf530b09036091528166b6644659aef1924ac27f683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:076bb7c50cd3a9ba7ed690ca54a10fdfafe1a6c8e0cadcbd72e4d8b5acf09cf2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variantf4afc5d05c1ad4a4cd2e2bf530b09036091528166b6644659aef1924ac27f683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b705c03-9789-aef5-ce0a-fc034549c7cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 820–825.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_cover_nhds_interior [CompactSpace X] {U : X → Set X} (hU : ∀ x, U x ∈ 𝓝 x) :
    ∃ t : Finset X, ⋃ x ∈ t, interior (U x) = univ :=
  let ⟨t, ht⟩ := isCompact_univ.elim_finite_subcover (fun x => interior (U x))
    (fun _ => isOpen_interior) fun x _ => mem_iUnion.2 ⟨x, mem_interior_iff_mem_nhds.2 (hU x)⟩
  ⟨t, univ_subset_iff.1 ht⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variantf4afc5d05c1ad4a4cd2e2bf530b09036091528166b6644659aef1924ac27f683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variantf4afc5d05c1ad4a4cd2e2bf530b09036091528166b6644659aef1924ac27f683.lean#L820).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50faf667b485e24757b73ff5809b3fb7d2f4a5ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
