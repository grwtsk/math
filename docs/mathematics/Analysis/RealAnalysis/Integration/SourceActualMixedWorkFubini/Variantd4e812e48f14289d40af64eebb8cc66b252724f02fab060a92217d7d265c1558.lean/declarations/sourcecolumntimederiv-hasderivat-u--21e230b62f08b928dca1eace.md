# sourceColumnTimeDeriv_hasDerivAt_u

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e0c0338-811c-da1b-977a-7b322e4b6806",
  "kind": "theorem",
  "lexical_name": "sourceColumnTimeDeriv_hasDerivAt_u",
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
  "slug": "sourcecolumntimederiv-hasderivat-u--21e230b62f08b928dca1eace",
  "source": {
    "blob": "750532f30c6e2d76927309de10288f6faa2e62da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 287,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantd4e812e48f14289d40af64eebb8cc66b252724f02fab060a92217d7d265c1558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21e230b62f08b928dca1eace8a091bc61cf7cbfe4efcc138823f6b1b7d815c83",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantd4e812e48f14289d40af64eebb8cc66b252724f02fab060a92217d7d265c1558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e0c0338-811c-da1b-977a-7b322e4b6806`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sourceColumnTimeDeriv_hasDerivAt_u
    {A u : ℝ} (hA : 0 < A) (hu : 0 < u) (t : ℝ) :
    HasDerivAt (sourceColumnTimeDeriv A t) (mixedDensity A t u) u := by
  have hlog := (Real.hasDerivAt_log hu.ne').const_add t
  have hc := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num)
    (t + Real.log u)).hasDerivAt.comp u hlog
  have hd := ((sourceCorrelation_deriv_contDiff hA).differentiable (by norm_num)
    (t + Real.log u)).hasDerivAt.comp u hlog
  have hs : Real.sqrt u ≠ 0 := Real.sqrt_ne_zero'.mpr hu
  have h := ((hasDerivAt_const u (Real.exp (t / 2))).div
    (Real.hasDerivAt_sqrt hu.ne') hs).mul (hd.add (hc.div_const 2))
  convert h using 1 <;> try rfl
  simpa only [mixedDensity, zero_mul, zero_sub, one_div, Function.comp_apply,
    Pi.mul_apply, Pi.div_apply, Pi.add_apply] using
      (column_derivative_algebra u (Real.sqrt u)
        (sourceCorrelation explicitSecondDerivative A (t + Real.log u))
        (deriv (sourceCorrelation explicitSecondDerivative A) (t + Real.log u))
        (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u))
        (Real.exp (t / 2)) hs (Real.mul_self_sqrt hu.le)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantd4e812e48f14289d40af64eebb8cc66b252724f02fab060a92217d7d265c1558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantd4e812e48f14289d40af64eebb8cc66b252724f02fab060a92217d7d265c1558.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `750532f30c6e2d76927309de10288f6faa2e62da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
