# sphere_subset_range_iff_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e6112200b6435832001d46b94f1aa6f6a35d0f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/548a0efc514e14f51df886f708e6693436c91692a73cfb814024c41ae7725138.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81c382ec-d58a-83b5-8a0d-46811d6cf11a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4fe5dacd-0b72-0174-f8ea-11e0e4e0f84d",
  "kind": "theorem",
  "lexical_name": "sphere_subset_range_iff_surjective",
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
  "slug": "sphere-subset-range-iff-surjective--5564cb78a237ded12e3d9488",
  "source": {
    "blob": "0e6112200b6435832001d46b94f1aa6f6a35d0f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant548a0efc514e14f51df886f708e6693436c91692a73cfb814024c41ae7725138.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5564cb78a237ded12e3d9488e84e5940c0b9e66338d6c8fd1c875f845f1f1914",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant548a0efc514e14f51df886f708e6693436c91692a73cfb814024c41ae7725138.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fe5dacd-0b72-0174-f8ea-11e0e4e0f84d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sphere_subset_range_iff_surjective [RingHomSurjective τ] {f : 𝓕'} {x : F'} {r : ℝ}
    (hr : 0 < r) : sphere x r ⊆ Set.range f ↔ (⇑f).Surjective := by
  refine ⟨fun h ↦ ?_, by simp_all⟩
  grw [← (closedBall_subset_range_iff_surjective x hr), ← convexHull_sphere_eq_closedBall x hr.le,
    convexHull_mono h, (convexHull_eq_self (𝕜 := ℝ) (s := Set.range ↑f)).mpr]
  exact Submodule.Convex.semilinear_range (E := F') (F' := E) (σ := τ) f

end

/-- If `‖x‖ = 0` and `f` is continuous then `‖f x‖ = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant548a0efc514e14f51df886f708e6693436c91692a73cfb814024c41ae7725138.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant548a0efc514e14f51df886f708e6693436c91692a73cfb814024c41ae7725138.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e6112200b6435832001d46b94f1aa6f6a35d0f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
