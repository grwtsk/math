# mangoldtObservation_reflection_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d019a799-0116-c66c-129e-51673b5aaba7",
  "kind": "theorem",
  "lexical_name": "mangoldtObservation_reflection_eq",
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
  "slug": "mangoldtobservation-reflection-eq--8e1a005b7f7842b53ba2fa10",
  "source": {
    "blob": "3a0c417c76931c62c4b83801784017f4eb924395",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflection/Variantc85046af638cafa906145576516f45140571d960d9c68d1a366031533ffecd45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e1a005b7f7842b53ba2fa102d3ffce820b5b6b01b6515f923c9e4804862ebf6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MangoldtReflection/Variantc85046af638cafa906145576516f45140571d960d9c68d1a366031533ffecd45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d019a799-0116-c66c-129e-51673b5aaba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtObservation_reflection_eq (A c : ℝ) (T U : Finset ℕ) (hA : 1 ≤ A) :
    (∫ x : ℝ, mangoldtObservation A T x * mangoldtObservation A U (c - x)) =
      ∑ i ∈ T, ∑ j ∈ U,
        (ArithmeticFunction.vonMangoldt i / Real.sqrt i) *
        (ArithmeticFunction.vonMangoldt j / Real.sqrt j) *
        sourceCorrelation explicitSecondDerivative A (c + Real.log i + Real.log j) := by
  have hi (i j : ℕ) : Integrable (fun x : ℝ ↦
      (ArithmeticFunction.vonMangoldt i / Real.sqrt i *
        normalizedTest explicitSecondDerivative A (x + Real.log i)) *
      (ArithmeticFunction.vonMangoldt j / Real.sqrt j *
        normalizedTest explicitSecondDerivative A (c - x + Real.log j))) := by
    have hc := (normalizedTest_contDiff A (by linarith)).continuous
    have hcont : Continuous (fun x : ℝ ↦
        (ArithmeticFunction.vonMangoldt i / Real.sqrt i *
          normalizedTest explicitSecondDerivative A (x + Real.log i)) *
        (ArithmeticFunction.vonMangoldt j / Real.sqrt j *
          normalizedTest explicitSecondDerivative A (c - x + Real.log j))) :=
      (continuous_const.mul (hc.comp (continuous_id.add continuous_const))).mul
      (continuous_const.mul (hc.comp
        ((continuous_const.sub continuous_id).add continuous_const)))
    exact hcont.integrable_of_hasCompactSupport
        (((normalizedTest_hasCompactSupport A (by linarith)).comp_homeomorph
          (Homeomorph.addRight (Real.log (i : ℝ)))).mul_left).mul_right
  simp_rw [mangoldtObservation, sum_mul, mul_sum]
  rw [integral_finsetSum T (fun i _ ↦ integrable_finsetSum U (fun j _ ↦ hi i j))]
  apply sum_congr rfl
  intro i _
  rw [integral_finsetSum U (fun j _ ↦ hi i j)]
  apply sum_congr rfl
  intro j _
  rw [← shifted_source_reflection A (Real.log i) (Real.log j) c hA,
    ← integral_const_mul]
  apply integral_congr_ae
  filter_upwards [] with x
  ring


/-- A real compact observation has a signed even-minus-odd reflection decomposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MangoldtReflection/Variantc85046af638cafa906145576516f45140571d960d9c68d1a366031533ffecd45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflection/Variantc85046af638cafa906145576516f45140571d960d9c68d1a366031533ffecd45.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a0c417c76931c62c4b83801784017f4eb924395` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
