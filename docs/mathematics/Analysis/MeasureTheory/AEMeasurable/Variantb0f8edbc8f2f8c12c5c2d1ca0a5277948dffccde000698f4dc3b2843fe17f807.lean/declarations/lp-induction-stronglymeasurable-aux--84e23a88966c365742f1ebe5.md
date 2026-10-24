# Lp.induction_stronglyMeasurable_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27cdf5d8f0d46b69f3378b6600cda1504f0ee976",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 362,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70f5309b-2f0c-277f-4f34-c9c6b738d0fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8b6e35a-14ad-5eef-7627-642a0dde0796",
  "kind": "theorem",
  "lexical_name": "Lp.induction_stronglyMeasurable_aux",
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
  "slug": "lp-induction-stronglymeasurable-aux--84e23a88966c365742f1ebe5",
  "source": {
    "blob": "27cdf5d8f0d46b69f3378b6600cda1504f0ee976",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 362,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84e23a88966c365742f1ebe53248f39fa952f8cbea064749a7c531f8bfe2f771",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8b6e35a-14ad-5eef-7627-642a0dde0796`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Lp.induction_stronglyMeasurable_aux (hm : m ≤ m0) (hp_ne_top : p ≠ ∞) (P : Lp F p μ → Prop)
    (h_ind : ∀ (c : F) {s : Set α} (hs : MeasurableSet[m] s) (hμs : μ s < ∞),
      P (Lp.simpleFunc.indicatorConst p (hm s hs) hμs.ne c))
    (h_add : ∀ ⦃f g⦄, ∀ hf : MemLp f p μ, ∀ hg : MemLp g p μ, AEStronglyMeasurable[m] f μ →
      AEStronglyMeasurable[m] g μ → Disjoint (Function.support f) (Function.support g) →
        P (hf.toLp f) → P (hg.toLp g) → P (hf.toLp f + hg.toLp g))
    (h_closed : IsClosed {f : lpMeas F ℝ m p μ | P f}) :
    ∀ f : Lp F p μ, AEStronglyMeasurable[m] f μ → P f := by
  intro f hf
  let f' := (⟨f, hf⟩ : lpMeas F ℝ m p μ)
  let g := lpMeasToLpTrimLie F ℝ p μ hm f'
  have hfg : f' = (lpMeasToLpTrimLie F ℝ p μ hm).symm g := by
    simp only [f', g, LinearIsometryEquiv.symm_apply_apply]
  change P ↑f'
  rw [hfg]
  refine
    @Lp.induction α F m _ p (μ.trim hm) _ hp_ne_top
      (fun g => P ((lpMeasToLpTrimLie F ℝ p μ hm).symm g)) ?_ ?_ ?_ g
  · intro b t ht hμt
    rw [@Lp.simpleFunc.coe_indicatorConst _ _ m, lpMeasToLpTrimLie_symm_indicator ht hμt.ne b]
    have hμt' : μ t < ∞ := (le_trim hm).trans_lt hμt
    specialize h_ind b ht hμt'
    rwa [Lp.simpleFunc.coe_indicatorConst] at h_ind
  · intro f g hf hg h_disj hfP hgP
    rw [LinearIsometryEquiv.map_add]
    push_cast
    have h_eq :
      ∀ (f : α → F) (hf : MemLp f p (μ.trim hm)),
        ((lpMeasToLpTrimLie F ℝ p μ hm).symm (MemLp.toLp f hf) : Lp F p μ) =
          (memLp_of_memLp_trim hm hf).toLp f :=
      lpMeasToLpTrimLie_symm_toLp hm
    rw [h_eq f hf] at hfP ⊢
    rw [h_eq g hg] at hgP ⊢
    exact h_add (memLp_of_memLp_trim hm hf) (memLp_of_memLp_trim hm hg)
      (hf.aestronglyMeasurable.of_trim hm) (hg.aestronglyMeasurable.of_trim hm) h_disj hfP hgP
  · change IsClosed ((lpMeasToLpTrimLie F ℝ p μ hm).symm ⁻¹' {g : lpMeas F ℝ m p μ | P ↑g})
    exact IsClosed.preimage (LinearIsometryEquiv.continuous _) h_closed

/-- To prove something for an `Lp` function a.e. strongly measurable with respect to a
sub-σ-algebra `m` in a normed space, it suffices to show that
* the property holds for (multiples of) characteristic functions which are measurable w.r.t. `m`;
* is closed under addition;
* the set of functions in `Lp` strongly measurable w.r.t. `m` for which the property holds is
  closed.
-/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantb0f8edbc8f2f8c12c5c2d1ca0a5277948dffccde000698f4dc3b2843fe17f807.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27cdf5d8f0d46b69f3378b6600cda1504f0ee976` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
