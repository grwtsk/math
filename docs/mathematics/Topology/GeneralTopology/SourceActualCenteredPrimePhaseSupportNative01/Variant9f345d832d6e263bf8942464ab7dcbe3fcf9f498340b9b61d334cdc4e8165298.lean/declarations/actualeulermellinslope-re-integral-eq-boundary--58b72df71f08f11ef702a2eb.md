# actualEulerMellinSlope_re_integral_eq_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70ea389a-dd1c-976f-fc52-a68d668aa1c2",
  "kind": "theorem",
  "lexical_name": "actualEulerMellinSlope_re_integral_eq_boundary",
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
  "slug": "actualeulermellinslope-re-integral-eq-boundary--58b72df71f08f11ef702a2eb",
  "source": {
    "blob": "591edb85d613f5a7bb9943ad630e01be169ca2f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 181,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative01/Variant9f345d832d6e263bf8942464ab7dcbe3fcf9f498340b9b61d334cdc4e8165298.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58b72df71f08f11ef702a2eb98e15d7e2c41e33257a9c1167bb16e40eb818d1d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative01/Variant9f345d832d6e263bf8942464ab7dcbe3fcf9f498340b9b61d334cdc4e8165298.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70ea389a-dd1c-976f-fc52-a68d668aa1c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEulerMellinSlope_re_integral_eq_boundary (A c T : ℝ) (hA : 1 ≤ A) :
    (∫ t in -T..T, (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re) =
      (actualInitialPrimeMellin A ((c : ℂ)+(T : ℂ)*I)).im -
        (actualInitialPrimeMellin A ((c : ℂ)+(-T : ℂ)*I)).im := by
  let s : ℝ → ℂ := fun t => (c : ℂ)+(t : ℂ)*I
  have hs (t : ℝ) : HasDerivAt s I t := by
    simpa [s] using ((hasDerivAt_id t).ofReal_comp.mul_const I).const_add (c : ℂ)
  have hh (t : ℝ) : HasDerivAt (fun t => actualInitialPrimeMellin A (s t))
      (I * actualEulerMellinSlope A (s t)) t := by
    convert! (actualEulerMellin_hasDerivAt A hA (s t)).comp t (hs t) using 1
    exact mul_comm _ _
  have hc := slope_continuous A
  have hi : IntervalIntegrable (fun t => I * actualEulerMellinSlope A (s t))
      volume (-T) T := (by fun_prop : Continuous _).intervalIntegrable _ _
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hh t) hi
  have hm := congrArg Complex.im he
  rw [((RCLike.imCLM : ℂ →L[ℝ] ℝ).intervalIntegral_comp_comm hi).symm] at hm
  simpa only [s, Complex.mul_im, Complex.I_re, Complex.I_im, zero_mul, one_mul,
    zero_add, Complex.sub_im] using hm

/-- Integrated support-function payment with its exact two-endpoint subtraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative01/Variant9f345d832d6e263bf8942464ab7dcbe3fcf9f498340b9b61d334cdc4e8165298.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative01/Variant9f345d832d6e263bf8942464ab7dcbe3fcf9f498340b9b61d334cdc4e8165298.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `591edb85d613f5a7bb9943ad630e01be169ca2f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
