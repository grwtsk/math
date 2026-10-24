# actual_joint_discrepancy_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2c4eea9-b9a9-7b05-2c14-04dad68458c8",
  "kind": "theorem",
  "lexical_name": "actual_joint_discrepancy_split",
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
  "slug": "actual-joint-discrepancy-split--8582974a45eacc8f0b7a5745",
  "source": {
    "blob": "bf15e09d69160eb817160051afb895a356666117",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variante0ec13d63426a7bff41a2f89f5c886acdb17cb04b39bad3fb76aa9f1b2dcfbfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8582974a45eacc8f0b7a5745bffc1ed0d21e620d4a5ac2698db7ceefa5be565d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variante0ec13d63426a7bff41a2f89f5c886acdb17cb04b39bad3fb76aa9f1b2dcfbfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2c4eea9-b9a9-7b05-2c14-04dad68458c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_joint_discrepancy_split (b : ℝ) (hb : 0 ≤ b) :
    actualJointMangoldtReadout b =
      (∫ t in 0..b, mangoldtLogError t * jointLogKernel b t) +
        ∫ t in 0..b, t * jointLogKernel b t := by
  have hc : ContDiff ℝ 1 (fun t : ℝ =>
      Real.exp (-b / 2) * Real.exp t - Real.exp (t / 2)) :=
    (Real.contDiff_exp.const_mul _).sub expHalf_contDiff
  have hd : ∀ t : ℝ, deriv (fun u : ℝ =>
      Real.exp (-b / 2) * Real.exp u - Real.exp (u / 2)) t = jointLogKernel b t := by
    intro t
    have he := (Real.hasDerivAt_exp t).const_mul (Real.exp (-b / 2))
    have hh := (Real.hasDerivAt_exp (t / 2)).comp t ((hasDerivAt_id t).div_const 2)
    exact (he.sub hh).deriv
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable 0 b hb _ hc
  simp_rw [hd] at hi
  have hk : Continuous (jointLogKernel b) :=
    (continuous_const.mul Real.continuous_exp).sub
      ((Real.continuous_exp.comp (continuous_id.div_const 2)).div_const 2)
  rw [actual_joint_endpoint_cancellation b hb]
  calc
    _ = ∫ t in 0..b,
        mangoldtLogError t * jointLogKernel b t + t * jointLogKernel b t := by
      apply intervalIntegral.integral_congr
      intro t _
      unfold mangoldtLogError
      ring
    _ = _ := intervalIntegral.integral_add hi ((continuous_id.mul hk).intervalIntegrable _ _)

end FormalResearch.RiemannHypothesis.SourceActualJointMangoldtCancellation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variante0ec13d63426a7bff41a2f89f5c886acdb17cb04b39bad3fb76aa9f1b2dcfbfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variante0ec13d63426a7bff41a2f89f5c886acdb17cb04b39bad3fb76aa9f1b2dcfbfb.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf15e09d69160eb817160051afb895a356666117` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
