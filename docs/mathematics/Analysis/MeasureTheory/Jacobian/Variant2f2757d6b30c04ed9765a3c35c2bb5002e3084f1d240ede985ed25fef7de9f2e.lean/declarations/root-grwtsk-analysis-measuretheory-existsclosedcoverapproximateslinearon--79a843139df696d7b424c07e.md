# _root_.GRWTSK.Analysis.MeasureTheory.ExistsClosedCoverApproximatesLinearOnOfHasFDerivWithinAt.Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.MeasurableEmbedding.withDensity_ofReal_comap_apply_eq_integral_abs_det_fderiv_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eafe198e-e991-99ac-3959-ad0b62a0a9c8",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.ExistsClosedCoverApproximatesLinearOnOfHasFDerivWithinAt.Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.MeasurableEmbedding.withDensity_ofReal_comap_apply_eq_integral_abs_det_fderiv_mul",
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
  "slug": "root-grwtsk-analysis-measuretheory-existsclosedcoverapproximateslinearon--79a843139df696d7b424c07e",
  "source": {
    "blob": "f7cad2063b178cca3d9a88bb2ae37986675b0814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1237,
    "line": 1225,
    "path": "GRWTSK/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79a843139df696d7b424c07e31efc611fe5d3b4f007d7ac75f8652bac9d89a03",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eafe198e-e991-99ac-3959-ad0b62a0a9c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1225–1237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.MeasureTheory.ExistsClosedCoverApproximatesLinearOnOfHasFDerivWithinAt.Variant90c7b3e8365894913b3e324c359603a2539413da6d8feb10eb246dfaf8ea2a57.MeasurableEmbedding.withDensity_ofReal_comap_apply_eq_integral_abs_det_fderiv_mul
    (hs : MeasurableSet s) (hf : MeasurableEmbedding f)
    {g : E → ℝ} (hg : ∀ᵐ x ∂μ, x ∈ f '' s → 0 ≤ g x) (hg_int : IntegrableOn g (f '' s) μ)
    (hf' : ∀ x ∈ s, HasFDerivWithinAt f (f' x) s x) :
    (μ.withDensity (fun x ↦ ENNReal.ofReal (g x))).comap f s
      = ENNReal.ofReal (∫ x in s, |(f' x).det| * g (f x) ∂μ) := by
  rw [Measure.comap_apply f hf.injective (fun t ht ↦ hf.measurableSet_image' ht) _ hs,
    withDensity_apply _ (hf.measurableSet_image' hs),
    ← ofReal_integral_eq_lintegral_ofReal hg_int
      ((ae_restrict_iff' (hf.measurableSet_image' hs)).mpr hg),
    integral_image_eq_integral_abs_det_fderiv_smul μ hs hf' hf.injective.injOn]
  simp_rw [smul_eq_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jacobian/Variant2f2757d6b30c04ed9765a3c35c2bb5002e3084f1d240ede985ed25fef7de9f2e.lean#L1225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7cad2063b178cca3d9a88bb2ae37986675b0814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
