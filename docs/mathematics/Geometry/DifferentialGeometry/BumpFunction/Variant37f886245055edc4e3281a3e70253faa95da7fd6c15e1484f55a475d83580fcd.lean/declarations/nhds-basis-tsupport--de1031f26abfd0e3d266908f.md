# nhds_basis_tsupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c31391ff58cd610ed096478e8f872800f040b8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 267,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37f886245055edc4e3281a3e70253faa95da7fd6c15e1484f55a475d83580fcd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c46a6c2-5859-2a72-3e06-4098c1662e52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:914dc2ae-386b-c892-40f6-9394df9a7142",
  "kind": "theorem",
  "lexical_name": "nhds_basis_tsupport",
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
  "slug": "nhds-basis-tsupport--de1031f26abfd0e3d266908f",
  "source": {
    "blob": "5c31391ff58cd610ed096478e8f872800f040b8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 267,
    "path": "GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variant37f886245055edc4e3281a3e70253faa95da7fd6c15e1484f55a475d83580fcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de1031f26abfd0e3d266908fd1c9f5d2081eb9d44d1c2d5db8d0bee511daf5f3",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/BumpFunction/Variant37f886245055edc4e3281a3e70253faa95da7fd6c15e1484f55a475d83580fcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:914dc2ae-386b-c892-40f6-9394df9a7142`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_basis_tsupport :
    (𝓝 c).HasBasis (fun _ : SmoothBumpFunction I c => True) fun f => tsupport f := by
  have :
    (𝓝 c).HasBasis (fun _ : SmoothBumpFunction I c => True) fun f =>
      (extChartAt I c).symm '' (closedBall (extChartAt I c c) f.rOut ∩ range I) := by
    rw [← map_extChartAt_symm_nhdsWithin_range (I := I) c]
    exact nhdsWithin_range_basis.map _
  exact this.to_hasBasis' (fun f _ => ⟨f, trivial, f.tsupport_subset_symm_image_closedBall⟩)
    fun f _ => f.tsupport_mem_nhds

/-- Given `s ∈ 𝓝 c`, the supports of smooth bump functions `f : SmoothBumpFunction I c` such that
`tsupport f ⊆ s` form a basis of `𝓝 c`.  In other words, each of these supports is a
neighborhood of `c` and each neighborhood of `c` includes `support f` for some
`f : SmoothBumpFunction I c` such that `tsupport f ⊆ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/BumpFunction/Variant37f886245055edc4e3281a3e70253faa95da7fd6c15e1484f55a475d83580fcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variant37f886245055edc4e3281a3e70253faa95da7fd6c15e1484f55a475d83580fcd.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c31391ff58cd610ed096478e8f872800f040b8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
