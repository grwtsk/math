# kernel.continuous_integral_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a94200e0-d926-2ecc-b366-b7ad93ae32c0",
  "kind": "theorem",
  "lexical_name": "kernel.continuous_integral_integral",
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
  "slug": "kernel-continuous-integral-integral--13ba6b632a4814d87ec6fe00",
  "source": {
    "blob": "48e575a8f62b187b4d36b125b47b08b6016f7709",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 225,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13ba6b632a4814d87ec6fe0076779e0e51af584f990e77df3cfa570446d004f7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a94200e0-d926-2ecc-b366-b7ad93ae32c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel.continuous_integral_integral :
    -- Continuous fun f : α × β →₁[(κ ⊗ₖ η) a] E => ∫ x, ∫ y, f (x, y) ∂η (a, x) ∂κ a := by
    Continuous fun f : (MeasureTheory.Lp (α := β × γ) E 1 (((κ ⊗ₖ η) a) : Measure (β × γ))) =>
        ∫ x, ∫ y, f (x, y) ∂η (a, x) ∂κ a := by
  rw [continuous_iff_continuousAt]; intro g
  refine'
    tendsto_integral_of_L1 _ (L1.integrable_coeFn g).integral_compProd
      (eventually_of_forall fun h => (L1.integrable_coeFn h).integral_compProd) _
  simp_rw [←
    kernel.lintegral_fn_integral_sub (fun x => (‖x‖₊ : ℝ≥0∞)) (L1.integrable_coeFn _)
      (L1.integrable_coeFn g)]
  refine' tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds _ (fun i => zero_le _) _
  · exact fun i => ∫⁻ x, ∫⁻ y, ‖i (x, y) - g (x, y)‖₊ ∂η (a, x) ∂κ a
  swap; · exact fun i => lintegral_mono fun x => ennnorm_integral_le_lintegral_ennnorm _
  show
    Tendsto
      (fun i : β × γ →₁[(κ ⊗ₖ η) a] E => ∫⁻ x, ∫⁻ y : γ, ‖i (x, y) - g (x, y)‖₊ ∂η (a, x) ∂κ a)
      (𝓝 g) (𝓝 0)
  have : ∀ i : (MeasureTheory.Lp (α := β × γ) E 1 (((κ ⊗ₖ η) a) : Measure (β × γ))),
      Measurable fun z => (‖i z - g z‖₊ : ℝ≥0∞) := fun i =>
    ((Lp.stronglyMeasurable i).sub (Lp.stronglyMeasurable g)).ennnorm
  simp_rw [← kernel.lintegral_compProd _ _ _ (this _), ← L1.ofReal_norm_sub_eq_lintegral, ←
    ofReal_zero]
  refine' (continuous_ofReal.tendsto 0).comp _
  rw [← tendsto_iff_norm_tendsto_zero]
  exact tendsto_id
#align probability_theory.kernel.continuous_integral_integral ProbabilityTheory.kernel.continuous_integral_integral

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48e575a8f62b187b4d36b125b47b08b6016f7709` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
