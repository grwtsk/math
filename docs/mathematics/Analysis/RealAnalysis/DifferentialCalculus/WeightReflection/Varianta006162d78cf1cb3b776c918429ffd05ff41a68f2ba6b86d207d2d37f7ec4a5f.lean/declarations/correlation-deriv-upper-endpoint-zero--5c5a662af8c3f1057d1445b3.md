# correlation_deriv_upper_endpoint_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68059174-4691-21d1-7a79-252b7b5d6c31",
  "kind": "theorem",
  "lexical_name": "correlation_deriv_upper_endpoint_zero",
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
  "slug": "correlation-deriv-upper-endpoint-zero--5c5a662af8c3f1057d1445b3",
  "source": {
    "blob": "bbe6847c3e4e59db5b921b8bb0dfce5d02a509f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c5a662af8c3f1057d1445b3e7a0824583441a7094bc900db09f2e7cdd661501",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68059174-4691-21d1-7a79-252b7b5d6c31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlation_deriv_upper_endpoint_zero (r : DilationRealization)
    (A : Set.Ici (1 : ℝ)) :
    deriv (sourceCorrelation r.secondDerivative A) (2 * A) = 0 := by
  have hc := ((contDiff_one_iff_deriv.mp (r.correlation_regular A A.property)).1
    (2 * (A : ℝ))).hasDerivAt.hasDerivWithinAt (s := Set.Ici (2 * (A : ℝ)))
  have hz : HasDerivWithinAt (sourceCorrelation r.secondDerivative A) 0
      (Set.Ici (2 * (A : ℝ))) (2 * A) :=
    (hasDerivWithinAt_const (2 * (A : ℝ)) (Set.Ici (2 * (A : ℝ))) (0 : ℝ)).congr
      (fun t ht ↦ correlation_zero_to_right r A t ht)
      (correlation_upper_endpoint_zero r A)
  exact (uniqueDiffWithinAt_Ici (2 * (A : ℝ))).eq_deriv _ hc hz

/-- The source weight also vanishes at the upper endpoint, including its derivative term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbe6847c3e4e59db5b921b8bb0dfce5d02a509f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
