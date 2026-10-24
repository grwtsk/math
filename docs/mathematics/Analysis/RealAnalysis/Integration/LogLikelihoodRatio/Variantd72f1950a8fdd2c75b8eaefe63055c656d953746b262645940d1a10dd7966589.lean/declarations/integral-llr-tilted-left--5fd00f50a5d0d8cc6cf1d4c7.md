# integral_llr_tilted_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b84111cc-8df6-58d0-20e3-a925af933e43",
  "kind": "lemma",
  "lexical_name": "integral_llr_tilted_left",
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
  "slug": "integral-llr-tilted-left--5fd00f50a5d0d8cc6cf1d4c7",
  "source": {
    "blob": "37b2870c80644f23843895c114b78276809ab931",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fd00f50a5d0d8cc6cf1d4c7fc9d53cd48dd4acf7246bb442aa6333594ba1ea7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b84111cc-8df6-58d0-20e3-a925af933e43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_llr_tilted_left [IsProbabilityMeasure μ] [SigmaFinite ν]
    (hμν : μ ≪ ν) (hf : Integrable f μ) (h_int : Integrable (llr μ ν) μ)
    (hfμ : Integrable (fun x ↦ exp (f x)) μ) (hfν : AEMeasurable f ν) :
    ∫ x, llr (μ.tilted f) ν x ∂μ = ∫ x, llr μ ν x ∂μ + ∫ x, f x ∂μ - log (∫ x, exp (f x) ∂μ) := by
  calc ∫ x, llr (μ.tilted f) ν x ∂μ
    = ∫ x, f x - log (∫ x, exp (f x) ∂μ) + llr μ ν x ∂μ :=
        integral_congr_ae (llr_tilted_left hμν hfμ hfν)
  _ = ∫ x, f x ∂μ - log (∫ x, exp (f x) ∂μ) + ∫ x, llr μ ν x ∂μ := by
        rw [integral_add ?_ h_int]
        swap; · exact hf.sub (integrable_const _)
        rw [integral_sub hf (integrable_const _)]
        simp only [integral_const, measureReal_univ_eq_one, smul_eq_mul, one_mul]
  _ = ∫ x, llr μ ν x ∂μ + ∫ x, f x ∂μ - log (∫ x, exp (f x) ∂μ) := by abel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantd72f1950a8fdd2c75b8eaefe63055c656d953746b262645940d1a10dd7966589.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37b2870c80644f23843895c114b78276809ab931` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
