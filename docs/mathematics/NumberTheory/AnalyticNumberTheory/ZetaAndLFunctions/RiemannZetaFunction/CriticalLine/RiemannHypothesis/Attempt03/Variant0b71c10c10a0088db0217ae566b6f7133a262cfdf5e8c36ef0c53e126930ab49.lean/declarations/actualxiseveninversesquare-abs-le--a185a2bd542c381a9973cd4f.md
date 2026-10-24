# actualXiSevenInverseSquare_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b35db8f7-3c1b-9f07-71b4-0b9a9ab72beb",
  "kind": "theorem",
  "lexical_name": "actualXiSevenInverseSquare_abs_le",
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
  "slug": "actualxiseveninversesquare-abs-le--a185a2bd542c381a9973cd4f",
  "source": {
    "blob": "69aa6343534e43826a0711f462d2d54ae502241a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 145,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant0b71c10c10a0088db0217ae566b6f7133a262cfdf5e8c36ef0c53e126930ab49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a185a2bd542c381a9973cd4ffa3558b8253bfc85c62e890667142662668e16f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant0b71c10c10a0088db0217ae566b6f7133a262cfdf5e8c36ef0c53e126930ab49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b35db8f7-3c1b-9f07-71b4-0b9a9ab72beb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiSevenInverseSquare_abs_le {T : ℝ} (hT : Real.log 7 ≤ T) :
    |∫ y in (7 : ℝ)..Real.exp T, shiftedActualChebyshev y / y ^ 2| ≤
      2 * (Real.log 4 + 4 + Real.log 2) + 2 * actualXiExponentialEnvelopeConstant := by
  have heT := mangoldtLogError_abs_le T (time_nonneg hT)
  have he7 := mangoldtLogError_abs_le (Real.log 7) (Real.log_nonneg (by norm_num))
  have hxT := shifted_abs_le (show 1 ≤ Real.exp T by linarith [physical_lower hT])
  have hx7 := shifted_abs_le (by norm_num : (1 : ℝ) ≤ 7)
  have hdivT : |shiftedActualChebyshev (Real.exp T) / Real.exp T| ≤
      actualXiExponentialEnvelopeConstant := by
    rw [abs_div, abs_of_pos (Real.exp_pos T)]
    exact (div_le_iff₀ (Real.exp_pos T)).mpr hxT
  have hdiv7 : |shiftedActualChebyshev 7 / 7| ≤ actualXiExponentialEnvelopeConstant := by
    rw [abs_div]
    rw [abs_of_pos (by norm_num : (0 : ℝ) < 7)]
    exact (div_le_iff₀ (by norm_num : (0 : ℝ) < 7)).mpr hx7
  rw [actualXiSevenInverseSquare_exact hT]
  have h1 := abs_sub (mangoldtLogError T) (mangoldtLogError (Real.log 7))
  have h2 := abs_sub (mangoldtLogError T - mangoldtLogError (Real.log 7))
    (shiftedActualChebyshev (Real.exp T) / Real.exp T)
  have h3 := abs_add_le (mangoldtLogError T - mangoldtLogError (Real.log 7) -
    shiftedActualChebyshev (Real.exp T) / Real.exp T) (shiftedActualChebyshev 7 / 7)
  linarith

/-- The upper F7 trace is estimated, never deleted by a fictitious boundary zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant0b71c10c10a0088db0217ae566b6f7133a262cfdf5e8c36ef0c53e126930ab49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant0b71c10c10a0088db0217ae566b6f7133a262cfdf5e8c36ef0c53e126930ab49.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69aa6343534e43826a0711f462d2d54ae502241a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
