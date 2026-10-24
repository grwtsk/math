# exists_larger_than_boundary_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63e9fcba-31a2-ade0-d279-ca1b7c5dc687",
  "kind": "lemma",
  "lexical_name": "exists_larger_than_boundary_val",
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
  "slug": "exists-larger-than-boundary-val--10acc29115ecf3792e13c198",
  "source": {
    "blob": "b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3375,
    "line": 3358,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10acc29115ecf3792e13c1981f1bd72618a716c31c7688352334ca62a2273cef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63e9fcba-31a2-ade0-d279-ca1b7c5dc687`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3358–3375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_larger_than_boundary_val {x₁ : ℝ} (h : x₁ ≥ 14) :
    ∃ t > x₁ * log x₁, (log t / t) * ∫ s in x₁..t, 1 / (log s) ^ 2 >
      (log (x₁ * log x₁) / (x₁ * log x₁)) * ∫ s in x₁..(x₁ * log x₁), 1 / (log s) ^ 2 := by
  have h_deriv : deriv (fun t ↦ (log t / t) * ∫ s in x₁..t, 1 / (log s) ^ 2) (x₁ * log x₁) > 0 :=
    deriv_log_div_self_mul_integral_one_div_log_sq_pos h
  have h_tendsto := hasDerivAt_iff_tendsto_slope.mp (hasDerivAt_log_div_self_mul_integral_one_div_log_sq h)
  have h_slope_pos : ∀ᶠ t in nhdsWithin (x₁ * log x₁) (Set.Ioi (x₁ * log x₁)), slope (fun t ↦ (log t / t) * ∫ s in x₁..t, 1 / (log s) ^ 2) (x₁ * log x₁) t > 0 :=
    Filter.Eventually.filter_mono (nhdsWithin_mono (x₁ * log x₁) (fun _ h ↦ ne_of_gt h))
      (Filter.Tendsto.eventually_const_lt h_deriv h_tendsto)
  have h_exists : ∃ t > x₁ * log x₁, slope (fun t ↦ (log t / t) * ∫ s in x₁..t, 1 / (log s) ^ 2) (x₁ * log x₁) t > 0 := by
    haveI : Filter.NeBot (nhdsWithin (x₁ * log x₁) {x | (fun x ↦ x > x₁ * log x₁) x}) := nhdsWithin_Ioi_neBot le_rfl
    exact Filter.Eventually.exists (Filter.Eventually.and self_mem_nhdsWithin h_slope_pos)
  obtain ⟨t, ht_gt, ht_slope⟩ := h_exists
  have h_val : (log t / t) * ∫ s in x₁..t, 1 / (log s) ^ 2 >
    (log (x₁ * log x₁) / (x₁ * log x₁)) * ∫ s in x₁..(x₁ * log x₁), 1 / (log s) ^ 2 :=
    (slope_pos_iff_of_le ht_gt.le).mp ht_slope
  exact ⟨t, ht_gt, h_val⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean#L3358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
