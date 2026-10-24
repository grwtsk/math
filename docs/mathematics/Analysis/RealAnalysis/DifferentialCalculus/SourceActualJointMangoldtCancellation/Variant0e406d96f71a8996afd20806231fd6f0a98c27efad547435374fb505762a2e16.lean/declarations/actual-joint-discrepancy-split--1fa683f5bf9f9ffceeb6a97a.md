# actual_joint_discrepancy_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57886296-f145-95d2-45b3-12002d2f5d9b",
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
  "slug": "actual-joint-discrepancy-split--1fa683f5bf9f9ffceeb6a97a",
  "source": {
    "blob": "3d97d4720690d895e3286b01ddedd291bfc34119",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variant0e406d96f71a8996afd20806231fd6f0a98c27efad547435374fb505762a2e16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fa683f5bf9f9ffceeb6a97a1de3ec6a03c67349bc9cb84c9a0ed150ed520383",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variant0e406d96f71a8996afd20806231fd6f0a98c27efad547435374fb505762a2e16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57886296-f145-95d2-45b3-12002d2f5d9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_joint_discrepancy_split (b : ℝ) (hb : 0 ≤ b) :
    actualJointMangoldtReadout b =
      (∫ t in 0..b, mangoldtLogError t * jointLogKernel b t) +
        ∫ t in 0..b, t * jointLogKernel b t := by
  have hc : ContDiff ℝ 1 (fun t : ℝ =>
      Real.exp (-b / 2) * Real.exp t - Real.exp (t / 2)) :=
    (contDiff_const.mul (Real.contDiff_exp : ContDiff ℝ 1 Real.exp)).sub expHalf_contDiff
  have hd : ∀ t : ℝ, deriv (fun u : ℝ =>
      Real.exp (-b / 2) * Real.exp u - Real.exp (u / 2)) t = jointLogKernel b t := by
    intro t
    have he := (Real.hasDerivAt_exp t).const_mul (Real.exp (-b / 2))
    have hh := (Real.hasDerivAt_exp (t / 2)).comp t ((hasDerivAt_id t).div_const 2)
    simpa only [jointLogKernel, Pi.sub_def, Function.comp_def, id_eq, div_eq_mul_inv, one_mul]
      using (he.sub hh).deriv
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variant0e406d96f71a8996afd20806231fd6f0a98c27efad547435374fb505762a2e16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variant0e406d96f71a8996afd20806231fd6f0a98c27efad547435374fb505762a2e16.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d97d4720690d895e3286b01ddedd291bfc34119` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
