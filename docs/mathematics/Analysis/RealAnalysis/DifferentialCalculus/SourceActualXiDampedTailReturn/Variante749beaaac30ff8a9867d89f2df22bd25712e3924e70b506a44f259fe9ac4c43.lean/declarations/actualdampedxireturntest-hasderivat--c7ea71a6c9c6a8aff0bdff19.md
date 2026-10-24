# actualDampedXiReturnTest_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be8f62a0-24e6-8527-2ac6-f32521064fcd",
  "kind": "theorem",
  "lexical_name": "actualDampedXiReturnTest_hasDerivAt",
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
  "slug": "actualdampedxireturntest-hasderivat--c7ea71a6c9c6a8aff0bdff19",
  "source": {
    "blob": "41108123506975e017cc31b8ecfd5afe17cfd62e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variante749beaaac30ff8a9867d89f2df22bd25712e3924e70b506a44f259fe9ac4c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7ea71a6c9c6a8aff0bdff19b0643b628a811a0095fb8f660332a7643dbbba7d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variante749beaaac30ff8a9867d89f2df22bd25712e3924e70b506a44f259fe9ac4c43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be8f62a0-24e6-8527-2ac6-f32521064fcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDampedXiReturnTest_hasDerivAt (A t : ℝ) (hA : 0 < A) :
    HasDerivAt (actualDampedXiReturnTest A) (actualDampedXiReturnDensity A t) t := by
  have hc := actual_correlation_contDiff_four A hA
  have h2 : HasDerivAt (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) t) t := by
    simpa only [iteratedDeriv_succ] using
      ((hc.differentiable_iteratedDeriv 2 (by norm_num)) t).hasDerivAt
  have h1 : HasDerivAt (deriv (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t) t := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      ((hc.differentiable_iteratedDeriv 1 (by norm_num)) t).hasDerivAt
  have he := (((hasDerivAt_id t).div_const (2 : ℝ)).exp)
  convert he.mul (h2.sub (h1.div_const 2)) using 1 <;> try rfl
  simp only [id_eq, Pi.sub_apply]
  unfold actualDampedXiReturnDensity
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variante749beaaac30ff8a9867d89f2df22bd25712e3924e70b506a44f259fe9ac4c43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiDampedTailReturn/Variante749beaaac30ff8a9867d89f2df22bd25712e3924e70b506a44f259fe9ac4c43.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41108123506975e017cc31b8ecfd5afe17cfd62e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
