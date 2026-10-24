# actualSecondProfile_correlation_integrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0e3888e-4b66-9eef-0a89-1edd4836bf39",
  "kind": "theorem",
  "lexical_name": "actualSecondProfile_correlation_integrand_integrable",
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
  "slug": "actualsecondprofile-correlation-integrand-integrable--737f99b24ecbddd9c09f0aa8",
  "source": {
    "blob": "cb2c83bfb99f32fbfe88072f53c21c6ea28f405e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 62,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSecondProfileCorrelation/Variante61ff640e605b7942b764326caea375da2bdc2767605884ae5e973f89e735715.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:737f99b24ecbddd9c09f0aa894344f94c3b105097fa05a830e799ac95df9aa77",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSecondProfileCorrelation/Variante61ff640e605b7942b764326caea375da2bdc2767605884ae5e973f89e735715.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0e3888e-4b66-9eef-0a89-1edd4836bf39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSecondProfile_correlation_integrand_integrable
    (A t : ℝ) (hA : 0 < A) :
    Integrable (fun x => actualSecondProfile A x * actualSecondProfile A (x - t)) := by
  have hf := actualSecondProfile_square_integrable A hA
  have hg := hf.comp_sub_right t
  have hm : AEStronglyMeasurable
      (fun x => actualSecondProfile A x * actualSecondProfile A (x - t)) volume :=
    ((actualSecondProfile_measurable A).mul
      ((actualSecondProfile_measurable A).comp (measurable_id.sub_const t))).aestronglyMeasurable
  apply ((hf.add hg).div_const 2).mono' hm
  filter_upwards [] with x
  simpa only [Real.norm_eq_abs] using
    real_product_abs_le_square_mean (actualSecondProfile A x) (actualSecondProfile A (x - t))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSecondProfileCorrelation/Variante61ff640e605b7942b764326caea375da2bdc2767605884ae5e973f89e735715.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSecondProfileCorrelation/Variante61ff640e605b7942b764326caea375da2bdc2767605884ae5e973f89e735715.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb2c83bfb99f32fbfe88072f53c21c6ea28f405e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
