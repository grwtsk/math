# actualClosedPrimeHead_eq_centeredBulk_add_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d0bb8c3-642c-2e5f-4115-a83f549173ce",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimeHead_eq_centeredBulk_add_boundary",
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
  "slug": "actualclosedprimehead-eq-centeredbulk-add-boundary--f29b973a802a2a30cc277d11",
  "source": {
    "blob": "4c968300fd88c56739566f70cb8e0c2e092186c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant8baa130ba475ab09f6638473ad19c56b05855452651ef835afa7093cdb8ffe25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f29b973a802a2a30cc277d114095314ae5a28729f91e281b1b8c6a0b5699b4e6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant8baa130ba475ab09f6638473ad19c56b05855452651ef835afa7093cdb8ffe25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d0bb8c3-642c-2e5f-4115-a83f549173ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimeHead_eq_centeredBulk_add_boundary
    (A c T : ℝ) (hA : 1 ≤ A) :
    actualClosedPrimeHead A c T =
      actualCenteredPrimeLogBulk A c T + actualCenteredPrimeLogBoundary A c T := by
  let s : ℝ → ℂ := fun t => (c : ℂ) + (t : ℂ) * I
  let P : ℝ → ℂ := fun t =>
    actualClosedPrimeLogPotential A (s t) - actualClosedPrimeLogPotential A (c : ℂ)
  have hs (t : ℝ) : HasDerivAt s I t := by
    simpa [s] using ((hasDerivAt_id t).ofReal_comp.mul_const I).const_add (c : ℂ)
  have hh (t : ℝ) : HasDerivAt (fun t => actualInitialPrimeMellin A (s t))
      (I * actualEulerMellinSlope A (s t)) t := by
    convert! (actualEulerMellin_hasDerivAt A hA (s t)).comp t (hs t) using 1
    exact mul_comm _ _
  have hp (t : ℝ) : HasDerivAt P (-I * actualClosedPrimeDirichletPolynomial A (s t)) t := by
    have h := ((actualClosedPrimeLogPotential_hasDerivAt A (s t)).comp t (hs t)).sub_const
      (actualClosedPrimeLogPotential A (c : ℂ))
    convert! h using 1
    rw [neg_mul, mul_comm I]
    simp only [neg_mul]
  have hi := intervalIntegral.integral_deriv_mul_eq_sub
    (a := -T) (b := T) (fun t _ => hh t) (fun t _ => hp t)
    ((by have h := slope_continuous A; fun_prop : Continuous
      (fun t => I * actualEulerMellinSlope A (s t))).intervalIntegrable _ _)
    ((by have h := polynomial_continuous A; fun_prop : Continuous
      (fun t => -I * actualClosedPrimeDirichletPolynomial A (s t))).intervalIntegrable _ _)
  have he : (fun t : ℝ => I * actualEulerMellinSlope A (s t) * P t +
      actualInitialPrimeMellin A (s t) * (-I * actualClosedPrimeDirichletPolynomial A (s t))) =
      (fun t => I * (actualEulerMellinSlope A (s t) * P t) -
        I * (actualInitialPrimeMellin A (s t) * actualClosedPrimeDirichletPolynomial A (s t))) := by
    funext t
    ring
  rw [he, intervalIntegral.integral_sub] at hi
  · simp only [intervalIntegral.integral_const_mul] at hi
    unfold actualClosedPrimeHead actualCenteredPrimeLogBulk actualCenteredPrimeLogBoundary
    dsimp [s, P] at hi
    simp only [Complex.ofReal_neg] at hi
    have hi' := congrArg (fun z : ℂ => I * z) hi
    simp only [mul_sub, ← mul_assoc, Complex.I_mul_I, neg_one_mul] at hi'
    linear_combination (1 / (2 * Real.pi) : ℂ) * hi'
  · exact (actualCenteredPrimeLogBulk_intervalIntegrable A c T).const_mul I
  · have hm := mellin_continuous A hA
    have hd := polynomial_continuous A
    exact (by fun_prop : Continuous _).intervalIntegrable _ _

/-- The real part is the literal signed phase integral, with the imaginary cross term intact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant8baa130ba475ab09f6638473ad19c56b05855452651ef835afa7093cdb8ffe25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant8baa130ba475ab09f6638473ad19c56b05855452651ef835afa7093cdb8ffe25.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c968300fd88c56739566f70cb8e0c2e092186c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
