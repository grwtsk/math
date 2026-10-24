# symm_continuousWithinAt_comp_right_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a16a3de-22e0-6242-608e-e044a6708ea9",
  "kind": "theorem",
  "lexical_name": "symm_continuousWithinAt_comp_right_iff",
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
  "slug": "symm-continuouswithinat-comp-right-iff--da801b590b37e6ed1e48652f",
  "source": {
    "blob": "5d24b8bc50a4f542e6d883e04f5e7191abc7b8e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 335,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da801b590b37e6ed1e48652f601e3d4849ef6bfeea34a53bcc4640a52302826a",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a16a3de-22e0-6242-608e-e044a6708ea9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symm_continuousWithinAt_comp_right_iff {X} [TopologicalSpace X] {f : H → X} {s : Set H}
    {x : H} :
    ContinuousWithinAt (f ∘ I.symm) (I.symm ⁻¹' s ∩ range I) (I x) ↔ ContinuousWithinAt f s x := by
  refine ⟨fun h => ?_, fun h => ?_⟩
  · have := h.comp I.continuousWithinAt (mapsTo_preimage _ _)
    simp_rw [preimage_inter, preimage_preimage, I.left_inv, preimage_id', preimage_range,
      inter_univ] at this
    rwa [Function.comp_assoc, I.symm_comp_self] at this
  · rw [← I.left_inv x] at h; exact h.comp I.continuousWithinAt_symm inter_subset_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d24b8bc50a4f542e6d883e04f5e7191abc7b8e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
