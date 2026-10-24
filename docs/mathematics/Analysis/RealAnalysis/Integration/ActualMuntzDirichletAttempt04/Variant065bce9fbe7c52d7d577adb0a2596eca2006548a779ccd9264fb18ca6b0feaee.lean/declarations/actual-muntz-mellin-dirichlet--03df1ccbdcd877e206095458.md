# actual_muntz_mellin_dirichlet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:463f0e54-e238-e1d1-0eae-5f2127356f6e",
  "kind": "theorem",
  "lexical_name": "actual_muntz_mellin_dirichlet",
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
  "slug": "actual-muntz-mellin-dirichlet--03df1ccbdcd877e206095458",
  "source": {
    "blob": "fb36b881d9bf7fbd21cd902d3f447265b71a46a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03df1ccbdcd877e206095458b56683e6d263bb11b3aec99eb4f073eeaeb1055e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:463f0e54-e238-e1d1-0eae-5f2127356f6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_muntz_mellin_dirichlet {A : ℝ} (hA : 1 ≤ A) {s : ℂ} (hs : 1 < s.re) :
    mellin (complexMuntz A) s = riemannZeta s * mellin (complexSource A) s := by
  have hi := integral_tsum_of_summable_integral_norm
    (fun n => weightedSample_integrable (by linarith : 0 < A) s n)
    (weightedSample_norm_integrals_summable s hs (A := A))
  simp_rw [weightedSample_integral,weightedSample_tsum hA] at hi
  rw [tsum_mul_right,← zeta_eq_tsum_one_div_nat_add_one_cpow hs] at hi
  exact hi.symm

end ContinuousResearch.ActualMuntzDirichlet

/- Exact public type, proof and trusted dependency audits. -/

#check ContinuousResearch.ActualMuntzDirichlet.weightedSample
#print axioms ContinuousResearch.ActualMuntzDirichlet.weightedSample
#print ContinuousResearch.ActualMuntzDirichlet.weightedSample

#check ContinuousResearch.ActualMuntzDirichlet.sourceNormMoment
#print axioms ContinuousResearch.ActualMuntzDirichlet.sourceNormMoment
#print ContinuousResearch.ActualMuntzDirichlet.sourceNormMoment

#check ContinuousResearch.ActualMuntzDirichlet.weightedSample_integrable
#print axioms ContinuousResearch.ActualMuntzDirichlet.weightedSample_integrable
#print ContinuousResearch.ActualMuntzDirichlet.weightedSample_integrable

#check ContinuousResearch.ActualMuntzDirichlet.weightedSample_norm
#print axioms ContinuousResearch.ActualMuntzDirichlet.weightedSample_norm
#print ContinuousResearch.ActualMuntzDirichlet.weightedSample_norm

#check ContinuousResearch.ActualMuntzDirichlet.weightedSample_norm_integral
#print axioms ContinuousResearch.ActualMuntzDirichlet.weightedSample_norm_integral
#print ContinuousResearch.ActualMuntzDirichlet.weightedSample_norm_integral

#check ContinuousResearch.ActualMuntzDirichlet.weightedSample_norm_integrals_summable
#print axioms ContinuousResearch.ActualMuntzDirichlet.weightedSample_norm_integrals_summable
#print ContinuousResearch.ActualMuntzDirichlet.weightedSample_norm_integrals_summable

#check ContinuousResearch.ActualMuntzDirichlet.complexMuntz_eq_tsum
#print axioms ContinuousResearch.ActualMuntzDirichlet.complexMuntz_eq_tsum
#print ContinuousResearch.ActualMuntzDirichlet.complexMuntz_eq_tsum

#check ContinuousResearch.ActualMuntzDirichlet.weightedSample_tsum
#print axioms ContinuousResearch.ActualMuntzDirichlet.weightedSample_tsum
#print ContinuousResearch.ActualMuntzDirichlet.weightedSample_tsum

#check ContinuousResearch.ActualMuntzDirichlet.weightedSample_integral
#print axioms ContinuousResearch.ActualMuntzDirichlet.weightedSample_integral
#print ContinuousResearch.ActualMuntzDirichlet.weightedSample_integral

#check ContinuousResearch.ActualMuntzDirichlet.actual_muntz_mellin_dirichlet
#print axioms ContinuousResearch.ActualMuntzDirichlet.actual_muntz_mellin_dirichlet
#print ContinuousResearch.ActualMuntzDirichlet.actual_muntz_mellin_dirichlet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzDirichletAttempt04/Variant065bce9fbe7c52d7d577adb0a2596eca2006548a779ccd9264fb18ca6b0feaee.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb36b881d9bf7fbd21cd902d3f447265b71a46a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
