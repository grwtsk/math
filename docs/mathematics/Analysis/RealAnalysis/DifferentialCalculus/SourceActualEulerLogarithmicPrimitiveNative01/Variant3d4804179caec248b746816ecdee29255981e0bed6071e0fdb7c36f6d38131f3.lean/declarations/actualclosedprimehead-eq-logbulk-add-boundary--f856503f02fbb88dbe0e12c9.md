# actualClosedPrimeHead_eq_logBulk_add_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e394165-574c-2f48-a539-fa89324afef2",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimeHead_eq_logBulk_add_boundary",
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
  "slug": "actualclosedprimehead-eq-logbulk-add-boundary--f856503f02fbb88dbe0e12c9",
  "source": {
    "blob": "bd9d46b50b9485ca535de21b1913b28acd2b23c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative01/Variant3d4804179caec248b746816ecdee29255981e0bed6071e0fdb7c36f6d38131f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f856503f02fbb88dbe0e12c904997a6510a5241322587fc002b4d3e61781b4f7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative01/Variant3d4804179caec248b746816ecdee29255981e0bed6071e0fdb7c36f6d38131f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e394165-574c-2f48-a539-fa89324afef2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimeHead_eq_logBulk_add_boundary
    (A c T : ℝ) (hA : 1 ≤ A) :
    actualClosedPrimeHead A c T =
      actualClosedPrimeLogBulk A c T + actualClosedPrimeLogBoundary A c T := by
  let s : ℝ → ℂ := fun t => (c:ℂ)+(t:ℂ)*I
  have hs (t : ℝ) : HasDerivAt s I t := by
    simpa [s] using ((hasDerivAt_id t).ofReal_comp.mul_const I).const_add (c:ℂ)
  have hh (t : ℝ) : HasDerivAt (fun t => actualInitialPrimeMellin A (s t))
      (I*actualEulerMellinSlope A (s t)) t := by
    convert (actualEulerMellin_hasDerivAt A hA (s t)).comp t (hs t) using 1 <;> ring
  have hp (t : ℝ) : HasDerivAt (fun t => actualClosedPrimeLogPotential A (s t))
      (-I*actualClosedPrimeDirichletPolynomial A (s t)) t := by
    convert (actualClosedPrimeLogPotential_hasDerivAt A (s t)).comp t (hs t)
      using 1 <;> ring
  have hi := intervalIntegral.integral_deriv_mul_eq_sub
    (a := -T) (b := T) (fun t _ => hh t) (fun t _ => hp t)
    ((by have h := slope_continuous A; fun_prop : Continuous
      (fun t => I*actualEulerMellinSlope A (s t))).intervalIntegrable _ _)
    ((by have h := polynomial_continuous A; fun_prop : Continuous
      (fun t => -I*actualClosedPrimeDirichletPolynomial A (s t))).intervalIntegrable _ _)
  have he : (fun t : ℝ => I*actualEulerMellinSlope A (s t) *
      actualClosedPrimeLogPotential A (s t) + actualInitialPrimeMellin A (s t) *
      (-I*actualClosedPrimeDirichletPolynomial A (s t))) =
      (fun t => I*(actualEulerMellinSlope A (s t)*actualClosedPrimeLogPotential A (s t)) -
        I*(actualInitialPrimeMellin A (s t)*actualClosedPrimeDirichletPolynomial A (s t))) := by
    funext t
    ring
  rw [he, intervalIntegral.integral_sub] at hi
  · simp only [intervalIntegral.integral_const_mul] at hi
    unfold actualClosedPrimeHead actualClosedPrimeLogBulk actualClosedPrimeLogBoundary
    change _ = _ + (I/(2*Real.pi):ℂ) *
      (actualInitialPrimeMellin A (s T)*actualClosedPrimeLogPotential A (s T) -
        actualInitialPrimeMellin A (s (-T))*actualClosedPrimeLogPotential A (s (-T)))
    have hI : (I:ℂ)^2 = -1 := by norm_num
    linear_combination (I/(2*Real.pi):ℂ)*hi
  · exact (actualClosedPrimeLogBulk_intervalIntegrable A c T).const_mul I
  · have hm := mellin_continuous A hA
    have hd := polynomial_continuous A
    exact (by fun_prop : Continuous _).intervalIntegrable _ _

end
end FormalResearch.RiemannHypothesis.SourceActualEulerLogarithmicPrimitive
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative01/Variant3d4804179caec248b746816ecdee29255981e0bed6071e0fdb7c36f6d38131f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative01/Variant3d4804179caec248b746816ecdee29255981e0bed6071e0fdb7c36f6d38131f3.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd9d46b50b9485ca535de21b1913b28acd2b23c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
