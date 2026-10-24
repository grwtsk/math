# centered_eq_uncentered_of_endpoints_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52737bb7-604a-1d5d-78a9-63bfd278cb46",
  "kind": "theorem",
  "lexical_name": "centered_eq_uncentered_of_endpoints_zero",
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
  "slug": "centered-eq-uncentered-of-endpoints-zero--f263c63d80944f9efff474eb",
  "source": {
    "blob": "3a54bb0cea427c5004c5a044593ff393f2572576",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 159,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f263c63d80944f9efff474eb4bb5b0ae7b32c14d1064275717d84052459809df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52737bb7-604a-1d5d-78a9-63bfd278cb46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_eq_uncentered_of_endpoints_zero {g : ℝ → ℝ}
    (hg : ContDiff ℝ 1 g) {Y : ℝ} (hY : 1 ≤ Y) (h1 : g 1 = 0) (hY0 : g Y = 0) :
    (∫ y in (1 : ℝ)..Y, (fracPlus y - 1 / 2) * deriv g y) =
      (∫ y in (1 : ℝ)..Y, fracPlus y * deriv g y) := by
  have hd := (hg.continuous_deriv (by norm_num)).intervalIntegrable (μ := volume) 1 Y
  simp only [sub_mul]
  rw [intervalIntegral.integral_sub (fracPlus_deriv_intervalIntegrable hg hY)
    (hd.const_mul _), intervalIntegral.integral_const_mul,
    intervalIntegral.integral_deriv_eq_sub
      (fun y _ => hg.differentiable (by norm_num) y) hd, hY0, h1]
  ring

#print axioms fracPlus_bounds
#print axioms fracPlus_centered_abs_le
#print axioms fracPlus_deriv_intervalIntegrable
#print axioms centered_deriv_intervalIntegrable
#print axioms sum_eq_integral_add_frac
#print axioms sum_eq_integral_add_centered
#print axioms centered_eq_uncentered_of_endpoints_zero
end CenteredAbelCandidate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CenteredAbel/Variantecb67f77f754f06dc04ab2eb4ba201a49f7737c3bbcd201daeaff7f7c56241bd.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a54bb0cea427c5004c5a044593ff393f2572576` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
