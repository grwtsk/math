# discreteTopology_image_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b1e2e58-5109-33db-aded-074c3e610a19",
  "kind": "theorem",
  "lexical_name": "discreteTopology_image_iff",
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
  "slug": "discretetopology-image-iff--8220b8c7fd60734d94437654",
  "source": {
    "blob": "72d8c157ccde7944aa3c1f144f993529cf98ae22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 80,
    "path": "GRWTSK/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8220b8c7fd60734d944376540e2eb6cf3d7f49c460237fe6e27793325c8833fa",
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

Occurrence: `result:6b1e2e58-5109-33db-aded-074c3e610a19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discreteTopology_image_iff (h : IsLocalHomeomorphOn f s) (hs : IsOpen s) :
    DiscreteTopology (f '' s) ↔ DiscreteTopology s := by
  refine ⟨fun _ ↦ h.discreteTopology_of_image, ?_⟩
  simp_rw [← singletons_open_iff_discrete]
  rintro hX ⟨_, x, hx, rfl⟩
  obtain ⟨e, hxe, rfl⟩ := h x hx
  refine ⟨e '' {x}, e.isOpen_image_of_subset_source ?_ (Set.singleton_subset_iff.mpr hxe), ?_⟩
  · simpa using hs.isOpenMap_subtype_val _ (hX ⟨x, hx⟩)
  · ext; simp [Subtype.ext_iff]

variable (f s) in
/-- Proves that `f` satisfies `IsLocalHomeomorphOn f s`. The condition `h` is weaker than the
definition of `IsLocalHomeomorphOn f s`, since it only requires `e : PartialHomeomorph X Y` to
agree with `f` on its source `e.source`, as opposed to on the whole space `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsLocalHomeomorph/Variant96dd774b606ffcf76e09d0a43b73dac1e140ad56892edaf86b94e060ba944e94.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72d8c157ccde7944aa3c1f144f993529cf98ae22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
