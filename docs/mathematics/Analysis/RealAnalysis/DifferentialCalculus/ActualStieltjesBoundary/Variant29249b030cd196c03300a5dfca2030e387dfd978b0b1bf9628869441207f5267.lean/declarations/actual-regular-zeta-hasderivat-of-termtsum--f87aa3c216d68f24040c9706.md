# actual_regular_zeta_hasDerivAt_of_termTSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ff19bf5-132e-b203-fb95-83ebbbd73017",
  "kind": "theorem",
  "lexical_name": "actual_regular_zeta_hasDerivAt_of_termTSum",
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
  "slug": "actual-regular-zeta-hasderivat-of-termtsum--f87aa3c216d68f24040c9706",
  "source": {
    "blob": "25658903cd7af540c3a1df52b78b230db9ab8e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant29249b030cd196c03300a5dfca2030e387dfd978b0b1bf9628869441207f5267.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f87aa3c216d68f24040c970647c269be666b77430c214c793f45255cd327da01",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant29249b030cd196c03300a5dfca2030e387dfd978b0b1bf9628869441207f5267.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ff19bf5-132e-b203-fb95-83ebbbd73017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_regular_zeta_hasDerivAt_of_termTSum
    (hF : HasDerivAt ZetaAsymptotics.termTSum
      (Real.eulerMascheroniConstant+firstStieltjesConstant-1) (1:ℝ)) :
    HasDerivAt riemannZeta₀ (-(firstStieltjesConstant:ℂ)) (1:ℂ) := by
  have hz := (differentiable_riemannZeta₀ (1:ℂ)).hasDerivAt
  rwa [actual_regular_zeta_derivative_of_termTSum hF] at hz

end ContinuousResearch.ActualStieltjesBoundary

#check ContinuousResearch.ActualStieltjesBoundary.actual_termTSum_one
#print axioms ContinuousResearch.ActualStieltjesBoundary.actual_termTSum_one
#print ContinuousResearch.ActualStieltjesBoundary.actual_termTSum_one

#check ContinuousResearch.ActualStieltjesBoundary.actual_regular_zeta_real_right
#print axioms ContinuousResearch.ActualStieltjesBoundary.actual_regular_zeta_real_right
#print ContinuousResearch.ActualStieltjesBoundary.actual_regular_zeta_real_right

#check ContinuousResearch.ActualStieltjesBoundary.actual_real_regular_derivative_of_termTSum
#print axioms ContinuousResearch.ActualStieltjesBoundary.actual_real_regular_derivative_of_termTSum
#print ContinuousResearch.ActualStieltjesBoundary.actual_real_regular_derivative_of_termTSum

#check ContinuousResearch.ActualStieltjesBoundary.actual_regular_zeta_derivative_of_termTSum
#print axioms ContinuousResearch.ActualStieltjesBoundary.actual_regular_zeta_derivative_of_termTSum
#print ContinuousResearch.ActualStieltjesBoundary.actual_regular_zeta_derivative_of_termTSum

#check ContinuousResearch.ActualStieltjesBoundary.actual_regular_zeta_hasDerivAt_of_termTSum
#print axioms ContinuousResearch.ActualStieltjesBoundary.actual_regular_zeta_hasDerivAt_of_termTSum
#print ContinuousResearch.ActualStieltjesBoundary.actual_regular_zeta_hasDerivAt_of_termTSum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant29249b030cd196c03300a5dfca2030e387dfd978b0b1bf9628869441207f5267.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant29249b030cd196c03300a5dfca2030e387dfd978b0b1bf9628869441207f5267.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25658903cd7af540c3a1df52b78b230db9ab8e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
