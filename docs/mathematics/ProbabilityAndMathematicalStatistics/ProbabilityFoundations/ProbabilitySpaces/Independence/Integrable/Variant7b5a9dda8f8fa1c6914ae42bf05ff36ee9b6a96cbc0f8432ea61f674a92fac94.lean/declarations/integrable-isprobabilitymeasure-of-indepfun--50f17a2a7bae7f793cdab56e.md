# Integrable.isProbabilityMeasure_of_indepFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2af36d81-0583-4e61-207e-e9cf3ee336d9",
  "kind": "lemma",
  "lexical_name": "Integrable.isProbabilityMeasure_of_indepFun",
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
  "slug": "integrable-isprobabilitymeasure-of-indepfun--50f17a2a7bae7f793cdab56e",
  "source": {
    "blob": "d13e24dfe684c670f0dd0e15c42bfb899917b0cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 60,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Integrable/Variant7b5a9dda8f8fa1c6914ae42bf05ff36ee9b6a96cbc0f8432ea61f674a92fac94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50f17a2a7bae7f793cdab56ebb2723743add363885a6f3eea3a5f75d3c40e714",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Integrable/Variant7b5a9dda8f8fa1c6914ae42bf05ff36ee9b6a96cbc0f8432ea61f674a92fac94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2af36d81-0583-4e61-207e-e9cf3ee336d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Integrable.isProbabilityMeasure_of_indepFun (f : Ω → E) (g : Ω → F)
    (hf : Integrable f μ) (h'f : ¬ (∀ᵐ ω ∂μ, f ω = 0)) (hindep : IndepFun f g μ) :
    IsProbabilityMeasure μ :=
  MemLp.isProbabilityMeasure_of_indepFun f g one_ne_zero ENNReal.one_ne_top
    (memLp_one_iff_integrable.mpr hf) h'f hindep

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Integrable/Variant7b5a9dda8f8fa1c6914ae42bf05ff36ee9b6a96cbc0f8432ea61f674a92fac94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Integrable/Variant7b5a9dda8f8fa1c6914ae42bf05ff36ee9b6a96cbc0f8432ea61f674a92fac94.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d13e24dfe684c670f0dd0e15c42bfb899917b0cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
