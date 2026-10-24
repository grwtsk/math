# actual_joint_endpoint_cancellation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:188516b7-2447-df78-1c9e-1ad11df699d6",
  "kind": "theorem",
  "lexical_name": "actual_joint_endpoint_cancellation",
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
  "slug": "actual-joint-endpoint-cancellation--3fbf05b394035ff1771c5497",
  "source": {
    "blob": "65b6c4e19b798839ace1616c82ab892806fab02b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variant302e6c035f4afcfeb7177ad299c36721193915c966cbfc532311409790fa77bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fbf05b394035ff1771c5497efd0144232eb37146c1970ee21464487b1351a6b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variant302e6c035f4afcfeb7177ad299c36721193915c966cbfc532311409790fa77bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:188516b7-2447-df78-1c9e-1ad11df699d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_joint_endpoint_cancellation (b : ℝ) (hb : 0 ≤ b) :
    actualJointMangoldtReadout b =
      ∫ t in 0..b, mangoldtLogPrefix t * jointLogKernel b t := by
  have hhalf := mangoldtLogSum_abel b hb (fun t => Real.exp (t / 2)) expHalf_contDiff
  have hfull := mangoldtLogSum_abel b hb Real.exp Real.contDiff_exp
  simp_rw [expHalf_deriv] at hhalf
  simp_rw [Real.deriv_exp] at hfull
  have hiHalf := mangoldtLogPrefix_mul_deriv_intervalIntegrable 0 b hb
    (fun t => Real.exp (t / 2)) expHalf_contDiff
  simp_rw [expHalf_deriv] at hiHalf
  have hiFull := mangoldtLogPrefix_mul_deriv_intervalIntegrable 0 b hb
    Real.exp Real.contDiff_exp
  simp_rw [Real.deriv_exp] at hiFull
  have hsame : Real.exp (-b / 2) * Real.exp b = Real.exp (b / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  unfold actualJointMangoldtReadout
  rw [hhalf, hfull]
  have hsplit : (∫ t in 0..b, mangoldtLogPrefix t * jointLogKernel b t) =
      Real.exp (-b / 2) * (∫ t in 0..b, mangoldtLogPrefix t * Real.exp t) -
        ∫ t in 0..b, mangoldtLogPrefix t * (Real.exp (t / 2) / 2) := by
    calc
      _ = ∫ t in 0..b,
          Real.exp (-b / 2) * (mangoldtLogPrefix t * Real.exp t) -
            mangoldtLogPrefix t * (Real.exp (t / 2) / 2) := by
        apply intervalIntegral.integral_congr
        intro t _
        unfold jointLogKernel
        ring
      _ = _ := by
        rw [intervalIntegral.integral_sub (hiFull.const_mul _) hiHalf,
          intervalIntegral.integral_const_mul]
  rw [hsplit]
  rw [mul_sub, ← mul_assoc, hsame]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variant302e6c035f4afcfeb7177ad299c36721193915c966cbfc532311409790fa77bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualJointMangoldtCancellation/Variant302e6c035f4afcfeb7177ad299c36721193915c966cbfc532311409790fa77bd.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65b6c4e19b798839ace1616c82ab892806fab02b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
