# range_derivWithin_subset_closure_span_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c099453-b305-25be-da47-f7f0b49e7d17",
  "kind": "theorem",
  "lexical_name": "range_derivWithin_subset_closure_span_image",
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
  "slug": "range-derivwithin-subset-closure-span-image--053f4aa701e47bc56c4a07af",
  "source": {
    "blob": "cf24b054ac45256c91775b3038a0bf43db9b756a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variante6a16a3499ea89a77715019befa3ea3f74a4932602fa88d6e13b823ef7b4b8aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:053f4aa701e47bc56c4a07af9b4e80186e314b9f96a65d80839cd378ef3f3c0c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variante6a16a3499ea89a77715019befa3ea3f74a4932602fa88d6e13b823ef7b4b8aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c099453-b305-25be-da47-f7f0b49e7d17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_derivWithin_subset_closure_span_image
    (f : 𝕜 → F) {s t : Set 𝕜} (h : s ⊆ closure (s ∩ t)) :
    range (derivWithin f s) ⊆ closure (Submodule.span 𝕜 (f '' t)) := by
  rintro - ⟨x, rfl⟩
  by_cases H : UniqueDiffWithinAt 𝕜 s x; swap
  · simpa [derivWithin_zero_of_not_uniqueDiffWithinAt H] using subset_closure (zero_mem _)
  by_cases H' : DifferentiableWithinAt 𝕜 f s x; swap
  · rw [derivWithin_zero_of_not_differentiableWithinAt H']
    exact subset_closure (zero_mem _)
  have I : (𝓝[(s ∩ t) \ {x}] x).NeBot := by
    rw [← accPt_principal_iff_nhdsWithin, ← uniqueDiffWithinAt_iff_accPt]
    exact H.mono_closure h
  have : Tendsto (slope f x) (𝓝[(s ∩ t) \ {x}] x) (𝓝 (derivWithin f s x)) := by
    apply Tendsto.mono_left (hasDerivWithinAt_iff_tendsto_slope.1 H'.hasDerivWithinAt)
    rw [inter_comm, inter_sdiff_assoc]
    exact nhdsWithin_mono _ inter_subset_right
  rw [← closure_closure, ← Submodule.topologicalClosure_coe]
  apply mem_closure_of_tendsto this
  filter_upwards [self_mem_nhdsWithin] with y hy
  simp only [slope, vsub_eq_sub, SetLike.mem_coe]
  refine Submodule.smul_mem _ _ (Submodule.sub_mem _ ?_ ?_)
  · apply Submodule.le_topologicalClosure
    apply Submodule.subset_span
    exact mem_image_of_mem _ hy.1.2
  · apply Submodule.closure_subset_topologicalClosure_span
    suffices A : f x ∈ closure (f '' (s ∩ t)) from
      closure_mono (image_mono inter_subset_right) A
    apply ContinuousWithinAt.mem_closure_image
    · apply H'.continuousWithinAt.mono inter_subset_left
    rw [mem_closure_iff_nhdsWithin_neBot]
    exact I.mono (nhdsWithin_mono _ sdiff_subset)

/-- Given a dense set `t`, then the range of `deriv f` is contained in the closure of the submodule
spanned by the image of `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variante6a16a3499ea89a77715019befa3ea3f74a4932602fa88d6e13b823ef7b4b8aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variante6a16a3499ea89a77715019befa3ea3f74a4932602fa88d6e13b823ef7b4b8aa.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf24b054ac45256c91775b3038a0bf43db9b756a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
