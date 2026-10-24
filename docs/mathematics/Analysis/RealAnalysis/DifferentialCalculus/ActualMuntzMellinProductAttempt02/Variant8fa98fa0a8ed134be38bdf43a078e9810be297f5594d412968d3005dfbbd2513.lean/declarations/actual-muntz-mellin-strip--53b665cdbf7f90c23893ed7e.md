# actual_muntz_mellin_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be4a61e4-bd4a-bb4d-1b5b-90e8ce7a999a",
  "kind": "theorem",
  "lexical_name": "actual_muntz_mellin_strip",
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
  "slug": "actual-muntz-mellin-strip--53b665cdbf7f90c23893ed7e",
  "source": {
    "blob": "da52e52fa999a7a1406570e12c0dfc6a42f78240",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53b665cdbf7f90c23893ed7ecae68b5b61dadb180a0e79ee288e2295dce1a72c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be4a61e4-bd4a-bb4d-1b5b-90e8ce7a999a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_muntz_mellin_strip {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hs0 : 0 < s.re) (hs1 : s.re < 1) :
    mellin (complexMuntz A) s = riemannZeta s * mellin (complexSource A) s := by
  apply actual_muntz_mellin_product hA hs0
  intro hh
  simp [hh] at hs1

end ContinuousResearch.ActualMuntzMellinProduct

/- Exact public type, proof and trusted dependency audits. -/

#check ContinuousResearch.ActualMuntzMellinProduct.positiveHalfplane_isPreconnected
#print axioms ContinuousResearch.ActualMuntzMellinProduct.positiveHalfplane_isPreconnected
#print ContinuousResearch.ActualMuntzMellinProduct.positiveHalfplane_isPreconnected

#check ContinuousResearch.ActualMuntzMellinProduct.regularized_left_analytic
#print axioms ContinuousResearch.ActualMuntzMellinProduct.regularized_left_analytic
#print ContinuousResearch.ActualMuntzMellinProduct.regularized_left_analytic

#check ContinuousResearch.ActualMuntzMellinProduct.regularized_right_differentiable
#print axioms ContinuousResearch.ActualMuntzMellinProduct.regularized_right_differentiable
#print ContinuousResearch.ActualMuntzMellinProduct.regularized_right_differentiable

#check ContinuousResearch.ActualMuntzMellinProduct.regularized_product_in_dirichlet
#print axioms ContinuousResearch.ActualMuntzMellinProduct.regularized_product_in_dirichlet
#print ContinuousResearch.ActualMuntzMellinProduct.regularized_product_in_dirichlet

#check ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_regularized
#print axioms ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_regularized
#print ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_regularized

#check ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_product
#print axioms ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_product
#print ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_product

#check ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_strip
#print axioms ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_strip
#print ContinuousResearch.ActualMuntzMellinProduct.actual_muntz_mellin_strip
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinProductAttempt02/Variant8fa98fa0a8ed134be38bdf43a078e9810be297f5594d412968d3005dfbbd2513.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da52e52fa999a7a1406570e12c0dfc6a42f78240` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
