# integrable_cexp_neg_mul_sq_add_real_mul_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b9c45df-304d-4cd0-1718-374e0b90e6ce",
  "kind": "theorem",
  "lexical_name": "integrable_cexp_neg_mul_sq_add_real_mul_I",
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
  "slug": "integrable-cexp-neg-mul-sq-add-real-mul-i--09528d08983ae5086e0517c9",
  "source": {
    "blob": "131c705142722e98094778ccce2fb735fe857519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 132,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09528d08983ae5086e0517c9cfc93d7f53eee16fdc5f6f59d75d2bcab0e128fa",
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

Occurrence: `result:1b9c45df-304d-4cd0-1718-374e0b90e6ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_cexp_neg_mul_sq_add_real_mul_I (hb : 0 < b.re) (c : ℝ) :
    Integrable fun x : ℝ => cexp (-b * (x + c * I) ^ 2) := by
  refine
    ⟨(Complex.continuous_exp.comp
          (continuous_const.mul
            ((continuous_ofReal.add continuous_const).pow 2))).aestronglyMeasurable,
      ?_⟩
  rw [← hasFiniteIntegral_norm_iff]
  simp_rw [norm_cexp_neg_mul_sq_add_mul_I' hb.ne', neg_sub _ (c ^ 2 * _),
    sub_eq_add_neg _ (b.re * _), Real.exp_add]
  suffices Integrable fun x : ℝ => exp (-(b.re * x ^ 2)) by
    exact (Integrable.comp_sub_right this (b.im * c / b.re)).hasFiniteIntegral.const_mul _
  simp_rw [← neg_mul]
  apply integrable_exp_neg_mul_sq hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant7af1d2e98b7fbc8c49f7e895e97eb0d91aadf2d87f867d6211116c5a8751b037.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `131c705142722e98094778ccce2fb735fe857519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
