# nhds_hasBasis_absConvex_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41f3d2a4-6658-7a0d-b19f-5ceff0e6362b",
  "kind": "theorem",
  "lexical_name": "nhds_hasBasis_absConvex_closed",
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
  "slug": "nhds-hasbasis-absconvex-closed--87de69b1f7f6dd67898c407b",
  "source": {
    "blob": "4c65b8be47878eb795e21aef0d387558062cb90c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 281,
    "path": "GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variantdcd8963a0ff2e6b6d78bbd77d60b0769ddc1554e0bc2c06526ba12e8d7baf001.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87de69b1f7f6dd67898c407b4fb28fa52a30b50ccf8627a38b5ab9b4dfd95742",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AbsConvex/Variantdcd8963a0ff2e6b6d78bbd77d60b0769ddc1554e0bc2c06526ba12e8d7baf001.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41f3d2a4-6658-7a0d-b19f-5ceff0e6362b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_hasBasis_absConvex_closed :
    (𝓝 (0 : E)).HasBasis (fun s ↦ s ∈ 𝓝 (0 : E) ∧ IsClosed s ∧ AbsConvex 𝕜 s) id := by
  refine (nhds_basis_opens 0).to_hasBasis ?_
    fun s ⟨hs_nhds, _, _⟩ ↦ ⟨interior s,
      by simp [interior_subset, mem_interior_iff_mem_nhds.mpr hs_nhds]⟩
  intro s ⟨hs_zero, hs_open⟩
  obtain ⟨W, hW_open, hW_zero, hW_add⟩ :=
    exists_open_nhds_zero_add_subset (hs_open.mem_nhds hs_zero)
  obtain ⟨V, ⟨hV_zero, hV_open, hV_abs⟩, hVW⟩ :=
    (nhds_hasBasis_absConvex_open 𝕜 E).mem_iff.mp (hW_open.mem_nhds hW_zero)
  exact ⟨closure V,
    ⟨Filter.mem_of_superset (hV_open.mem_nhds hV_zero) subset_closure, isClosed_closure,
     hV_abs.closure⟩,
    (closure_subset_add_self_of_mem_nhds_zero (hV_open.mem_nhds hV_zero)).trans
      ((add_subset_add hVW hVW).trans hW_add)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AbsConvex/Variantdcd8963a0ff2e6b6d78bbd77d60b0769ddc1554e0bc2c06526ba12e8d7baf001.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variantdcd8963a0ff2e6b6d78bbd77d60b0769ddc1554e0bc2c06526ba12e8d7baf001.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c65b8be47878eb795e21aef0d387558062cb90c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
