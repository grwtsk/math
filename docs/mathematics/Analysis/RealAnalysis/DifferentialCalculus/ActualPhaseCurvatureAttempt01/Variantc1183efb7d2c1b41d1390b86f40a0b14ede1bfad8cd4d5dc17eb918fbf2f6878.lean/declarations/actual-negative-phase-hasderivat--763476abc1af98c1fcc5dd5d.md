# actual_negative_phase_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f528532a-73f8-204a-340a-cf3a4ffadad2",
  "kind": "theorem",
  "lexical_name": "actual_negative_phase_hasDerivAt",
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
  "slug": "actual-negative-phase-hasderivat--763476abc1af98c1fcc5dd5d",
  "source": {
    "blob": "025d49188981db7cceb3e1be1d8638f7ed17c308",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvatureAttempt01/Variantc1183efb7d2c1b41d1390b86f40a0b14ede1bfad8cd4d5dc17eb918fbf2f6878.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:763476abc1af98c1fcc5dd5df24669ae89f8da1f07eb5cfd38a78991277e02d0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvatureAttempt01/Variantc1183efb7d2c1b41d1390b86f40a0b14ede1bfad8cd4d5dc17eb918fbf2f6878.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f528532a-73f8-204a-340a-cf3a4ffadad2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_negative_phase_hasDerivAt {A u : ℝ} (hA : 1≤A)
    (hu : deriv (criticalPrimeTest A) u<0) :
    HasDerivAt (deriv (pairedTailTest A))
      (-(positiveMass A/negativeMass A)*deriv (deriv (criticalPrimeTest A)) u) u := by
  have hp : 0<A := by linarith
  have hc := (criticalPrimeTest_contDiff_two hp).deriv'
  have hd := (hc.differentiable (by norm_num) u).hasDerivAt
  have he := hc.continuous.continuousAt.eventually (gt_mem_nhds hu)
  apply (hd.const_mul (-(positiveMass A/negativeMass A))).congr_of_eventuallyEq
  filter_upwards [he] with x hx
  rw [pairedTailTest_deriv hA]
  simp only [positiveSlope,negativeSlope,max_eq_right hx.le,
    max_eq_left (neg_nonneg.mpr hx.le)]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvatureAttempt01/Variantc1183efb7d2c1b41d1390b86f40a0b14ede1bfad8cd4d5dc17eb918fbf2f6878.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPhaseCurvatureAttempt01/Variantc1183efb7d2c1b41d1390b86f40a0b14ede1bfad8cd4d5dc17eb918fbf2f6878.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `025d49188981db7cceb3e1be1d8638f7ed17c308` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
