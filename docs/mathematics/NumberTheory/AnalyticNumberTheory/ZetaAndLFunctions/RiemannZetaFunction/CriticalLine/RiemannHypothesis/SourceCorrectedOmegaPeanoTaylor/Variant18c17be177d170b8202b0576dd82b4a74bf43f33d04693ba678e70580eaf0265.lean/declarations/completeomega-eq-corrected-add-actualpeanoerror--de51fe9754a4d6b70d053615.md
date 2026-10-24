# completeOmega_eq_corrected_add_actualPeanoError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ed8e2cd-4562-980b-e8e1-c7340dd5c315",
  "kind": "theorem",
  "lexical_name": "completeOmega_eq_corrected_add_actualPeanoError",
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
  "slug": "completeomega-eq-corrected-add-actualpeanoerror--de51fe9754a4d6b70d053615",
  "source": {
    "blob": "1648393d60a12f4475166614b71a9e91cad26759",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedOmegaPeanoTaylor/Variant18c17be177d170b8202b0576dd82b4a74bf43f33d04693ba678e70580eaf0265.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de51fe9754a4d6b70d05361544b1540228ad9fc11c7f85d5b5c9c763b372e91a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedOmegaPeanoTaylor/Variant18c17be177d170b8202b0576dd82b4a74bf43f33d04693ba678e70580eaf0265.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ed8e2cd-4562-980b-e8e1-c7340dd5c315`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeOmega_eq_corrected_add_actualPeanoError (A : ℝ) (hA : 1 ≤ A) :
    completeOmega A = correctedCompleteOmega A + actualPeanoCubicError A := by
  rw [completeOmega_eq_actual_signed_Peano_kappa A hA]
  unfold actualSignedPeanoKappaShortSector correctedCompleteOmega actualPeanoCubicError
  have hs :
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
        (actualLocalPeanoProfile A (Real.log (d : ℝ)) +
          actualFourKappaJet A (Real.log (d : ℝ)))) =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
        correctedFourKappaJet A (Real.log (d : ℝ))) +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d / Real.sqrt (d : ℝ) *
        actualPeanoCubicRemainder A (Real.log (d : ℝ))) := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro d _
    unfold correctedFourKappaJet actualPeanoCubicRemainder
    ring
  rw [hs]
  ring

/-- A separately proved actual row remainder bound costs exactly 640*67/A^3. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedOmegaPeanoTaylor/Variant18c17be177d170b8202b0576dd82b4a74bf43f33d04693ba678e70580eaf0265.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedOmegaPeanoTaylor/Variant18c17be177d170b8202b0576dd82b4a74bf43f33d04693ba678e70580eaf0265.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1648393d60a12f4475166614b71a9e91cad26759` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
