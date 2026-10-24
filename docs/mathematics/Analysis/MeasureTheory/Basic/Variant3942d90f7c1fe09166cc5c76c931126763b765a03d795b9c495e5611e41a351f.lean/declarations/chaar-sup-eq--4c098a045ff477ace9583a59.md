# chaar_sup_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f55c808-4889-89d5-4c0a-2ac7458d7b98",
  "kind": "theorem",
  "lexical_name": "chaar_sup_eq",
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
  "slug": "chaar-sup-eq--4c098a045ff477ace9583a59",
  "source": {
    "blob": "dd891980ce77e38bac81917cee7cb19bd0750433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 419,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant3942d90f7c1fe09166cc5c76c931126763b765a03d795b9c495e5611e41a351f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c098a045ff477ace9583a5988e5966c502c018037229b04ec32b7d3611079cf",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant3942d90f7c1fe09166cc5c76c931126763b765a03d795b9c495e5611e41a351f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f55c808-4889-89d5-4c0a-2ac7458d7b98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chaar_sup_eq {K₀ : PositiveCompacts G}
    {K₁ K₂ : Compacts G} (h : Disjoint K₁.1 K₂.1) (h₂ : IsClosed K₂.1) :
    chaar K₀ (K₁ ⊔ K₂) = chaar K₀ K₁ + chaar K₀ K₂ := by
  rcases SeparatedNhds.of_isCompact_isCompact_isClosed K₁.2 K₂.2 h₂ h
    with ⟨U₁, U₂, h1U₁, h1U₂, h2U₁, h2U₂, hU⟩
  rcases compact_open_separated_mul_right K₁.2 h1U₁ h2U₁ with ⟨L₁, h1L₁, h2L₁⟩
  rcases mem_nhds_iff.mp h1L₁ with ⟨V₁, h1V₁, h2V₁, h3V₁⟩
  replace h2L₁ := Subset.trans (mul_subset_mul_left h1V₁) h2L₁
  rcases compact_open_separated_mul_right K₂.2 h1U₂ h2U₂ with ⟨L₂, h1L₂, h2L₂⟩
  rcases mem_nhds_iff.mp h1L₂ with ⟨V₂, h1V₂, h2V₂, h3V₂⟩
  replace h2L₂ := Subset.trans (mul_subset_mul_left h1V₂) h2L₂
  let eval : (Compacts G → ℝ) → ℝ := fun f => f K₁ + f K₂ - f (K₁ ⊔ K₂)
  have : Continuous eval :=
    ((continuous_apply K₁).add (continuous_apply K₂)).sub (continuous_apply (K₁ ⊔ K₂))
  rw [eq_comm, ← sub_eq_zero]; show chaar K₀ ∈ eval ⁻¹' {(0 : ℝ)}
  let V := V₁ ∩ V₂
  apply
    mem_of_subset_of_mem _
      (chaar_mem_clPrehaar K₀
        ⟨⟨V⁻¹, (h2V₁.inter h2V₂).preimage continuous_inv⟩, by
          simp only [V, mem_inv, inv_one, h3V₁, h3V₂, mem_inter_iff, true_and]⟩)
  unfold clPrehaar; rw [IsClosed.closure_subset_iff]
  · rintro _ ⟨U, ⟨h1U, h2U, h3U⟩, rfl⟩
    simp only [eval, mem_preimage, sub_eq_zero, mem_singleton_iff]; rw [eq_comm]
    apply prehaar_sup_eq
    · rw [h2U.interior_eq]; exact ⟨1, h3U⟩
    · refine disjoint_of_subset ?_ ?_ hU
      · refine Subset.trans (mul_subset_mul Subset.rfl ?_) h2L₁
        exact Subset.trans (inv_subset.mpr h1U) inter_subset_left
      · refine Subset.trans (mul_subset_mul Subset.rfl ?_) h2L₂
        exact Subset.trans (inv_subset.mpr h1U) inter_subset_right
  · apply continuous_iff_isClosed.mp this; exact isClosed_singleton

@[to_additive is_left_invariant_addCHaar]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant3942d90f7c1fe09166cc5c76c931126763b765a03d795b9c495e5611e41a351f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant3942d90f7c1fe09166cc5c76c931126763b765a03d795b9c495e5611e41a351f.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd891980ce77e38bac81917cee7cb19bd0750433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
