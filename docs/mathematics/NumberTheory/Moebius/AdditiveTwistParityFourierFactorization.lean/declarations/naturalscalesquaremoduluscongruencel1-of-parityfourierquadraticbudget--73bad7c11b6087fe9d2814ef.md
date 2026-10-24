# naturalScaleSquareModulusCongruenceL1_of_parityFourierQuadraticBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0dbfebfc-87cc-9e11-bbea-9209903c1bdd",
  "kind": "theorem",
  "lexical_name": "naturalScaleSquareModulusCongruenceL1_of_parityFourierQuadraticBudget",
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
  "slug": "naturalscalesquaremoduluscongruencel1-of-parityfourierquadraticbudget--73bad7c11b6087fe9d2814ef",
  "source": {
    "blob": "46716fe8e3f0bd6d453ac48399e2e84a36ed168b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 442,
    "path": "GRWTSK/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73bad7c11b6087fe9d2814ef8413115e40f76361d98f34c69756917319d3fae3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dbfebfc-87cc-9e11-bbea-9209903c1bdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem naturalScaleSquareModulusCongruenceL1_of_parityFourierQuadraticBudget
    (hFourier : DyadicNaturalScaleParityFourierQuadraticBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hFourier δ hδ
  refine ⟨C, hC, ?_⟩
  intro j b hb
  refine (mertensEndpointCrossCongruenceL1Mass_eq_effectiveSupport b).trans_le ?_
  calc
    (∑ d ∈ effectiveEndpointSquareModulusSet b,
      |mertensEndpointCrossCongruenceFibre b d|) ≤
      parityFourierEndpointMajorant b := by
        unfold parityFourierEndpointMajorant
        apply Finset.sum_le_sum
        intro d hd
        have hdpos :
            0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
        simp only [dif_pos hdpos]
        let : NeZero d := ⟨ne_of_gt hdpos⟩
        rw [← Real.norm_eq_abs, ← Complex.norm_real]
        rw [complex_cast_mertensEndpointCrossCongruenceFibre_eq_additiveFourier]
        unfold additiveFourierEndpointCrossCongruenceFibre
        have hqpos : 0 < ((d * d : ℕ) : ℝ) := by positivity
        calc
          ‖(((d * d : ℕ) : ℂ))⁻¹ *
              ∑ k : ZMod (d * d),
                additiveTwistedEndpointCrossCorrelation b d k‖ ≤
            (((d * d : ℕ) : ℝ))⁻¹ *
              ∑ k : ZMod (d * d),
                ‖additiveTwistedEndpointCrossCorrelation b d k‖ := by
                  rw [norm_mul, norm_inv, norm_natCast]
                  gcongr
                  exact norm_sum_le _ _
          _ ≤ (((d * d : ℕ) : ℝ))⁻¹ *
              ∑ k : ZMod (d * d),
                parityFourierQuadraticMajorant b d k := by
                  gcongr with k
                  exact
                    norm_additiveTwistedEndpointCrossCorrelation_le_parityFourierMajorant
                      b d k
    _ ≤ C * (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) :=
      hscale j b hb

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.additiveTwistedEndpointCrossCorrelation_eq_endpointPairs
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.two_mul_additiveTwistedEndpointCrossCorrelation_eq_parityFourier
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.naturalScaleSquareModulusCongruenceL1_of_parityFourierQuadraticBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46716fe8e3f0bd6d453ac48399e2e84a36ed168b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
