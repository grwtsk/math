# actualProfile_deriv_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:117cf941-7632-d967-b3c7-dc163d10d0fd",
  "kind": "theorem",
  "lexical_name": "actualProfile_deriv_zero",
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
  "slug": "actualprofile-deriv-zero--1b22741a3a2265df844f9cc8",
  "source": {
    "blob": "21d83efdc4b30195703e97c3fa59fb77ebba3961",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 287,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variant9be0c4c075d35da515244853e67b5c564187ab60186a694c92fcea5d9e7e0362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b22741a3a2265df844f9cc8b5a0d83f0cba0b17eddeb9485ce697cc36ee82c7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variant9be0c4c075d35da515244853e67b5c564187ab60186a694c92fcea5d9e7e0362.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:117cf941-7632-d967-b3c7-dc163d10d0fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualProfile_deriv_zero : deriv actualProfile 0 = 0 :=
  actualProfile_hasDerivAt_zero.deriv

end ContinuousResearch.CompensatedGammaProfile

#check ContinuousResearch.CompensatedGammaProfile.log_argument_pos
#check ContinuousResearch.CompensatedGammaProfile.term_nonneg
#check ContinuousResearch.CompensatedGammaProfile.compensated_log_le_square_half
#check ContinuousResearch.CompensatedGammaProfile.compensated_log_le_square_div
#check ContinuousResearch.CompensatedGammaProfile.term_nonneg_upper
#check ContinuousResearch.CompensatedGammaProfile.term_negative_compact_upper
#check ContinuousResearch.CompensatedGammaProfile.log_factorial
#check ContinuousResearch.CompensatedGammaProfile.partialProfile_eq_harmonic
#check ContinuousResearch.CompensatedGammaProfile.logarithm_split
#check ContinuousResearch.CompensatedGammaProfile.partialProfile_gammaSeq
#check ContinuousResearch.CompensatedGammaProfile.partialProfile_tendsto_actual_gamma
#check ContinuousResearch.CompensatedGammaProfile.hasSum_actual_gamma
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_zero
#check ContinuousResearch.CompensatedGammaProfile.term_summable
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_eq_tsum
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_nonneg
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_prefix_tail
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_sub_prefix_nonneg
#check ContinuousResearch.CompensatedGammaProfile.inverse_square_tail_le
#check ContinuousResearch.CompensatedGammaProfile.inverse_square_tail_summable
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_positive_tail
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_negative_tail
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_negative_compact_uniform
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_convex
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_hasDerivAt_zero
#check ContinuousResearch.CompensatedGammaProfile.actualProfile_deriv_zero
#print axioms ContinuousResearch.CompensatedGammaProfile.log_argument_pos
#print axioms ContinuousResearch.CompensatedGammaProfile.term_nonneg
#print axioms ContinuousResearch.CompensatedGammaProfile.compensated_log_le_square_half
#print axioms ContinuousResearch.CompensatedGammaProfile.compensated_log_le_square_div
#print axioms ContinuousResearch.CompensatedGammaProfile.term_nonneg_upper
#print axioms ContinuousResearch.CompensatedGammaProfile.term_negative_compact_upper
#print axioms ContinuousResearch.CompensatedGammaProfile.log_factorial
#print axioms ContinuousResearch.CompensatedGammaProfile.partialProfile_eq_harmonic
#print axioms ContinuousResearch.CompensatedGammaProfile.logarithm_split
#print axioms ContinuousResearch.CompensatedGammaProfile.partialProfile_gammaSeq
#print axioms ContinuousResearch.CompensatedGammaProfile.partialProfile_tendsto_actual_gamma
#print axioms ContinuousResearch.CompensatedGammaProfile.hasSum_actual_gamma
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_zero
#print axioms ContinuousResearch.CompensatedGammaProfile.term_summable
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_eq_tsum
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_nonneg
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_prefix_tail
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_sub_prefix_nonneg
#print axioms ContinuousResearch.CompensatedGammaProfile.inverse_square_tail_le
#print axioms ContinuousResearch.CompensatedGammaProfile.inverse_square_tail_summable
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_positive_tail
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_negative_tail
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_negative_compact_uniform
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_convex
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_hasDerivAt_zero
#print axioms ContinuousResearch.CompensatedGammaProfile.actualProfile_deriv_zero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variant9be0c4c075d35da515244853e67b5c564187ab60186a694c92fcea5d9e7e0362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CompensatedGammaProfile/Variant9be0c4c075d35da515244853e67b5c564187ab60186a694c92fcea5d9e7e0362.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21d83efdc4b30195703e97c3fa59fb77ebba3961` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
