# cumulative_square_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3dc1735-e476-9392-13ee-ee4eb54d409a",
  "kind": "theorem",
  "lexical_name": "cumulative_square_integrable",
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
  "slug": "cumulative-square-integrable--ea0a14845798d8bd94d47727",
  "source": {
    "blob": "e54ed6f2f472cad8f6e60d4b80e9d0648f15f6ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 113,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DyadicDiscrepancy/Variant57e6ded3398e1deee410244efae4540fe4937223c7641aaef9e7a4f8ecfa3c03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea0a14845798d8bd94d477271b1034ff16ab67636eac4922e18f422b4a160d1b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DyadicDiscrepancy/Variant57e6ded3398e1deee410244efae4540fe4937223c7641aaef9e7a4f8ecfa3c03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3dc1735-e476-9392-13ee-ee4eb54d409a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cumulative_square_integrable (X : ℕ) :
    Integrable (fun t ↦ cumulative X t^2) unitVolume := by
  let S : ℝ → ℝ := fun t ↦ ∑ n∈window X, coefficient n*step (location X n) t
  have hS2 : Integrable (fun t ↦ S t^2) unitVolume := by
    have he (t : ℝ) : S t^2 =
        ∑ n∈window X, ∑ m∈window X, coefficient n*coefficient m*
          step (max (location X n) (location X m)) t := by
      dsimp [S]
      rw [pow_two, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro n hn
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro m hm
      rw [← step_mul]
      ring
    simp_rw [he]
    exact integrable_finsetSum (window X) (fun n hn ↦
      integrable_finsetSum (window X) (fun m hm ↦
        (step_integrable (max (location X n) (location X m))).const_mul _))
  have hlog : Integrable logarithm unitVolume := logarithm_continuousOn.integrableOn_Icc
  have hSL : Integrable (fun t ↦ S t*logarithm t) unitVolume := by
    have he (t : ℝ) : S t*logarithm t =
        ∑ n∈window X, coefficient n*((Ici (location X n)).indicator logarithm t) := by
      dsimp [S]
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro n hn
      by_cases h : location X n≤t <;> simp [step, Set.indicator, h]
    simp_rw [he]
    exact integrable_finsetSum (window X) (fun n hn ↦
      (hlog.indicator measurableSet_Ici).const_mul _)
  have hlog2 : Integrable (fun t ↦ logarithm t^2) unitVolume :=
    (logarithm_continuousOn.pow 2).integrableOn_Icc
  have he (t : ℝ) : cumulative X t^2 = S t^2-2*(S t*logarithm t)+logarithm t^2 := by
    dsimp [cumulative,S]
    ring
  simp_rw [he]
  exact (hS2.sub (hSL.const_mul 2)).add hlog2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DyadicDiscrepancy/Variant57e6ded3398e1deee410244efae4540fe4937223c7641aaef9e7a4f8ecfa3c03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DyadicDiscrepancy/Variant57e6ded3398e1deee410244efae4540fe4937223c7641aaef9e7a4f8ecfa3c03.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e54ed6f2f472cad8f6e60d4b80e9d0648f15f6ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
