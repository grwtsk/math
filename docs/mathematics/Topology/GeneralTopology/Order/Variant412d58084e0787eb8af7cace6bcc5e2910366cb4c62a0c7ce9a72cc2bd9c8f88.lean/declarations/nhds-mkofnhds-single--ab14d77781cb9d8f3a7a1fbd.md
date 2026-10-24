# nhds_mkOfNhds_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0c35bdc-3be6-7e5d-a659-dbf944f3ae4a",
  "kind": "theorem",
  "lexical_name": "nhds_mkOfNhds_single",
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
  "slug": "nhds-mkofnhds-single--ab14d77781cb9d8f3a7a1fbd",
  "source": {
    "blob": "41a336a425f6a3f8651adfef328824c14c65632b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 134,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variant412d58084e0787eb8af7cace6bcc5e2910366cb4c62a0c7ce9a72cc2bd9c8f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab14d77781cb9d8f3a7a1fbd1133a852a3f6074ba22aff663606be55bcfdf8b5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variant412d58084e0787eb8af7cace6bcc5e2910366cb4c62a0c7ce9a72cc2bd9c8f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0c35bdc-3be6-7e5d-a659-dbf944f3ae4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_mkOfNhds_single [DecidableEq α] {a₀ : α} {l : Filter α} (h : pure a₀ ≤ l) (b : α) :
    @nhds α (TopologicalSpace.mkOfNhds (update pure a₀ l)) b =
      (update pure a₀ l : α → Filter α) b := by
  refine nhds_mkOfNhds _ _ (le_update_iff.mpr ⟨h, fun _ _ => le_rfl⟩) fun a s hs => ?_
  rcases eq_or_ne a a₀ with (rfl | ha)
  · filter_upwards [hs] with b hb
    rcases eq_or_ne b a with (rfl | hb)
    · exact hs
    · rwa [update_of_ne hb]
  · simpa only [update_of_ne ha, mem_pure, eventually_pure] using hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variant412d58084e0787eb8af7cace6bcc5e2910366cb4c62a0c7ce9a72cc2bd9c8f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variant412d58084e0787eb8af7cace6bcc5e2910366cb4c62a0c7ce9a72cc2bd9c8f88.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41a336a425f6a3f8651adfef328824c14c65632b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
