# actualMixedTimeColumn_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d277814f-71fb-9576-1f5e-048ec2eb90fa",
  "kind": "theorem",
  "lexical_name": "actualMixedTimeColumn_hasDerivAt",
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
  "slug": "actualmixedtimecolumn-hasderivat--44957eed75e82514734c3865",
  "source": {
    "blob": "bcb3aec2043769f1da44b2bb9510d165d38c0602",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E24168cf3bf9b367acd3ActualMixedKernelFirstColumnChallenge/Variant4a812610ca1db130bcbf1d688440c788731ec6d469bdcb14f3dd0054186b0026.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44957eed75e82514734c38654a3083dc8846657ed52448bf2b59b456cf409751",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/E24168cf3bf9b367acd3ActualMixedKernelFirstColumnChallenge/Variant4a812610ca1db130bcbf1d688440c788731ec6d469bdcb14f3dd0054186b0026.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d277814f-71fb-9576-1f5e-048ec2eb90fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMixedTimeColumn_hasDerivAt {A u : ℝ} (hA : 0 < A) (hu : 0 < u)
    (t : ℝ) : HasDerivAt (actualMixedTimeColumn A t) (actualMixedColumnDensity A t u) u := by
  have hlog := (Real.hasDerivAt_log hu.ne').const_add t
  have hc := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num)
    (t + Real.log u)).hasDerivAt.comp u hlog
  have hd := ((sourceCorrelation_deriv_contDiff hA).differentiable (by norm_num)
    (t + Real.log u)).hasDerivAt.comp u hlog
  have hs : Real.sqrt u ≠ 0 := Real.sqrt_ne_zero'.mpr hu
  have h := ((hasDerivAt_const u (Real.exp (t / 2))).div
    (Real.hasDerivAt_sqrt hu.ne') hs).mul (hd.add (hc.div_const 2))
  convert h using 1 <;> try rfl
  simpa only [actualMixedColumnDensity, actualMixedColumnCoefficient, zero_mul, zero_sub,
    one_div, Function.comp_apply, Pi.mul_apply, Pi.div_apply, Pi.add_apply] using
      (actual_column_derivative_algebra u (Real.sqrt u)
        (sourceCorrelation explicitSecondDerivative A (t + Real.log u))
        (deriv (sourceCorrelation explicitSecondDerivative A) (t + Real.log u))
        (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u))
        (Real.exp (t / 2)) hs (Real.mul_self_sqrt hu.le)).symm

/-- The actual lower-time first-column rectangle stays in the early correlation window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/E24168cf3bf9b367acd3ActualMixedKernelFirstColumnChallenge/Variant4a812610ca1db130bcbf1d688440c788731ec6d469bdcb14f3dd0054186b0026.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E24168cf3bf9b367acd3ActualMixedKernelFirstColumnChallenge/Variant4a812610ca1db130bcbf1d688440c788731ec6d469bdcb14f3dd0054186b0026.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcb3aec2043769f1da44b2bb9510d165d38c0602` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
