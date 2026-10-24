# condIndepFun_iff_condDistrib_prod_ae_eq_prodMkRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4332514a-ac1f-0214-c72a-381b2981bdb8",
  "kind": "theorem",
  "lexical_name": "condIndepFun_iff_condDistrib_prod_ae_eq_prodMkRight",
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
  "slug": "condindepfun-iff-conddistrib-prod-ae-eq-prodmkright--0e004e730b2c85db26768597",
  "source": {
    "blob": "8943eee9b4e0db33c8e019ea8f2dfb1f805d1890",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 919,
    "line": 872,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e004e730b2c85db267685972bd4d17d252dc1addfd32ae6badd403a188567d1",
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

Occurrence: `result:4332514a-ac1f-0214-c72a-381b2981bdb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 872–919.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condIndepFun_iff_condDistrib_prod_ae_eq_prodMkRight
    {γ : Type*} {mγ : MeasurableSpace γ} {mβ : MeasurableSpace β} {mβ' : MeasurableSpace β'}
    [StandardBorelSpace β] [Nonempty β] [StandardBorelSpace β'] [Nonempty β']
    (hf : Measurable f) (hg : Measurable g) {k : Ω → γ} (hk : Measurable k) :
    g ⟂ᵢ[k, hk; μ] f ↔
      condDistrib f (fun ω ↦ (k ω, g ω)) μ =ᵐ[μ.map (fun ω ↦ (k ω, g ω))]
        (condDistrib f k μ).prodMkRight _ := by
  rw [condDistrib_ae_eq_iff_measure_eq_compProd (μ := μ) (by fun_prop) hf.aemeasurable,
    condIndepFun_iff_map_prod_eq_prod_condDistrib_prod_condDistrib hg hf hk,
    Measure.compProd_eq_comp_prod]
  let e : γ × β' × β ≃ᵐ (γ × β') × β := MeasurableEquiv.prodAssoc.symm
  have h_eq : ((Kernel.id ×ₖ condDistrib g k μ) ×ₖ condDistrib f k μ) ∘ₘ μ.map k =
      (Kernel.id ×ₖ (condDistrib f k μ).prodMkRight _) ∘ₘ μ.map (fun a ↦ (k a, g a)) := by
    calc ((Kernel.id ×ₖ condDistrib g k μ) ×ₖ condDistrib f k μ) ∘ₘ μ.map k
    _ = (Kernel.id ×ₖ (condDistrib f k μ).prodMkRight _) ∘ₘ (μ.map k ⊗ₘ condDistrib g k μ) := by
      rw [Measure.compProd_eq_comp_prod, Measure.comp_assoc]
      congr 2
      have h := Kernel.prod_prodMkRight_comp_deterministic_prod (condDistrib g k μ)
        (condDistrib f k μ) Kernel.id measurable_id
      rw [← Kernel.id] at h
      simpa using h.symm
    _ = (Kernel.id ×ₖ (condDistrib f k μ).prodMkRight _) ∘ₘ μ.map (fun a ↦ (k a, g a)) := by
      rw [compProd_map_condDistrib hk.aemeasurable hg.aemeasurable]
  rw [← h_eq]
  have h1 : μ.map (fun x ↦ ((k x, g x), f x)) = (μ.map (fun a ↦ (k a, g a, f a))).map e := by
    rw [Measure.map_map (by fun_prop) (by fun_prop)]
    rfl
  have h1_symm : μ.map (fun a ↦ (k a, g a, f a)) =
      (μ.map (fun x ↦ ((k x, g x), f x))).map e.symm := by
    rw [h1, Measure.map_map (by fun_prop) (by fun_prop), MeasurableEquiv.symm_comp_self,
      Measure.map_id]
  have h2 : ((Kernel.id ×ₖ condDistrib g k μ) ×ₖ condDistrib f k μ) ∘ₘ μ.map k =
      ((Kernel.id ×ₖ (condDistrib g k μ ×ₖ condDistrib f k μ)) ∘ₘ μ.map k).map e := by
    rw [← Measure.deterministic_comp_eq_map e.measurable, Measure.comp_assoc]
    congr 2
    unfold e
    rw [Kernel.deterministic_comp_eq_map, Kernel.prodAssoc_symm_prod]
  have h2_symm : (Kernel.id ×ₖ (condDistrib g k μ ×ₖ condDistrib f k μ)) ∘ₘ μ.map k =
      (((Kernel.id ×ₖ condDistrib g k μ) ×ₖ condDistrib f k μ) ∘ₘ μ.map k).map e.symm := by
    rw [h2, Measure.map_map (by fun_prop) (by fun_prop), MeasurableEquiv.symm_comp_self,
      Measure.map_id]
  rw [h1, h2]
  exact ⟨fun h ↦ by rw [h], fun h ↦ by rw [h1_symm, h1, h2_symm, h2, h]⟩

section iCondIndepFun
variable {β : ι → Type*} {m : ∀ i, MeasurableSpace (β i)} {f : ∀ i, Ω → β i}

@[nontriviality]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean#L872).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8943eee9b4e0db33c8e019ea8f2dfb1f805d1890` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
