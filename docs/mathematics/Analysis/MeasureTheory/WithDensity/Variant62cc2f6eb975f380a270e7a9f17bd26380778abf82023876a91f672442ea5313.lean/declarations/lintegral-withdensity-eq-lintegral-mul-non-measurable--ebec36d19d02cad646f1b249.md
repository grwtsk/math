# lintegral_withDensity_eq_lintegral_mul_non_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:374bd9b8-f403-41cc-ef1a-c5c77247c6ab",
  "kind": "theorem",
  "lexical_name": "lintegral_withDensity_eq_lintegral_mul_non_measurable",
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
  "slug": "lintegral-withdensity-eq-lintegral-mul-non-measurable--ebec36d19d02cad646f1b249",
  "source": {
    "blob": "13b8bced081feb62dc5a16e2ce9acac3981bf1d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 437,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebec36d19d02cad646f1b24988493cd99cff97a050e579c788bdcd3f63d1fa2e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:374bd9b8-f403-41cc-ef1a-c5c77247c6ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_withDensity_eq_lintegral_mul_non_measurable (μ : Measure α) {f : α → ℝ≥0∞}
    (f_meas : Measurable f) (hf : ∀ᵐ x ∂μ, f x < ∞) (g : α → ℝ≥0∞) :
    ∫⁻ a, g a ∂μ.withDensity f = ∫⁻ a, (f * g) a ∂μ := by
  refine le_antisymm (lintegral_withDensity_le_lintegral_mul μ f_meas g) ?_
  rw [← iSup_lintegral_measurable_le_eq_lintegral, ← iSup_lintegral_measurable_le_eq_lintegral]
  refine iSup₂_le fun i i_meas => iSup_le fun hi => ?_
  have A : (fun x => (f x)⁻¹ * i x) ≤ g := by
    intro x
    dsimp
    rw [mul_comm, ← div_eq_mul_inv]
    exact div_le_of_le_mul' (hi x)
  refine le_iSup_of_le (fun x => (f x)⁻¹ * i x) (le_iSup_of_le (f_meas.inv.mul i_meas) ?_)
  refine le_iSup_of_le A ?_
  rw [lintegral_withDensity_eq_lintegral_mul _ f_meas (f_meas.inv.mul i_meas)]
  apply lintegral_mono_ae
  filter_upwards [hf]
  intro x h'x
  rcases eq_or_ne (f x) 0 with (hx | hx)
  · have := hi x
    simp only [hx, zero_mul, Pi.mul_apply, nonpos_iff_eq_zero] at this
    simp [this]
  · apply le_of_eq _
    dsimp
    rw [← mul_assoc, ENNReal.mul_inv_cancel hx h'x.ne, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13b8bced081feb62dc5a16e2ce9acac3981bf1d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
