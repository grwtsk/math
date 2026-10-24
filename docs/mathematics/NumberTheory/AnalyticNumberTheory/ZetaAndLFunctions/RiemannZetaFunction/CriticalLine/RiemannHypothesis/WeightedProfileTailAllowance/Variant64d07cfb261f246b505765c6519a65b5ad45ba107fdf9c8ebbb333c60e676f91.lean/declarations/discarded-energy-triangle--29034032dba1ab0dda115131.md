# discarded_energy_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32580762-32aa-7a41-6a24-59a628b6c1a2",
  "kind": "theorem",
  "lexical_name": "discarded_energy_triangle",
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
  "slug": "discarded-energy-triangle--29034032dba1ab0dda115131",
  "source": {
    "blob": "72c4bf7b6e2f47a80baf2e9308ea42498501b7a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedProfileTailAllowance/Variant64d07cfb261f246b505765c6519a65b5ad45ba107fdf9c8ebbb333c60e676f91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29034032dba1ab0dda115131bab0257c55cb18c1dd6f60305a35057cd120896b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedProfileTailAllowance/Variant64d07cfb261f246b505765c6519a65b5ad45ba107fdf9c8ebbb333c60e676f91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32580762-32aa-7a41-6a24-59a628b6c1a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discarded_energy_triangle {A : ℝ} (hA : 1 ≤ A) (t H : ℝ) :
    ‖weightedSourceState A t hA - sourceCutoff H (weightedSourceState A t hA)‖ ^ 2 ≤
      coefficientMass A t ^ 2 * profileTailEnergy A H := by
  rw [discarded_weighted_arithmetic_tail hA]
  have hi := (weighted_arithmetic_density_integrable hA t).integrableOn
    (s := angularTailSet H)
  have hj := ((profileSquare_integrable hA).const_mul (coefficientMass A t ^ 2)).integrableOn
    (s := angularTailSet H)
  have hb : (∫ ξ in angularTailSet H,
      Complex.normSq (negativeAngularTransform (prescribedSource A) ξ) *
        Complex.normSq (arithmeticSpectrum A t ξ)) ≤
      ∫ ξ in angularTailSet H, coefficientMass A t ^ 2 * profileSquare A ξ := by
    apply integral_mono hi hj
    intro ξ
    have hs := pow_le_pow_left₀ (norm_nonneg _) (arithmeticSpectrum_triangle A t ξ) 2
    rw [← Complex.normSq_eq_norm_sq] at hs
    exact (mul_le_mul_of_nonneg_left hs (Complex.normSq_nonneg _)).trans_eq
      (by unfold profileSquare; ring)
  have h := mul_le_mul_of_nonneg_left hb (by positivity : 0 ≤ (2 * Real.pi)⁻¹)
  rw [integral_const_mul] at h
  exact h.trans_eq (by unfold profileTailEnergy; ring)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedProfileTailAllowance/Variant64d07cfb261f246b505765c6519a65b5ad45ba107fdf9c8ebbb333c60e676f91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedProfileTailAllowance/Variant64d07cfb261f246b505765c6519a65b5ad45ba107fdf9c8ebbb333c60e676f91.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72c4bf7b6e2f47a80baf2e9308ea42498501b7a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
