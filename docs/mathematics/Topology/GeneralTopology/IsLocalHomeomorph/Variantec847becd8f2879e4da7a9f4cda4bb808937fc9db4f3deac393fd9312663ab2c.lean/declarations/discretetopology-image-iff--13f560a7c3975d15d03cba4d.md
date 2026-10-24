# discreteTopology_image_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28d457bb1e41b656145c5e31aeb3f5c793a6f792",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c98bbc3f-0550-b3e1-a0ba-98ce5e9c7601",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad9aff16-1b63-a1d0-ec44-f7df3853065f",
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
  "slug": "discretetopology-image-iff--13f560a7c3975d15d03cba4d",
  "source": {
    "blob": "28d457bb1e41b656145c5e31aeb3f5c793a6f792",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13f560a7c3975d15d03cba4d76a6f8277f553af989373d358617b10997d192ab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad9aff16-1b63-a1d0-ec44-f7df3853065f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–85.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsLocalHomeomorph/Variantec847becd8f2879e4da7a9f4cda4bb808937fc9db4f3deac393fd9312663ab2c.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28d457bb1e41b656145c5e31aeb3f5c793a6f792` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
