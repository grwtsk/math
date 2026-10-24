# actualXiComplexLaplace_boundary_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ba73618-fcae-8575-103e-c543abfc08aa",
  "kind": "theorem",
  "lexical_name": "actualXiComplexLaplace_boundary_tendsto_zero",
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
  "slug": "actualxicomplexlaplace-boundary-tendsto-zero--f20a41cb795b86792b7dd4af",
  "source": {
    "blob": "c41d664fa7df21a8b44edc6857855fa63bb0bd4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant79a390f91dd9da63e72ca59dc08ce80814a3778fb70e15e4c5ed174a2c0e8fb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f20a41cb795b86792b7dd4af278c269627215545a0e620d0b67b947ce8b76851",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant79a390f91dd9da63e72ca59dc08ce80814a3778fb70e15e4c5ed174a2c0e8fb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ba73618-fcae-8575-103e-c543abfc08aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexLaplace_boundary_tendsto_zero {z : ℂ} (hz : 1 / 2 < z.re) :
    Tendsto (fun t : ℝ => (actualAnchoredXiTailPrimitive t : ℂ) *
      Complex.exp (-z * (t : ℂ))) atTop (𝓝 0) := by
  have ho : (fun t : ℝ => (actualAnchoredXiTailPrimitive t : ℂ) *
      Complex.exp (-z * (t : ℂ))) =O[atTop]
        (fun t : ℝ => Real.exp (-(z.re - 1 / 2) * t)) := by
    apply Asymptotics.IsBigO.of_bound (2 * actualXiExponentialEnvelopeConstant)
    filter_upwards [eventually_ge_atTop (Real.log 7)] with t ht
    simpa only [Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)] using
      actualXiComplexLaplaceKernel_norm_le z ht
  exact ho.trans_tendsto (Real.tendsto_exp_atBot.comp
    (tendsto_id.const_mul_atTop_of_neg (by linarith : -(z.re - 1 / 2) < 0)))

/-- Actual finite AC Abel and genuine improper limits identify the anchored F7 transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant79a390f91dd9da63e72ca59dc08ce80814a3778fb70e15e4c5ed174a2c0e8fb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant79a390f91dd9da63e72ca59dc08ce80814a3778fb70e15e4c5ed174a2c0e8fb7.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c41d664fa7df21a8b44edc6857855fa63bb0bd4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
