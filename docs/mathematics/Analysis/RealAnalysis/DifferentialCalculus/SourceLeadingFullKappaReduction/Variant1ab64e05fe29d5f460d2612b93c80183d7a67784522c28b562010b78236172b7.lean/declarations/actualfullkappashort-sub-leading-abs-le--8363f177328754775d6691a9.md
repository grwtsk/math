# actualFullKappaShort_sub_leading_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:737df6b0-a977-f3f8-7805-0de5b991f98d",
  "kind": "theorem",
  "lexical_name": "actualFullKappaShort_sub_leading_abs_le",
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
  "slug": "actualfullkappashort-sub-leading-abs-le--8363f177328754775d6691a9",
  "source": {
    "blob": "168fcab3b0924838156615427fe01d44899d0ba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 241,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant1ab64e05fe29d5f460d2612b93c80183d7a67784522c28b562010b78236172b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8363f177328754775d6691a9ae428d2b9c6f184aab5c23b01b4c950549383d5d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant1ab64e05fe29d5f460d2612b93c80183d7a67784522c28b562010b78236172b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:737df6b0-a977-f3f8-7805-0de5b991f98d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFullKappaShort_sub_leading_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualFullKappaShortSector A - fullPositiveKappa 1 * actualWeightedMoebiusHalfSum A| ≤
      fullKappaShortBudget A := by
  have hA1 : 1 ≤ A := by linarith
  let U := vaughanCutoff A
  let T := Real.log (U : ℝ)
  let D := fullKappaJetRowBudget A T
  have hU : 1 ≤ U := vaughanCutoff_pos A hA1
  have hT : 0 ≤ T := Real.log_nonneg (by exact_mod_cast hU)
  have hD : 0 ≤ D := by unfold D fullKappaJetRowBudget; positivity
  have hrow (d : ℕ) (hd : d ∈ Finset.Icc 1 U) :
      |correctedFourKappaJet A (Real.log (d : ℝ)) - fullPositiveKappa 1| ≤ D := by
    have hd1 : (1 : ℝ) ≤ d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
    have hdU : (d : ℝ) ≤ U := by exact_mod_cast (Finset.mem_Icc.mp hd).2
    apply fullKappaJet_sub_leading_abs_le hA (Real.log_nonneg hd1)
    exact Real.log_le_log (by linarith : (0 : ℝ) < d) hdU
  have hE : actualFullKappaShortSector A -
      fullPositiveKappa 1 * actualWeightedMoebiusHalfSum A =
      ∑ d ∈ Finset.Icc 1 U, realMoebius d / Real.sqrt (d : ℝ) *
        (correctedFourKappaJet A (Real.log (d : ℝ)) - fullPositiveKappa 1) := by
    unfold actualFullKappaShortSector actualWeightedMoebiusHalfSum
    rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro d _
    ring
  rw [hE]
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 U, |realMoebius d| / Real.sqrt (d : ℝ) * D := by
      apply (Finset.abs_sum_le_sum_abs _ _).trans
      apply Finset.sum_le_sum
      intro d hd
      rw [abs_mul, abs_div, abs_of_nonneg (Real.sqrt_nonneg _)]
      exact mul_le_mul_of_nonneg_left (hrow d hd) (by positivity)
    _ = (∑ d ∈ Finset.Icc 1 U, |realMoebius d| / Real.sqrt (d : ℝ)) * D :=
      (Finset.sum_mul _ _ _).symm
    _ ≤ 2 * A * D := mul_le_mul_of_nonneg_right (actualMoebiusSqrtMass_le A hA1) hD
    _ = fullKappaShortBudget A := rfl

/-- The explicit complete error has logarithmic numerator and inverse scale decay. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant1ab64e05fe29d5f460d2612b93c80183d7a67784522c28b562010b78236172b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant1ab64e05fe29d5f460d2612b93c80183d7a67784522c28b562010b78236172b7.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `168fcab3b0924838156615427fe01d44899d0ba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
