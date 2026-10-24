# psiRelativeError_first_moment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9bcd7b7-d3ba-f151-62ae-bc1854af75b2",
  "kind": "theorem",
  "lexical_name": "psiRelativeError_first_moment_integrable",
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
  "slug": "psirelativeerror-first-moment-integrable--3eb726ba44dce88335be8280",
  "source": {
    "blob": "c60fa98e9f8ab85edcd7cb03bf18c813016a7504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 91,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3eb726ba44dce88335be8280eb0a4a42be0b1855d44298ba31ed85b146c0737a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9bcd7b7-d3ba-f151-62ae-bc1854af75b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psiRelativeError_first_moment_integrable :
    IntegrableOn (fun t : ℝ => t * psiRelativeError t) (Ioi (0:ℝ)) := by
  simpa using psiRelativeError_mul_pow_integrable 1

end ContinuousResearch.MediumPNTMoment
set_option pp.fullNames true
set_option pp.universes true
#check ContinuousResearch.MediumPNTMoment.psiRelativeError_measurable
#print axioms ContinuousResearch.MediumPNTMoment.psiRelativeError_measurable
#print ContinuousResearch.MediumPNTMoment.psiRelativeError_measurable
#check ContinuousResearch.MediumPNTMoment.psiRelativeError_bound
#print axioms ContinuousResearch.MediumPNTMoment.psiRelativeError_bound
#print ContinuousResearch.MediumPNTMoment.psiRelativeError_bound
#check ContinuousResearch.MediumPNTMoment.psiRelativeError_mul_pow_integrable
#print axioms ContinuousResearch.MediumPNTMoment.psiRelativeError_mul_pow_integrable
#print ContinuousResearch.MediumPNTMoment.psiRelativeError_mul_pow_integrable
#check ContinuousResearch.MediumPNTMoment.psiRelativeError_integrable
#print axioms ContinuousResearch.MediumPNTMoment.psiRelativeError_integrable
#print ContinuousResearch.MediumPNTMoment.psiRelativeError_integrable
#check ContinuousResearch.MediumPNTMoment.psiRelativeError_first_moment_integrable
#print axioms ContinuousResearch.MediumPNTMoment.psiRelativeError_first_moment_integrable
#print ContinuousResearch.MediumPNTMoment.psiRelativeError_first_moment_integrable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MediumPNTMomentAttempt01/Variantb1e92a617173b678747062ad6075364a2aba123c96529e5417711722f56c8089.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c60fa98e9f8ab85edcd7cb03bf18c813016a7504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
