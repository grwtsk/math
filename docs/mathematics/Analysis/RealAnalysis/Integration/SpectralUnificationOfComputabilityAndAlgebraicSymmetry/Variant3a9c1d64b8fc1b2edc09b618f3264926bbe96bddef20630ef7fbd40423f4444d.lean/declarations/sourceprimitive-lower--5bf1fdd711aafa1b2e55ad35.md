# sourcePrimitive_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67699f552cc448ddbeb12bc46c46736516cc1f80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a9c1d64b8fc1b2edc09b618f3264926bbe96bddef20630ef7fbd40423f4444d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41aa5053-7572-c516-bb4e-e263c473ef28",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ff33c78-482b-dbe0-cb55-5cef6496d932",
  "kind": "theorem",
  "lexical_name": "sourcePrimitive_lower",
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
  "slug": "sourceprimitive-lower--5bf1fdd711aafa1b2e55ad35",
  "source": {
    "blob": "67699f552cc448ddbeb12bc46c46736516cc1f80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 126,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3a9c1d64b8fc1b2edc09b618f3264926bbe96bddef20630ef7fbd40423f4444d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bf1fdd711aafa1b2e55ad3545dba430cb8f6355676ae58ab1ce23b717d8fa15",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3a9c1d64b8fc1b2edc09b618f3264926bbe96bddef20630ef7fbd40423f4444d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ff33c78-482b-dbe0-cb55-5cef6496d932`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePrimitive_lower (T : ℝ) (hT : 1 ≤ T) :
    -2 * integratedTypeTwo T -
      |archimedeanMultiplier 0| * (45056/1105) * (T^18-1)/18 -
      (272+54*Real.log 4) * (45056/1105) * (T^20-1)/10 ≤ sourcePrimitive T := by
  let a : ℝ := |archimedeanMultiplier 0| * (45056/1105)
  let c : ℝ := (272+54*Real.log 4) * (45056/1105)
  have hp (A : ℝ) (hA : 1 ≤ A) :
      -(a*A^17) - 2*c*A^19 ≤ weightedSource A + 2*(scaleWeight A*typeTwoSource A) := by
    have hp0 := (scaleWeight_pos A hA).le
    have hα := SourceCorrectionEstimate.actual_archimedean_lower A hA
    have hα' := neg_abs_le (archimedeanMultiplier 0)
    have harch : -|archimedeanMultiplier 0| * scaleWeight A ≤
        scaleWeight A * archimedeanValue explicitSecondDerivative A := by
      nlinarith [mul_le_mul_of_nonneg_left (hα'.trans hα) hp0]
    have hs := (abs_le.mp (mertensResidual_sub_typeTwo_abs_le_quadratic A hA)).2
    have hm := mul_le_mul_of_nonneg_left hs hp0
    have ha := mul_le_mul_of_nonneg_left (scaleWeight_le A hA)
      (abs_nonneg (archimedeanMultiplier 0))
    have hc := mul_le_mul_of_nonneg_right (scaleWeight_le A hA)
      (show 0 ≤ (272+54*Real.log 4)*A^2 by positivity)
    have he : ((45056/1105)*A^17)*((272+54*Real.log 4)*A^2) = c*A^19 := by
      dsimp [c]; ring
    rw [he] at hc
    dsimp [weightedSource, actualQ]
    rw [EstimatePolynomialResidual.sourceQuadraticValue_eq_archimedean_sub_residual A hA]
    change -(a*A^17) - 2*c*A^19 ≤
      scaleWeight A * (archimedeanValue explicitSecondDerivative A - 2*mertensResidual A) +
        2*(scaleWeight A*typeTwoSource A)
    dsimp [a] at *
    nlinarith
  have hli : IntervalIntegrable (fun A : ℝ ↦ -(a*A^17) - 2*c*A^19) volume 1 T :=
    (by fun_prop : Continuous (fun A : ℝ ↦ -(a*A^17) - 2*c*A^19)).intervalIntegrable _ _
  have hri := (weighted_source_intervalIntegrable T hT).add
    ((weighted_typeTwo_intervalIntegrable T hT).const_mul 2)
  have h := intervalIntegral.integral_mono_on hT hli hri (fun A hA ↦ hp A hA.1)
  rw [intervalIntegral.integral_add (weighted_source_intervalIntegrable T hT)
      ((weighted_typeTwo_intervalIntegrable T hT).const_mul 2),
    intervalIntegral.integral_const_mul] at h
  have he : (∫ A in (1:ℝ)..T, -(a*A^17) - 2*c*A^19) =
      -a*(T^18-1)/18 - 2*c*(T^20-1)/20 := by
    rw [intervalIntegral.integral_sub
      ((by fun_prop : Continuous (fun A : ℝ ↦ -(a*A^17))).intervalIntegrable 1 T)
      ((by fun_prop : Continuous (fun A : ℝ ↦ 2*c*A^19)).intervalIntegrable 1 T),
      intervalIntegral.integral_neg, intervalIntegral.integral_const_mul,
      intervalIntegral.integral_const_mul, integral_pow, integral_pow]
    norm_num
    ring
  rw [he] at h
  change -a*(T^18-1)/18 - 2*c*(T^20-1)/20 ≤
    sourcePrimitive T + 2*integratedTypeTwo T at h
  dsimp [a,c] at h
  linarith

/-- The primitive really vanishes at its initial scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3a9c1d64b8fc1b2edc09b618f3264926bbe96bddef20630ef7fbd40423f4444d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3a9c1d64b8fc1b2edc09b618f3264926bbe96bddef20630ef7fbd40423f4444d.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67699f552cc448ddbeb12bc46c46736516cc1f80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
