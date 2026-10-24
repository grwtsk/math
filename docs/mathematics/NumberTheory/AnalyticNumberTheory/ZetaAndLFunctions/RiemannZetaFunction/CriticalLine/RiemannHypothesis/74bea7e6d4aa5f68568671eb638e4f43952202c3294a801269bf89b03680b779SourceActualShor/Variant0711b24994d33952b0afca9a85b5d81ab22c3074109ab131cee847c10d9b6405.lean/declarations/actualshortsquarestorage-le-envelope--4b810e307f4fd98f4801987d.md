# actualShortSquareStorage_le_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c79c5fa3-b527-5f68-6e65-d793ff47d1d3",
  "kind": "theorem",
  "lexical_name": "actualShortSquareStorage_le_envelope",
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
  "slug": "actualshortsquarestorage-le-envelope--4b810e307f4fd98f4801987d",
  "source": {
    "blob": "4f33697f2031028c7d07f4b53ff25f5b8a6d1d5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/74bea7e6d4aa5f68568671eb638e4f43952202c3294a801269bf89b03680b779SourceActualShor/Variant0711b24994d33952b0afca9a85b5d81ab22c3074109ab131cee847c10d9b6405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b810e307f4fd98f4801987d202a6b19b616c795beb748ddb499885528564923",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/74bea7e6d4aa5f68568671eb638e4f43952202c3294a801269bf89b03680b779SourceActualShor/Variant0711b24994d33952b0afca9a85b5d81ab22c3074109ab131cee847c10d9b6405.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c79c5fa3-b527-5f68-6e65-d793ff47d1d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualShortSquareStorage_le_envelope {A : ℝ} (hA : 25600 ≤ A) :
    actualShortSquareStorage A ≤ actualShortSquareStorageEnvelope A := by
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  let T := Real.log (vaughanCutoff A : ℝ)
  let D := (5 / 2 : ℝ) / A ^ 2 * T ^ 2
  have hT0 : 0 ≤ T := Real.log_nonneg (by
    exact_mod_cast vaughanCutoff_pos A hA1)
  have hD0 : 0 ≤ D := by unfold D; positivity
  have hrow (n : ℕ) (hn : n ∈ Finset.Icc 2 (vaughanCutoff A)) :
      sourceSquareStorage A (Real.log n) ≤ D := by
    have hn2 : 2 ≤ n := (Finset.mem_Icc.mp hn).1
    have hnR : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
    have ht0 : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by
      exact_mod_cast (show 1 ≤ n by omega))
    have htT : Real.log (n : ℝ) ≤ T := Real.log_le_log hnR
      (by exact_mod_cast (Finset.mem_Icc.mp hn).2)
    have he := actualCorrelation_sub_one_abs_le_five (by linarith : 91 ≤ A)
      (Real.log (n : ℝ))
    rw [sourceSquareStorage_eq hp]
    calc
      _ ≤ |sourceCorrelation explicitSecondDerivative A (Real.log (n : ℝ)) - 1| := by
        linarith [neg_le_abs (sourceCorrelation explicitSecondDerivative A (Real.log n) - 1)]
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * (Real.log (n : ℝ)) ^ 2 := he
      _ ≤ D := by unfold D; gcongr
  have hs : actualShortSquareStorage A ≤ D * actualShortSquareBaseline A := by
    unfold actualShortSquareStorage actualShortSquareBaseline
    unfold finiteMangoldtStorage finiteMangoldtBaseline
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro n hn
    change mangoldtCoefficient n * sourceSquareStorage A (Real.log n) ≤ _
    simpa only [mul_comm] using
      mul_le_mul_of_nonneg_left (hrow n hn) (mangoldtCoefficient_nonneg n)
  have hb := actualShortSquareBaseline_le hA1
  have hl0 : 0 ≤ Real.log A := Real.log_nonneg hA1
  have hT : T ≤ 2 * Real.log A := by
    have hU : 1 ≤ vaughanCutoff A := vaughanCutoff_pos A hA1
    have hU0 : (0 : ℝ) < vaughanCutoff A := by
      exact_mod_cast (show 0 < vaughanCutoff A by omega)
    have h := Real.log_le_log hU0 (Nat.floor_le (sq_nonneg A))
    rw [Real.log_pow] at h
    simpa only [Nat.cast_ofNat] using h
  have hB0 : 0 ≤ Real.log (4 : ℝ) + 4 := by positivity
  calc
    _ ≤ D * (A * (T + Real.log 4 + 4)) :=
      hs.trans (mul_le_mul_of_nonneg_left hb hD0)
    _ = ((5 / 2 : ℝ) * T ^ 2 * (T + (Real.log 4 + 4))) / A := by
      unfold D
      field_simp
      ring
    _ ≤ ((5 / 2 : ℝ) * (2 * Real.log A) ^ 2 *
        (2 * Real.log A + (Real.log 4 + 4))) / A := by
      gcongr
    _ = actualShortSquareStorageEnvelope A := by
      unfold actualShortSquareStorageEnvelope
      ring

/-- The scalar budget tends to zero on the original real scale axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/74bea7e6d4aa5f68568671eb638e4f43952202c3294a801269bf89b03680b779SourceActualShor/Variant0711b24994d33952b0afca9a85b5d81ab22c3074109ab131cee847c10d9b6405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/74bea7e6d4aa5f68568671eb638e4f43952202c3294a801269bf89b03680b779SourceActualShor/Variant0711b24994d33952b0afca9a85b5d81ab22c3074109ab131cee847c10d9b6405.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f33697f2031028c7d07f4b53ff25f5b8a6d1d5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
