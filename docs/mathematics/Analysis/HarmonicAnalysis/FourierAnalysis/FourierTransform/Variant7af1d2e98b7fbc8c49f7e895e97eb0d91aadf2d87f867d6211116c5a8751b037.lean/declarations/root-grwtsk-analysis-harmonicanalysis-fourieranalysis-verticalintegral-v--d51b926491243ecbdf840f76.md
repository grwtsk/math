# _root_.GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.VerticalIntegral.Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.fourierIntegral_gaussian_innerProductSpace'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:287887d2-8f4f-46e7-6e7d-d4a75d86f218",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.VerticalIntegral.Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.fourierIntegral_gaussian_innerProductSpace'",
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
  "slug": "root-grwtsk-analysis-harmonicanalysis-fourieranalysis-verticalintegral-v--d51b926491243ecbdf840f76",
  "source": {
    "blob": "131c705142722e98094778ccce2fb735fe857519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 355,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d51b926491243ecbdf840f760bd0288d8503225bb2a47326ccd7552005f68aab",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:287887d2-8f4f-46e7-6e7d-d4a75d86f218`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.VerticalIntegral.Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.fourierIntegral_gaussian_innerProductSpace' (hb : 0 < b.re) (x w : V) :
    𝓕 (fun v ↦ cexp (- b * ‖v‖^2 + 2 * π * Complex.I * ⟪x, v⟫)) w =
      (π / b) ^ (Module.finrank ℝ V / 2 : ℂ) * cexp (-π ^ 2 * ‖x - w‖ ^ 2 / b) := by
  simp only [neg_mul, fourierIntegral_eq', ofReal_neg, ofReal_mul, ofReal_ofNat,
    smul_eq_mul, ← Complex.exp_add, real_inner_comm w]
  convert integral_cexp_neg_mul_sq_norm_add hb (2 * π * Complex.I) (x - w) using 3 with v
  · congr 1
    simp [inner_sub_left]
    ring
  · have : b ≠ 0 := by contrapose! hb; rw [hb, zero_re]
    field_simp [mul_pow]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `131c705142722e98094778ccce2fb735fe857519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
