# sourceCorrelation_deriv_increment_bound_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a920827a-fc01-c920-883f-7e568d7c5231",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_deriv_increment_bound_tail",
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
  "slug": "sourcecorrelation-deriv-increment-bound-tail--c1fa5e3e921b6f0e6ecd1735",
  "source": {
    "blob": "586c016114706d80eff6afbcc3344d08ca816c2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variante2930c3e6327b839516dbae67af38e9e8d1ccf3abff7e737f802c696ab49d828.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1fa5e3e921b6f0e6ecd1735f385df627787d84efc302a1287b4610446df208b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variante2930c3e6327b839516dbae67af38e9e8d1ccf3abff7e737f802c696ab49d828.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a920827a-fc01-c920-883f-7e568d7c5231`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_deriv_increment_bound_tail {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) (a y : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) (a + y) -
      deriv (sourceCorrelation explicitSecondDerivative A) a| ≤
      tailEnergyCoefficient Q / A ^ 2 * |y| := by
  have hA : 1 ≤ A := hQ.trans hQA
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have h := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := deriv (sourceCorrelation explicitSecondDerivative A))
    (fun x _ ↦ (sourceCorrelation_deriv_contDiff hp).differentiable (by norm_num) x)
    (fun x _ ↦ by simpa only [Real.norm_eq_abs] using
      actual_correlation_second_deriv_abs_le_tail hQ hQA x)
    convex_univ (mem_univ a) (mem_univ (a + y))
  simpa only [Real.norm_eq_abs, add_sub_cancel_left] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variante2930c3e6327b839516dbae67af38e9e8d1ccf3abff7e737f802c696ab49d828.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceExactSamplingTail/Variante2930c3e6327b839516dbae67af38e9e8d1ccf3abff7e737f802c696ab49d828.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `586c016114706d80eff6afbcc3344d08ca816c2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
