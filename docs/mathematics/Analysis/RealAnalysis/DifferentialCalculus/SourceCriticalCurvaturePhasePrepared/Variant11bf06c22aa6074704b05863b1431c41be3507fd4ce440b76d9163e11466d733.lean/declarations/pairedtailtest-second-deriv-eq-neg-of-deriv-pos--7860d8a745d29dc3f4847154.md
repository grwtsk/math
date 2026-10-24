# pairedTailTest_second_deriv_eq_neg_of_deriv_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24b2dc46-c9fc-c789-be31-7aeba4e2e4d4",
  "kind": "theorem",
  "lexical_name": "pairedTailTest_second_deriv_eq_neg_of_deriv_pos",
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
  "slug": "pairedtailtest-second-deriv-eq-neg-of-deriv-pos--7860d8a745d29dc3f4847154",
  "source": {
    "blob": "1449968f3923672438f6573976273752656b0ac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalCurvaturePhasePrepared/Variant11bf06c22aa6074704b05863b1431c41be3507fd4ce440b76d9163e11466d733.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7860d8a745d29dc3f48471541daa466eec77f6743b016ef73bf6efc0fded82ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalCurvaturePhasePrepared/Variant11bf06c22aa6074704b05863b1431c41be3507fd4ce440b76d9163e11466d733.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24b2dc46-c9fc-c789-be31-7aeba4e2e4d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedTailTest_second_deriv_eq_neg_of_deriv_pos
    {A u : ℝ} (hA : 1 ≤ A)
    (hu : 0 < deriv (criticalPrimeTest A) u) :
    deriv (deriv (pairedTailTest A)) u =
      -deriv (deriv (criticalPrimeTest A)) u := by
  have hp : 0 < A := by linarith
  have hg : ContDiff ℝ 1 (deriv (criticalPrimeTest A)) :=
    (criticalPrimeTest_contDiff_two hp).deriv'
  have hpos : ∀ᶠ v in 𝓝 u, 0 < deriv (criticalPrimeTest A) v :=
    hg.continuous.continuousAt.preimage_mem_nhds (Ioi_mem_nhds hu)
  have he : deriv (pairedTailTest A) =ᶠ[𝓝 u]
      (fun v => -deriv (criticalPrimeTest A) v) := by
    filter_upwards [hpos] with v hv
    rw [pairedTailTest_deriv hA]
    simp only [positiveSlope, negativeSlope, max_eq_left hv.le,
      max_eq_right (neg_nonpos.mpr hv.le), mul_zero, add_zero]
  have hd := ((contDiff_one_iff_deriv.mp hg).1 u).hasDerivAt
  exact (hd.neg.congr_of_eventuallyEq he).deriv

end FormalResearch.RiemannHypothesis.SourceCriticalCurvaturePhase
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalCurvaturePhasePrepared/Variant11bf06c22aa6074704b05863b1431c41be3507fd4ce440b76d9163e11466d733.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalCurvaturePhasePrepared/Variant11bf06c22aa6074704b05863b1431c41be3507fd4ce440b76d9163e11466d733.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1449968f3923672438f6573976273752656b0ac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
