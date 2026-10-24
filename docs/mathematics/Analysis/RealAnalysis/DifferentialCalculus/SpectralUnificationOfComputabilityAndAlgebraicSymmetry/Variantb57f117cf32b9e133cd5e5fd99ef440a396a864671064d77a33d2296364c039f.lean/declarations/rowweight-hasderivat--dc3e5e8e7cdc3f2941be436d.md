# rowWeight_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6c6907f-43d9-5846-c2dc-6297f242de96",
  "kind": "theorem",
  "lexical_name": "rowWeight_hasDerivAt",
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
  "slug": "rowweight-hasderivat--dc3e5e8e7cdc3f2941be436d",
  "source": {
    "blob": "679c35671854c4e9b788a9951cde522d1fc7e7dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantb57f117cf32b9e133cd5e5fd99ef440a396a864671064d77a33d2296364c039f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc3e5e8e7cdc3f2941be436da0f6d02118628628322d5855ac908a56449e937c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantb57f117cf32b9e133cd5e5fd99ef440a396a864671064d77a33d2296364c039f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6c6907f-43d9-5846-c2dc-6297f242de96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rowWeight_hasDerivAt (A x : ℝ) (m : ℕ) (hA : 0 < A)
    (hm : 1 ≤ m) (hx : 0 < x) :
    HasDerivAt (rowWeight A m)
      (correlationSlope A (Real.log ((m : ℝ)*x)) /
        (x*Real.sqrt ((m : ℝ)*x))) x := by
  have hm0 : 0 < (m : ℝ) := by exact_mod_cast (by omega : 0 < m)
  have hy : 0 < (m : ℝ)*x := mul_pos hm0 hx
  have hC := sourceCorrelation_contDiff A hA
  have hF := exponentialTest_contDiff _ hC
  have hdF := ((contDiff_one_iff_deriv.mp hF).1 (Real.log ((m : ℝ)*x))).hasDerivAt
  rw [exponentialTest_deriv _ hC] at hdF
  have harg := ((hasDerivAt_id x).const_mul (m : ℝ)).log hy.ne'
  have hd := hdF.comp x harg
  have hexp : Real.exp (-Real.log ((m : ℝ)*x)/2) = 1/Real.sqrt ((m : ℝ)*x) := by
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hy]
    ring
  dsimp only [Function.comp_def, id_eq] at hd
  rw [hexp] at hd
  have he : (1/Real.sqrt ((m : ℝ)*x) * correlationSlope A (Real.log ((m : ℝ)*x))) *
      ((m : ℝ)*1/((m : ℝ)*x)) =
      correlationSlope A (Real.log ((m : ℝ)*x))/(x*Real.sqrt ((m : ℝ)*x)) := by
    field_simp [hm0.ne', hx.ne']
  change HasDerivAt (fun y ↦ exponentialTest
    (sourceCorrelation explicitSecondDerivative A) (Real.log ((m : ℝ)*y))) _ x at hd
  change HasDerivAt _
    ((1/Real.sqrt ((m : ℝ)*x) * correlationSlope A (Real.log ((m : ℝ)*x))) *
      ((m : ℝ)*1/((m : ℝ)*x))) x at hd
  rw [he] at hd
  apply hd.congr_of_eventuallyEq
  filter_upwards [Ioi_mem_nhds hx] with y hy
  exact rowWeight_eq_exponential A m y hm hy

/-- The ordinary derivative is the exact source derivative at each positive input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantb57f117cf32b9e133cd5e5fd99ef440a396a864671064d77a33d2296364c039f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantb57f117cf32b9e133cd5e5fd99ef440a396a864671064d77a33d2296364c039f.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679c35671854c4e9b788a9951cde522d1fc7e7dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
