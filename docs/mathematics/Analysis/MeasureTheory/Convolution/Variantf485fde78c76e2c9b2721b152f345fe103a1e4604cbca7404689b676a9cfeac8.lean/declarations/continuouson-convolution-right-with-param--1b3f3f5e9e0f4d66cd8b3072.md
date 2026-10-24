# continuousOn_convolution_right_with_param

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e29fbc80-43e1-2914-8114-8920269a6d31",
  "kind": "theorem",
  "lexical_name": "continuousOn_convolution_right_with_param",
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
  "slug": "continuouson-convolution-right-with-param--1b3f3f5e9e0f4d66cd8b3072",
  "source": {
    "blob": "cbfe9c51f48fe1e6f501e0174521e9939c4295b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 609,
    "line": 560,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variantf485fde78c76e2c9b2721b152f345fe103a1e4604cbca7404689b676a9cfeac8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b3f3f5e9e0f4d66cd8b307239cf186a2fa4c77330a0ae00a18ac09f1c2eaf75",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variantf485fde78c76e2c9b2721b152f345fe103a1e4604cbca7404689b676a9cfeac8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e29fbc80-43e1-2914-8114-8920269a6d31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 560–609.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_convolution_right_with_param {g : P → G → E'} {s : Set P} {k : Set G}
    (hk : IsCompact k) (hgs : ∀ p, ∀ x, p ∈ s → x ∉ k → g p x = 0)
    (hf : LocallyIntegrable f μ) (hg : ContinuousOn (↿g) (s ×ˢ univ)) :
    ContinuousOn (fun q : P × G => (f ⋆[L, μ] g q.1) q.2) (s ×ˢ univ) := by
  /- First get rid of the case where the space is not locally compact. Then `g` vanishes everywhere
  and the conclusion is trivial. -/
  by_cases H : ∀ p ∈ s, ∀ x, g p x = 0
  · apply (continuousOn_const (c := 0)).congr
    rintro ⟨p, x⟩ ⟨hp, -⟩
    apply integral_eq_zero_of_ae (Eventually.of_forall (fun y ↦ ?_))
    simp [H p hp _]
  have : LocallyCompactSpace G := by
    push_neg at H
    rcases H with ⟨p, hp, x, hx⟩
    have A : support (g p) ⊆ k := support_subset_iff'.2 (fun y hy ↦ hgs p y hp hy)
    have B : Continuous (g p) := by
      refine hg.comp_continuous (.prodMk_right _) fun x => ?_
      simpa only [prodMk_mem_set_prod_eq, mem_univ, and_true] using hp
    rcases eq_zero_or_locallyCompactSpace_of_support_subset_isCompact_of_addGroup hk A B with H|H
    · simp [H] at hx
    · exact H
  /- Since `G` is locally compact, one may thicken `k` a little bit into a larger compact set
  `(-k) + t`, outside of which all functions that appear in the convolution vanish. Then we can
  apply a continuity statement for integrals depending on a parameter, with respect to
  locally integrable functions and compactly supported continuous functions. -/
  rintro ⟨q₀, x₀⟩ ⟨hq₀, -⟩
  obtain ⟨t, t_comp, ht⟩ : ∃ t, IsCompact t ∧ t ∈ 𝓝 x₀ := exists_compact_mem_nhds x₀
  let k' : Set G := (-k) +ᵥ t
  have k'_comp : IsCompact k' := IsCompact.vadd_set hk.neg t_comp
  let g' : (P × G) → G → E' := fun p x ↦ g p.1 (p.2 - x)
  let s' : Set (P × G) := s ×ˢ t
  have A : ContinuousOn g'.uncurry (s' ×ˢ univ) := by
    have : g'.uncurry = g.uncurry ∘ (fun w ↦ (w.1.1, w.1.2 - w.2)) := by ext y; rfl
    rw [this]
    refine hg.comp (by fun_prop) ?_
    simp +contextual [s', MapsTo]
  have B : ContinuousOn (fun a ↦ ∫ x, L (f x) (g' a x) ∂μ) s' := by
    apply continuousOn_integral_bilinear_of_locally_integrable_of_compact_support L k'_comp A _
      (hf.integrableOn_isCompact k'_comp)
    rintro ⟨p, x⟩ y ⟨hp, hx⟩ hy
    apply hgs p _ hp
    contrapose! hy
    exact ⟨y - x, by simpa using hy, x, hx, by simp⟩
  apply ContinuousWithinAt.mono_of_mem_nhdsWithin (B (q₀, x₀) ⟨hq₀, mem_of_mem_nhds ht⟩)
  exact mem_nhdsWithin_prod_iff.2 ⟨s, self_mem_nhdsWithin, t, nhdsWithin_le_nhds ht, Subset.rfl⟩

/-- The convolution `f * g` is continuous if `f` is locally integrable and `g` is continuous and
compactly supported. Version where `g` depends on an additional parameter in an open subset `s` of
a parameter space `P` (and the compact support `k` is independent of the parameter in `s`),
given in terms of compositions with an additional continuous map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variantf485fde78c76e2c9b2721b152f345fe103a1e4604cbca7404689b676a9cfeac8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variantf485fde78c76e2c9b2721b152f345fe103a1e4604cbca7404689b676a9cfeac8.lean#L560).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbfe9c51f48fe1e6f501e0174521e9939c4295b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
