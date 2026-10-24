# singularPart_add_withDensity_rnDeriv_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:176c1ce5-3dd0-3cde-6107-9fa5395b1980",
  "kind": "theorem",
  "lexical_name": "singularPart_add_withDensity_rnDeriv_eq",
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
  "slug": "singularpart-add-withdensity-rnderiv-eq--000f543a1f0dd46d86e0ff32",
  "source": {
    "blob": "a5fed7e3be6c28f5f8e823e63dfcf38e422bacd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 448,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:000f543a1f0dd46d86e0ff329c167683d971c5f0ed592e3954ff88f8fc64b24c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:176c1ce5-3dd0-3cde-6107-9fa5395b1980`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singularPart_add_withDensity_rnDeriv_eq [c.HaveLebesgueDecomposition μ] :
    c.singularPart μ + μ.withDensityᵥ (c.rnDeriv μ) = c := by
  conv_rhs => rw [← c.toComplexMeasure_to_signedMeasure]
  ext i hi : 1
  rw [add_apply, SignedMeasure.toComplexMeasure_apply]
  apply Complex.ext
  · rw [Complex.add_re, withDensityᵥ_apply (c.integrable_rnDeriv μ) hi, ← RCLike.re_eq_complex_re,
      ← integral_re (c.integrable_rnDeriv μ).integrableOn, RCLike.re_eq_complex_re,
      ← withDensityᵥ_apply _ hi]
    · change (c.re.singularPart μ + μ.withDensityᵥ (c.re.rnDeriv μ)) i = _
      rw [c.re.singularPart_add_withDensity_rnDeriv_eq μ]
    · exact SignedMeasure.integrable_rnDeriv _ _
  · rw [Complex.add_im, withDensityᵥ_apply (c.integrable_rnDeriv μ) hi, ← RCLike.im_eq_complex_im,
      ← integral_im (c.integrable_rnDeriv μ).integrableOn, RCLike.im_eq_complex_im,
      ← withDensityᵥ_apply _ hi]
    · change (c.im.singularPart μ + μ.withDensityᵥ (c.im.rnDeriv μ)) i = _
      rw [c.im.singularPart_add_withDensity_rnDeriv_eq μ]
    · exact SignedMeasure.integrable_rnDeriv _ _

end ComplexMeasure

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5fed7e3be6c28f5f8e823e63dfcf38e422bacd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
