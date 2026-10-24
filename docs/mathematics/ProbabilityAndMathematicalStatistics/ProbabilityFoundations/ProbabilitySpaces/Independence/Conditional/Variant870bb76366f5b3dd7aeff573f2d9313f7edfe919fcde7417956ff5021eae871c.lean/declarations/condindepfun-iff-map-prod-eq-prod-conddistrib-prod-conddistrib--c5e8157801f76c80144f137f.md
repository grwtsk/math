# condIndepFun_iff_map_prod_eq_prod_condDistrib_prod_condDistrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a115c39-90b5-bc43-3100-2c88f613e942",
  "kind": "theorem",
  "lexical_name": "condIndepFun_iff_map_prod_eq_prod_condDistrib_prod_condDistrib",
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
  "slug": "condindepfun-iff-map-prod-eq-prod-conddistrib-prod-conddistrib--c5e8157801f76c80144f137f",
  "source": {
    "blob": "8943eee9b4e0db33c8e019ea8f2dfb1f805d1890",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 871,
    "line": 822,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5e8157801f76c80144f137f50a256027e8cf623ce2f52f7e5f38afb24fb882f",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a115c39-90b5-bc43-3100-2c88f613e942`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 822–871.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condIndepFun_iff_map_prod_eq_prod_condDistrib_prod_condDistrib
    {γ : Type*} {mγ : MeasurableSpace γ} {mβ : MeasurableSpace β} {mβ' : MeasurableSpace β'}
    [StandardBorelSpace β] [Nonempty β] [StandardBorelSpace β'] [Nonempty β']
    (hf : Measurable f) (hg : Measurable g) {k : Ω → γ} (hk : Measurable k) :
    f ⟂ᵢ[k, hk; μ] g ↔
      μ.map (fun ω ↦ (k ω, f ω, g ω)) =
        (Kernel.id ×ₖ (condDistrib f k μ ×ₖ condDistrib g k μ)) ∘ₘ μ.map k := by
  rw [condIndepFun_iff_map_prod_eq_prod_comp_trim hf hg]
  simp_rw [Measure.ext_prod₃_iff]
  have hk_meas {s : Set γ} (hs : MeasurableSet s) : MeasurableSet[mγ.comap k] (k ⁻¹' s) :=
    ⟨s, hs, rfl⟩
  have h_left {s : Set γ} {t : Set β} {u : Set β'} (hs : MeasurableSet s) (ht : MeasurableSet t)
      (hu : MeasurableSet u) :
      (μ.map (fun ω ↦ (k ω, f ω, g ω))) (s ×ˢ t ×ˢ u) =
        (@Measure.map _ _ _ ((mγ.comap k).prod inferInstance)
          (fun ω ↦ (ω, f ω, g ω)) μ) ((k ⁻¹' s) ×ˢ t ×ˢ u) := by
    rw [Measure.map_apply (by fun_prop) (hs.prod (ht.prod hu)),
      Measure.map_apply _ ((hk_meas hs).prod (ht.prod hu))]
    · simp [Set.mk_preimage_prod]
    · exact (measurable_id.mono le_rfl hk.comap_le).prodMk (by fun_prop)
  have h_right {s : Set γ} {t : Set β} {u : Set β'} (hs : MeasurableSet s) (ht : MeasurableSet t)
      (hu : MeasurableSet u) :
      ((Kernel.id ×ₖ (condDistrib f k μ ×ₖ condDistrib g k μ)) ∘ₘ μ.map k) (s ×ˢ t ×ˢ u) =
        ((Kernel.id ×ₖ
          ((condExpKernel μ (mγ.comap k)).map f ×ₖ (condExpKernel μ (mγ.comap k)).map g)) ∘ₘ
        μ.trim hk.comap_le) ((k ⁻¹' s) ×ˢ t ×ˢ u) := by
    rw [Measure.bind_apply ((hk_meas hs).prod (ht.prod hu)) (by fun_prop),
      Measure.bind_apply (hs.prod (ht.prod hu)) (by fun_prop), lintegral_map ?_ (by fun_prop),
      lintegral_trim]
    rotate_left
    · exact Kernel.measurable_coe _ ((hk_meas hs).prod (ht.prod hu))
    · exact Kernel.measurable_coe _ (hs.prod (ht.prod hu))
    refine lintegral_congr_ae ?_
    filter_upwards [condDistrib_apply_ae_eq_condExpKernel_map hf hk ht,
      condDistrib_apply_ae_eq_condExpKernel_map hg hk hu] with a haX haT
    simp only [Kernel.prod_apply_prod, Kernel.id_apply, Measure.dirac_apply' _ hs]
    rw [@Measure.dirac_apply' _ (mγ.comap k) _ _ (hk_meas hs)]
    congr
  refine ⟨fun h s t u hs ht hu ↦ ?_, fun h ↦ ?_⟩
  · convert! h (hk_meas hs) ht hu
    · exact h_left hs ht hu
    · exact h_right hs ht hu
  · rintro - t u ⟨s, hs, rfl⟩ ht hu
    convert! h hs ht hu
    · exact (h_left hs ht hu).symm
    · exact (h_right hs ht hu).symm

/-- Two random variables `f, g` are conditionally independent given a third `k` iff the
conditional distribution of `f` given `k` and `g` is equal to the conditional distribution of `f`
given `k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean#L822).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8943eee9b4e0db33c8e019ea8f2dfb1f805d1890` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
