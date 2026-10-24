# UniqueMDiffWithinAt.bundle_preimage_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33e2333a-5fa5-af97-1f18-4d02145c6da7",
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
  "slug": "uniquemdiffwithinat-bundle-preimage-aux--325b161ec8072c4b82e8ecdd",
  "source": {
    "blob": "78cd7bad21b4f3d6484cbab54ac87ded74edfd73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 141,
    "path": "GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:325b161ec8072c4b82e8ecddfe8be2bacebbd4f0ed8d9b1f3d5d8f28cca5468d",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33e2333a-5fa5-af97-1f18-4d02145c6da7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma UniqueMDiffWithinAt.bundle_preimage_aux {p : TotalSpace F Z}
    (hs : UniqueMDiffWithinAt I s p.proj) (h's : s ⊆ (trivializationAt F Z p.proj).baseSet) :
    UniqueMDiffWithinAt (I.prod 𝓘(𝕜, F)) (π F Z ⁻¹' s) p := by
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
  simp only [ModelWithCorners.target_eq, mem_inter_iff, mem_preimage, Function.comp_apply,
    mem_range] at hz
  simp only [FiberBundle.chartedSpace_chartAt, PartialHomeomorph.coe_trans_symm, mem_inter_iff,
    mem_preimage, Function.comp_apply, mem_range]
  constructor
  · rw [PartialEquiv.prod_symm, PartialEquiv.refl_symm, PartialEquiv.prod_coe,
      ModelWithCorners.toPartialEquiv_coe_symm, PartialEquiv.refl_coe,
      PartialHomeomorph.prod_symm, PartialHomeomorph.refl_symm, PartialHomeomorph.prod_apply,
      PartialHomeomorph.refl_apply]
    convert hz.1
    apply Trivialization.proj_symm_apply'
    exact h's hz.1
  · rcases hz.2 with ⟨u, rfl⟩
    exact ⟨(u, w), rfl⟩

/-- In a fiber bundle, the preimage under the projection of a set with unique differentials
in the base has unique differentials in the bundle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78cd7bad21b4f3d6484cbab54ac87ded74edfd73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
