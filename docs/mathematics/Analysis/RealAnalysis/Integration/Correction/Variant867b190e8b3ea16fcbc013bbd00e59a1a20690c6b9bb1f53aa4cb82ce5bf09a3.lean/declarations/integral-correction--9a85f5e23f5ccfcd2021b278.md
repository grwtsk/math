# integral_correction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c19c757e-7782-4c9c-b166-a83e09300551",
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
  "slug": "integral-correction--9a85f5e23f5ccfcd2021b278",
  "source": {
    "blob": "e7826ef9fdd8d2e2277066b91a63c32323477813",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 142,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a85f5e23f5ccfcd2021b278e12f6f2f30823dfa147d68452c95c36b1fb566fd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c19c757e-7782-4c9c-b166-a83e09300551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–187.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Correction/Variant867b190e8b3ea16fcbc013bbd00e59a1a20690c6b9bb1f53aa4cb82ce5bf09a3.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7826ef9fdd8d2e2277066b91a63c32323477813` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
