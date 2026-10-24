# abs_integral_D1_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:789b05df-0b03-52bd-12fa-e80e4f8801f2",
  "kind": "theorem",
  "lexical_name": "abs_integral_D1_sub_le",
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
  "slug": "abs-integral-d1-sub-le--53a4eb7c17c072f5183068bb",
  "source": {
    "blob": "036f84b7cb8355e2f941db818033eff3ba55d236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 329,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53a4eb7c17c072f5183068bb2d330a2728a937025b02f5949b19f112d51a765a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:789b05df-0b03-52bd-12fa-e80e4f8801f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_integral_D1_sub_le (K : ℕ) {s : ℝ} (hs0 : 0 ≤ s) (hs1 : s ≤ 1) :
    |(∫ u in (0:ℝ)..s, D1 u) - ∫ u in (0:ℝ)..s, D1trunc K u| ≤ ∑' k, D1coeff (k + K) := by
  rw [← intervalIntegral.integral_sub (continuous_D1.intervalIntegrable _ _)
    ((continuous_D1trunc K).intervalIntegrable _ _)]
  have hb : ∀ u ∈ Set.Ioc 0 s, ‖D1 u - D1trunc K u‖ ≤ ∑' k, D1coeff (k + K) := by
    intro u hu
    rw [Real.norm_eq_abs]
    exact abs_D1_sub_D1trunc_le K hu.1.le (hu.2.trans hs1)
  have h := intervalIntegral.norm_integral_le_of_norm_le_const (a := 0) (b := s)
    (f := fun u => D1 u - D1trunc K u) (C := ∑' k, D1coeff (k + K)) ?_
  · rw [sub_zero, abs_of_nonneg hs0] at h
    calc |∫ u in (0:ℝ)..s, D1 u - D1trunc K u| ≤ (∑' k, D1coeff (k + K)) * s := h
      _ ≤ (∑' k, D1coeff (k + K)) * 1 :=
          mul_le_mul_of_nonneg_left hs1 (tsum_nonneg fun _ => D1coeff_nonneg _)
      _ = _ := mul_one _
  · intro u hu
    rw [Set.uIoc_of_le hs0] at hu
    exact hb u hu

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `036f84b7cb8355e2f941db818033eff3ba55d236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
