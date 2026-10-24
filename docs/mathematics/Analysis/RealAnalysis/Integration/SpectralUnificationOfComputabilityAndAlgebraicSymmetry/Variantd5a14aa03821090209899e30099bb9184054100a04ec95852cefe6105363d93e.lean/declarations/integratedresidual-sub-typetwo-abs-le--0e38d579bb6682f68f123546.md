# integratedResidual_sub_typeTwo_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cc1d67c-faa4-9c40-3a80-3f5bb4ff2019",
  "kind": "theorem",
  "lexical_name": "integratedResidual_sub_typeTwo_abs_le",
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
  "slug": "integratedresidual-sub-typetwo-abs-le--0e38d579bb6682f68f123546",
  "source": {
    "blob": "5eab35fca16d9da902e259fefa3abdf29703fca0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd5a14aa03821090209899e30099bb9184054100a04ec95852cefe6105363d93e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e38d579bb6682f68f123546d9f35bd9dcc30ce8d76974df4b24732126e56266",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd5a14aa03821090209899e30099bb9184054100a04ec95852cefe6105363d93e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cc1d67c-faa4-9c40-3a80-3f5bb4ff2019`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integratedResidual_sub_typeTwo_abs_le (T : ℝ) (hT : 1 ≤ T) :
    |integratedResidual T - integratedTypeTwo T| ≤
      (272+54*Real.log 4) * (45056/1105) * (T^20-1)/20 := by
  let c : ℝ := (272+54*Real.log 4) * (45056/1105)
  have hc : 0 ≤ c := by dsimp [c]; positivity
  have hpoint (A : ℝ) (hA : 1 ≤ A) :
      |scaleWeight A * mertensResidual A - scaleWeight A * typeTwoSource A| ≤ c*A^19 := by
    rw [← mul_sub, abs_mul, abs_of_pos (scaleWeight_pos A hA)]
    calc
      _ ≤ scaleWeight A * ((272+54*Real.log 4)*A^2) :=
        mul_le_mul_of_nonneg_left (mertensResidual_sub_typeTwo_abs_le_quadratic A hA)
          (scaleWeight_pos A hA).le
      _ ≤ ((45056/1105)*A^17) * ((272+54*Real.log 4)*A^2) :=
        mul_le_mul_of_nonneg_right (scaleWeight_le A hA) (by positivity)
      _ = _ := by dsimp [c]; ring
  unfold integratedResidual integratedTypeTwo
  rw [← intervalIntegral.integral_sub (weighted_residual_intervalIntegrable T hT)
    (weighted_typeTwo_intervalIntegrable T hT)]
  have h := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hT
    (f := fun A ↦ scaleWeight A * mertensResidual A - scaleWeight A * typeTwoSource A)
    (g := fun A ↦ c*A^19)
    (by filter_upwards with A hA; rw [Real.norm_eq_abs]; exact hpoint A hA.1.le)
    ((by fun_prop : Continuous (fun A : ℝ ↦ c*A^19)).intervalIntegrable 1 T)
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul, integral_pow] at h
  norm_num only [Nat.reduceAdd, Nat.cast_ofNat, one_pow] at h
  dsimp [c] at h
  nlinarith

/-- The actual weighted source is locally integrable, as proved by its existing continuation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd5a14aa03821090209899e30099bb9184054100a04ec95852cefe6105363d93e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd5a14aa03821090209899e30099bb9184054100a04ec95852cefe6105363d93e.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eab35fca16d9da902e259fefa3abdf29703fca0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
