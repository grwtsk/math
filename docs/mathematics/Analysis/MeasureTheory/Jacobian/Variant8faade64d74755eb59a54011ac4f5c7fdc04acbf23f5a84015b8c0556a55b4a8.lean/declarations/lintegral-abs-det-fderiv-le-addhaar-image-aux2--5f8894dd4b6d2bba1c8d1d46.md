# lintegral_abs_det_fderiv_le_addHaar_image_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1282f2f6-ae67-3139-bf35-ae754512fb01",
  "kind": "theorem",
  "lexical_name": "lintegral_abs_det_fderiv_le_addHaar_image_aux2",
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
  "slug": "lintegral-abs-det-fderiv-le-addhaar-image-aux2--5f8894dd4b6d2bba1c8d1d46",
  "source": {
    "blob": "f39c34da90f57127c1bfa0b8c7576e29e66d2677",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1064,
    "line": 1047,
    "path": "GRWTSK/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f8894dd4b6d2bba1c8d1d468ebb4a652262e8249276bd550cab8e4bcefee594",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1282f2f6-ae67-3139-bf35-ae754512fb01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1047–1064.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_abs_det_fderiv_le_addHaar_image_aux2 (hs : MeasurableSet s) (h's : μ s ≠ ∞)
    (hf' : ∀ x ∈ s, HasFDerivWithinAt f (f' x) s x) (hf : InjOn f s) :
    (∫⁻ x in s, ENNReal.ofReal |(f' x).det| ∂μ) ≤ μ (f '' s) := by
  -- We just need to let the error tend to `0` in the previous lemma.
  have :
    Tendsto (fun ε : ℝ≥0 => μ (f '' s) + 2 * ε * μ s) (𝓝[>] 0)
      (𝓝 (μ (f '' s) + 2 * (0 : ℝ≥0) * μ s)) := by
    apply Tendsto.mono_left _ nhdsWithin_le_nhds
    refine' tendsto_const_nhds.add _
    refine' ENNReal.Tendsto.mul_const _ (Or.inr h's)
    exact ENNReal.Tendsto.const_mul (ENNReal.tendsto_coe.2 tendsto_id) (Or.inr ENNReal.coe_ne_top)
  simp only [add_zero, zero_mul, mul_zero, ENNReal.coe_zero] at this
  apply ge_of_tendsto this
  filter_upwards [self_mem_nhdsWithin]
  rintro ε (εpos : 0 < ε)
  exact lintegral_abs_det_fderiv_le_addHaar_image_aux1 μ hs hf' hf εpos
#align measure_theory.lintegral_abs_det_fderiv_le_add_haar_image_aux2 MeasureTheory.lintegral_abs_det_fderiv_le_addHaar_image_aux2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean#L1047).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f39c34da90f57127c1bfa0b8c7576e29e66d2677` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
