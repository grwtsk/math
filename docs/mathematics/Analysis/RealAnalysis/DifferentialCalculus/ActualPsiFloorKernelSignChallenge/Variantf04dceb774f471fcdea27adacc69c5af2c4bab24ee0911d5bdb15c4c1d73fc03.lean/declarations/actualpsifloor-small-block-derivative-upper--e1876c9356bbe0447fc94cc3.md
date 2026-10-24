# actualPsiFloor_small_block_derivative_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecf6de81-6b4c-cff9-17fc-f97546844146",
  "kind": "theorem",
  "lexical_name": "actualPsiFloor_small_block_derivative_upper",
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
  "slug": "actualpsifloor-small-block-derivative-upper--e1876c9356bbe0447fc94cc3",
  "source": {
    "blob": "fb83b2fa16e3c8b8894926f36564153875161db0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPsiFloorKernelSignChallenge/Variantf04dceb774f471fcdea27adacc69c5af2c4bab24ee0911d5bdb15c4c1d73fc03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1876c9356bbe0447fc94cc3aa5f5f0cafcc766122ab4b9a9355b21d61d4e103",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPsiFloorKernelSignChallenge/Variantf04dceb774f471fcdea27adacc69c5af2c4bab24ee0911d5bdb15c4c1d73fc03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecf6de81-6b4c-cff9-17fc-f97546844146`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPsiFloor_small_block_derivative_upper {A x : ℝ} (hA : 91 ≤ A)
    (hx : 1 ≤ x) (hx20 : x ≤ 20) :
    deriv (plainProfile A 1) x ≤ -(Real.exp (-Real.log x / 2) / x) / 3 := by
  have hx0 : 0 < x := by linarith
  have hc := actualPsiFloor_small_block_critical_weight hA hx hx20
  rw [(plainProfile_hasDerivAt (by linarith : 0 < A) 1 hx0).deriv]
  simp only [Real.log_one, zero_add]
  have hm := mul_le_mul_of_nonneg_left
    (show deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x) -
      sourceCorrelation explicitSecondDerivative A (Real.log x) / 2 ≤ -(1 / 3 : ℝ) by
        linarith) (le_of_lt (div_pos (Real.exp_pos (-Real.log x / 2)) hx0))
  linarith

/-- The actual compact sampling derivative has negative sign throughout these blocks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPsiFloorKernelSignChallenge/Variantf04dceb774f471fcdea27adacc69c5af2c4bab24ee0911d5bdb15c4c1d73fc03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPsiFloorKernelSignChallenge/Variantf04dceb774f471fcdea27adacc69c5af2c4bab24ee0911d5bdb15c4c1d73fc03.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb83b2fa16e3c8b8894926f36564153875161db0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
