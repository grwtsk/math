# integral_correction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55e48916634355d4dd3f164851a04c2c15cd6049",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d421cc5c-bd47-5393-c13a-99fa165a87fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a427d4fa-38eb-dfc8-cc2a-b16f2977ea8f",
  "kind": "theorem",
  "lexical_name": "integral_correction",
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
  "slug": "integral-correction--ab96a02dc006ddb63e18baa7",
  "source": {
    "blob": "55e48916634355d4dd3f164851a04c2c15cd6049",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab96a02dc006ddb63e18baa7aceaf8a9b1e635c563a9dd1556fef4f7c4b52279",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a427d4fa-38eb-dfc8-cc2a-b16f2977ea8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_correction
    (s : ℂ) (hs : 0 < s.re) :
    (∫ A in Ioi (1 : ℝ),
      Complex.exp (-s * A) *
        (normalizationPolynomial A : ℂ)) =
      correctionKernel s := by
  have h17 :=
    (kernelIntegrand_integrable 17 s hs).const_mul
      ((65536 / 109395 : ℂ) / 16)
  have h15 :=
    (kernelIntegrand_integrable 15 s hs).const_mul
      ((131072 / 45045 : ℂ) / 2)
  have h13 :=
    (kernelIntegrand_integrable 13 s hs).const_mul
      (196608 / 5005 : ℂ)
  have hsum :
      IntegrableOn
        (fun A : ℝ ↦
          (65536 / 109395 : ℂ) / 16 *
              kernelIntegrand 17 s A +
            (131072 / 45045 : ℂ) / 2 *
              kernelIntegrand 15 s A)
        (Ioi 1) :=
    h17.add h15
  simp_rw [weighted_correction_eq]
  rw [integral_add hsum h13, integral_add h17 h15]
  simp_rw [integral_const_mul]
  have hJ17 :
      (∫ A in Ioi (1 : ℝ), kernelIntegrand 17 s A) =
        J 17 s := by
    simpa [JIntegral, kernelIntegrand] using
      (j_integral_obligation 17 s hs).2
  have hJ15 :
      (∫ A in Ioi (1 : ℝ), kernelIntegrand 15 s A) =
        J 15 s := by
    simpa [JIntegral, kernelIntegrand] using
      (j_integral_obligation 15 s hs).2
  have hJ13 :
      (∫ A in Ioi (1 : ℝ), kernelIntegrand 13 s A) =
        J 13 s := by
    simpa [JIntegral, kernelIntegrand] using
      (j_integral_obligation 13 s hs).2
  rw [hJ17, hJ15, hJ13]
  rfl

/-- The finite correction is analytic at every nonzero complex parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variantf11269cb752da37300582d1cc15850ad8a6aa261a8c792a4c98d3c5cac5cfed1.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55e48916634355d4dd3f164851a04c2c15cd6049` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
