# UniqueMDiffWithinAt.bundle_preimage_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e6ebc166ab9e01517cea934b36f13472e67e640",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/7331511c6d771e490573b3d540152f97e16b3108cba97a01671bfcf2f88a289e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc864cd7-e0c9-cf16-0819-0104b71ccc82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5df2d5f3-3535-d62f-50be-367ce8a9cec8",
  "kind": "lemma",
  "lexical_name": "UniqueMDiffWithinAt.bundle_preimage_aux",
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
  "slug": "uniquemdiffwithinat-bundle-preimage-aux--4d4a3a6a60d952957fab8e07",
  "source": {
    "blob": "2e6ebc166ab9e01517cea934b36f13472e67e640",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 138,
    "path": "GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant7331511c6d771e490573b3d540152f97e16b3108cba97a01671bfcf2f88a289e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d4a3a6a60d952957fab8e075ad03980e0b0c5c56b04b9c39feb96cfe3324ed7",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/UniqueDifferential/Variant7331511c6d771e490573b3d540152f97e16b3108cba97a01671bfcf2f88a289e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5df2d5f3-3535-d62f-50be-367ce8a9cec8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma UniqueMDiffWithinAt.bundle_preimage_aux {p : TotalSpace F Z}
    (hs : UniqueMDiffAt[s] p.proj) (h's : s ⊆ (trivializationAt F Z p.proj).baseSet) :
    UniqueMDiffAt[π F Z ⁻¹' s] p := by
  suffices ((extChartAt I p.proj).symm ⁻¹' s ∩ range I) ×ˢ univ ⊆
      (extChartAt (I.prod 𝓘(𝕜, F)) p).symm ⁻¹' (TotalSpace.proj ⁻¹' s) ∩ range (I.prod 𝓘(𝕜, F)) by
    let w := (extChartAt (I.prod 𝓘(𝕜, F)) p p).2
    have A : extChartAt (I.prod 𝓘(𝕜, F)) p p = (extChartAt I p.1 p.1, w) := by
      ext
      · simp [FiberBundle.chartedSpace_chartAt]
      · rfl
    simp only [UniqueMDiffWithinAt, A] at hs ⊢
    exact (hs.prod (uniqueDiffWithinAt_univ (x := w))).mono this
  rcases p with ⟨x, v⟩
  dsimp
  rintro ⟨z, w⟩ ⟨hz, -⟩
  simp only [mem_inter_iff, mem_preimage, Function.comp_apply,
    mem_range] at hz
  simp only [FiberBundle.chartedSpace_chartAt, OpenPartialHomeomorph.coe_trans_symm, mem_inter_iff,
    mem_preimage, Function.comp_apply, mem_range]
  constructor
  · rw [PartialEquiv.prod_symm, PartialEquiv.refl_symm, PartialEquiv.prod_coe,
      ModelWithCorners.toPartialEquiv_coe_symm, PartialEquiv.refl_coe,
      OpenPartialHomeomorph.prod_symm, OpenPartialHomeomorph.refl_symm,
      OpenPartialHomeomorph.prod_apply, OpenPartialHomeomorph.refl_apply]
    convert! hz.1
    apply Trivialization.proj_symm_apply'
    exact h's hz.1
  · rcases hz.2 with ⟨u, rfl⟩
    exact ⟨(u, w), rfl⟩

/-- In a fiber bundle, the preimage under the projection of a set with unique differentials
in the base has unique differentials in the bundle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/UniqueDifferential/Variant7331511c6d771e490573b3d540152f97e16b3108cba97a01671bfcf2f88a289e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant7331511c6d771e490573b3d540152f97e16b3108cba97a01671bfcf2f88a289e.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e6ebc166ab9e01517cea934b36f13472e67e640` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
