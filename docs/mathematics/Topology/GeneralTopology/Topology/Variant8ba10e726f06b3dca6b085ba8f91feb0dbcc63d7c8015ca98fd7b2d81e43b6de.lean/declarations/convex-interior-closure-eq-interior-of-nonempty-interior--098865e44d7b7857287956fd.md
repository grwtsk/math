# Convex.interior_closure_eq_interior_of_nonempty_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90e54d62-61be-c94b-5b76-63f32c565ea8",
  "kind": "theorem",
  "lexical_name": "Convex.interior_closure_eq_interior_of_nonempty_interior",
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
  "slug": "convex-interior-closure-eq-interior-of-nonempty-interior--098865e44d7b7857287956fd",
  "source": {
    "blob": "38b74213ab1394e19453e55f4bb690b054b34aa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 304,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:098865e44d7b7857287956fdef56651a0ca56c141dda810faa05da97f2df3c25",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90e54d62-61be-c94b-5b76-63f32c565ea8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.interior_closure_eq_interior_of_nonempty_interior {s : Set E} (hs : Convex 𝕜 s)
    (hs' : (interior s).Nonempty) : interior (closure s) = interior s := by
  refine subset_antisymm ?_ (interior_mono subset_closure)
  intro y hy
  rcases hs' with ⟨x, hx⟩
  have h := AffineMap.lineMap_apply_one (k := 𝕜) x y
  obtain ⟨t, ht1, ht⟩ := AffineMap.lineMap_continuous.tendsto' _ _ h |>.eventually_mem
    (mem_interior_iff_mem_nhds.1 hy) |>.exists_gt
  apply hs.openSegment_interior_closure_subset_interior hx ht
  nth_rw 1 [← AffineMap.lineMap_apply_zero (k := 𝕜) x y, ← image_openSegment]
  exact ⟨1, Ioo_subset_openSegment ⟨zero_lt_one, ht1⟩, h⟩

end ContinuousSMul

section TopologicalSpace

variable [Semiring 𝕜] [PartialOrder 𝕜]
  [AddCommGroup E] [Module 𝕜 E] [TopologicalSpace E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant8ba10e726f06b3dca6b085ba8f91feb0dbcc63d7c8015ca98fd7b2d81e43b6de.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b74213ab1394e19453e55f4bb690b054b34aa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
