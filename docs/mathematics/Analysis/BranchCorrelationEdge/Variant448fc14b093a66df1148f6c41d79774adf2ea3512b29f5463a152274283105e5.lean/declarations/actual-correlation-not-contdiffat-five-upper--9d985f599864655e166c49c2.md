# actual_correlation_not_contDiffAt_five_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f93312c1-0b54-ddfe-2f0d-3a605aed72ee",
  "kind": "theorem",
  "lexical_name": "actual_correlation_not_contDiffAt_five_upper",
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
  "slug": "actual-correlation-not-contdiffat-five-upper--9d985f599864655e166c49c2",
  "source": {
    "blob": "7a3a4701cef8979e811839c42115da9add5faef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 282,
    "path": "GRWTSK/Analysis/BranchCorrelationEdge/Variant448fc14b093a66df1148f6c41d79774adf2ea3512b29f5463a152274283105e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d985f599864655e166c49c28a9a9b0099ea616f4dcde15413149f3af11ae52f",
  "verification": {
    "reference": "docs/verification/Analysis/BranchCorrelationEdge/Variant448fc14b093a66df1148f6c41d79774adf2ea3512b29f5463a152274283105e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f93312c1-0b54-ddfe-2f0d-3a605aed72ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_not_contDiffAt_five_upper {A : ℝ} (hA : 0 < A) :
    ¬ ContDiffAt ℝ 5 (sourceCorrelation explicitSecondDerivative A) (2 * A) := by
  intro hc
  have hc' : ContDiffAt ℝ 5 (sourceCorrelation explicitSecondDerivative A)
      (2 * A - (0 : ℝ)) := by simpa using hc
  have hi : ContDiffAt ℝ 5 (fun y : ℝ ↦ 2 * A - y) 0 := by fun_prop
  have hg : ContDiffAt ℝ 5
      (fun y ↦ sourceCorrelation explicitSecondDerivative A (2 * A - y)) 0 := by
    exact hc'.comp (x := (0 : ℝ)) hi
  have hi := actual_inward_fifth_jet hA
  have ho := actual_outward_fifth_jet hA
  rw [iteratedDerivWithin_eq_iteratedDeriv (uniqueDiffOn_Icc (by linarith : 0 < 2 * A))
    hg (show (0 : ℝ) ∈ Icc 0 (2 * A) by constructor <;> linarith)] at hi
  rw [iteratedDerivWithin_eq_iteratedDeriv (uniqueDiffOn_Iic (0 : ℝ))
    hg (show (0 : ℝ) ∈ Iic 0 by simp)] at ho
  have hz : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  have hp : 0 < 147456 / (A ^ 9 * sourceNormalization A) := by positivity
  linarith

/-- Global C⁵ is consequently impossible for this unchanged positive-scale source correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchCorrelationEdge/Variant448fc14b093a66df1148f6c41d79774adf2ea3512b29f5463a152274283105e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchCorrelationEdge/Variant448fc14b093a66df1148f6c41d79774adf2ea3512b29f5463a152274283105e5.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a3a4701cef8979e811839c42115da9add5faef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
