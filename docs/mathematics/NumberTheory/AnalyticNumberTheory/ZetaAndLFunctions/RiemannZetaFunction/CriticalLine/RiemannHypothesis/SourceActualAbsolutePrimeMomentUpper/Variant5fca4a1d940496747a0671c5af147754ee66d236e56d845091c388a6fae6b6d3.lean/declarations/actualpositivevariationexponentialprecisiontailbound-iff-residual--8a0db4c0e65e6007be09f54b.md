# actualPositiveVariationExponentialPrecisionTailBound_iff_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e487e0c2-3c27-4c97-c5a1-fac7ea5e4891",
  "kind": "theorem",
  "lexical_name": "actualPositiveVariationExponentialPrecisionTailBound_iff_residual",
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
  "slug": "actualpositivevariationexponentialprecisiontailbound-iff-residual--8a0db4c0e65e6007be09f54b",
  "source": {
    "blob": "c52e163417e37caafd5b2f2a13cd0cc98db55c8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 155,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant5fca4a1d940496747a0671c5af147754ee66d236e56d845091c388a6fae6b6d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a0db4c0e65e6007be09f54b5752610a045a756c05f1a5114d54f66a395f9691",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant5fca4a1d940496747a0671c5af147754ee66d236e56d845091c388a6fae6b6d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e487e0c2-3c27-4c97-c5a1-fac7ea5e4891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPositiveVariationExponentialPrecisionTailBound_iff_residual :
    ActualPositiveVariationExponentialPrecisionTailBound ↔
      ∃ K : ℝ, 0 ≤ K ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
        mertensResidual A ≤ K := by
  constructor
  · rintro ⟨K,hK,R,hR,hbound⟩
    have hD := actualAbsolutePrimeMomentUpperConstant_pos
    refine ⟨2 * actualAbsolutePrimeMomentUpperConstant * K,by positivity,R,hR,?_⟩
    intro A hA
    obtain ⟨hV,hfrac⟩ := hbound A hA
    have hu := actualClosedAbsolutePrimeMoment_le (hR.trans hA)
    have hs := actualResidual_eq_twice_variation_skew (hR.trans hA) (ne_of_gt hV)
    have hA0 : 0 < A := by linarith [hR.trans hA]
    have hscale : 0 ≤ K * A ^ 9 * Real.exp (-A) := by positivity
    calc
      _ = 2 * actualClosedAbsolutePrimeMoment A *
          (actualPositivePrimeVariation A / actualClosedAbsolutePrimeMoment A - 1 / 2) := hs
      _ ≤ 2 * actualClosedAbsolutePrimeMoment A * (K * A ^ 9 * Real.exp (-A)) :=
        mul_le_mul_of_nonneg_left (by linarith) (by positivity)
      _ ≤ 2 * (actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9) *
          (K * A ^ 9 * Real.exp (-A)) := by nlinarith [mul_le_mul_of_nonneg_right hu hscale]
      _ = _ := by rw [Real.exp_neg]; field_simp
  · rintro ⟨K,hK,R,hR,hcap⟩
    have hc := actualNegativeEdgeConstant_pos
    obtain ⟨R1,hR1,hfrac⟩ := actualResidual_cap_implies_positive_fraction_exp_budget hK hR hcap
    obtain ⟨Rv,hRv,hpositive⟩ := actualAbsoluteVariation_inverse_eventually_exp_bound
    refine ⟨K / actualNegativeEdgeConstant,by positivity,max R1 Rv,
      hR1.trans (le_max_left _ _),?_⟩
    intro A hA
    have hA1 : R1 ≤ A := (le_max_left _ _).trans hA
    obtain ⟨hV,_⟩ := hpositive A ((le_max_right _ _).trans hA)
    refine ⟨hV,?_⟩
    convert hfrac A hA1 using 1 <;> ring

/-- This exponential precision criterion is equivalent to the unchanged original Estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant5fca4a1d940496747a0671c5af147754ee66d236e56d845091c388a6fae6b6d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsolutePrimeMomentUpper/Variant5fca4a1d940496747a0671c5af147754ee66d236e56d845091c388a6fae6b6d3.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c52e163417e37caafd5b2f2a13cd0cc98db55c8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
