# mollify_integral_sq_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87ce0e9e5ae7d16edb3b4989532fd65d4f9ab57b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1baa48b6-d3bc-fc98-b70d-338df826993b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad297250-2518-0ade-9c03-2a442fbb2976",
  "kind": "theorem",
  "lexical_name": "mollify_integral_sq_tendsto_zero",
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
  "slug": "mollify-integral-sq-tendsto-zero--3456c0dbecc46fb22ee49bfc",
  "source": {
    "blob": "87ce0e9e5ae7d16edb3b4989532fd65d4f9ab57b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 126,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3456c0dbecc46fb22ee49bfc3b1ede316eba6eec32e634ea7c94e47606a20d9d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad297250-2518-0ade-9c03-2a442fbb2976`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mollify_integral_sq_tendsto_zero {ι : Type*} {l : Filter ι} [l.IsCountablyGenerated]
    (A : ℝ) (hA : 1 ≤ A) {f : ℝ → ℝ} (hf : Continuous f)
    (hcompact : HasCompactSupport f) (hsupport : Function.support f ⊆ Icc (-A) A)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ ∫ x, (mollify f (ε i) (hε i) x - f x) ^ 2) l (𝓝 0) := by
  obtain ⟨C, hC⟩ := hcompact.exists_bound_of_continuous hf
  let M := max C A
  have hM : 0 ≤ M := le_trans (by linarith : 0 ≤ A) (le_max_right C A)
  have hbound : ∀ x, ‖f x‖ ≤ M := fun x ↦ (hC x).trans (le_max_left C A)
  let bound : ℝ → ℝ := (Icc (-A - 1) (A + 1)).indicator (fun _ ↦ (2 * M) ^ 2)
  have hbound_integrable : Integrable bound volume :=
    (continuous_const.integrableOn_Icc).integrable_indicator measurableSet_Icc
  have hsmall : ∀ᶠ i in l, ε i ≤ 1 :=
    ((tendsto_order.1 hlim).2 1 (by norm_num)).mono fun _ h ↦ h.le
  have hmeas : ∀ᶠ i in l,
      AEStronglyMeasurable (fun x ↦ (mollify f (ε i) (hε i) x - f x) ^ 2) volume :=
    Eventually.of_forall fun i ↦ (error_square_integrable hf hcompact (ε i) (hε i)).1
  have hdom : ∀ᶠ i in l, ∀ᵐ x ∂volume,
      ‖(mollify f (ε i) (hε i) x - f x) ^ 2‖ ≤ bound x := by
    filter_upwards [hsmall] with i hi
    exact Eventually.of_forall fun x ↦ by
      by_cases hx : x ∈ Icc (-A - 1) (A + 1)
      · simp only [bound, indicator_of_mem hx, norm_pow]
        have hn : ‖mollify f (ε i) (hε i) x - f x‖ ≤ 2 * M := by
          calc
            ‖mollify f (ε i) (hε i) x - f x‖ ≤
                ‖mollify f (ε i) (hε i) x‖ + ‖f x‖ := norm_sub_le _ _
            _ ≤ M + M := add_le_add (mollify_norm_le hf hbound (ε i) (hε i) x) (hbound x)
            _ = 2 * M := by ring
        exact (sq_le_sq₀ (norm_nonneg _) (by positivity)).2 hn
      · have hz : mollify f (ε i) (hε i) x - f x = 0 := by
          by_contra hz
          exact hx (error_support_subset_common A hsupport (ε i) (hε i) hi hz)
        simp only [hz, zero_pow two_ne_zero, norm_zero, bound, indicator_of_notMem hx, le_refl]
  have hpoint : ∀ᵐ x ∂volume,
      Tendsto (fun i ↦ (mollify f (ε i) (hε i) x - f x) ^ 2) l (𝓝 (0 : ℝ)) :=
    Eventually.of_forall fun x ↦ by
      have hc : Tendsto (fun _ : ι ↦ f x) l (𝓝 (f x)) := tendsto_const_nhds
      simpa only [sub_self, zero_pow two_ne_zero] using
        ((mollify_tendsto hf ε hε hlim x).sub hc).pow 2
  simpa only [integral_zero] using
    (tendsto_integral_filter_of_dominated_convergence bound hmeas hdom hbound_integrable hpoint)

end
end ZeroSmoothingL2Core
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2Core/Variant24ce6b48d52810713231a6408cc036be3b198f6ee252c98749888cada5765302.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87ce0e9e5ae7d16edb3b4989532fd65d4f9ab57b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
