# actual_product_eq_low_product_on_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02d3e060-3534-2845-6288-66ad927ecdda",
  "kind": "theorem",
  "lexical_name": "actual_product_eq_low_product_on_left",
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
  "slug": "actual-product-eq-low-product-on-left--2572ca7d39e1957798c978ce",
  "source": {
    "blob": "4742a5db04469e059a220254d86c2f6a73589c0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 493,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant1e226e4e09798326c6de684081daac583640a2937d02c21d2a320169d74663bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2572ca7d39e1957798c978cef9ee9e9b978ba3eafe927e83a1e92df75ceb4fd3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant1e226e4e09798326c6de684081daac583640a2937d02c21d2a320169d74663bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02d3e060-3534-2845-6288-66ad927ecdda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_product_eq_low_product_on_left
    (r : ℝ → ℝ) (hc : Continuous r) {A v : ℝ} (hA : 1 ≤ A)
    (hs : tsupport r ⊆ Icc (-A) A)
    (hv : v < Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) - A) :
    actualTimeProfile r A v * actualReflectedProfile r A v =
      actualLowTimeProfile r A v * actualReflectedProfile r A v := by
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  by_cases hN : U + 1 ≤ N
  · have hU0 : 0 < (U : ℝ) := by
      exact_mod_cast (by have := vaughanCutoff_pos A hA; dsimp only [U]; omega : 0 < U)
    have hla : Real.log (U : ℝ) ≤ Real.log ((U + 1 : ℕ) : ℝ) :=
      Real.log_le_log hU0 (by exact_mod_cast Nat.le_succ U)
    have hab : Real.log ((U + 1 : ℕ) : ℝ) ≤ Real.log (N : ℝ) :=
      Real.log_le_log (by positivity) (by exact_mod_cast hN)
    have hl := SourceActualMixedWorkFubini.profileX_integrand_intervalIntegrable
      r hc (Real.log (U : ℝ)) (Real.log ((U + 1 : ℕ) : ℝ)) v hla
    have hh := SourceActualMixedWorkFubini.profileX_integrand_intervalIntegrable
      r hc (Real.log ((U + 1 : ℕ) : ℝ)) (Real.log (N : ℝ)) v hab
    have he := intervalIntegral.integral_add_adjacent_intervals hl hh
    have hz := high_time_row_zero r hs hab hv
    have hrow : actualTimeProfile r A v = actualLowTimeProfile r A v := by
      change timeRow r (Real.log (U : ℝ)) (Real.log (N : ℝ)) v =
        timeRow r (Real.log (U : ℝ)) (Real.log ((U + 1 : ℕ) : ℝ)) v
      change timeRow r (Real.log (U : ℝ)) (Real.log ((U + 1 : ℕ) : ℝ)) v +
        timeRow r (Real.log ((U + 1 : ℕ) : ℝ)) (Real.log (N : ℝ)) v =
        timeRow r (Real.log (U : ℝ)) (Real.log (N : ℝ)) v at he
      rw [hz, add_zero] at he
      exact he.symm
    rw [hrow]
  · have hK : N / (U + 1) ≤ U + 1 := (Nat.div_le_self _ _).trans (by omega)
    have hy : actualReflectedProfile r A v = 0 := by
      change (∑ k ∈ Finset.Ico (U + 1) (N / (U + 1)),
        (∑ n ∈ Finset.Ioc U k, centeredBeta U n) * cellRow r (k : ℝ) v) = 0
      rw [Finset.Ico_eq_empty_of_le hK, Finset.sum_empty]
    rw [hy, mul_zero, mul_zero]

/-- High times vanish pointwise on the exact strict spatial strip, in both source sectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant1e226e4e09798326c6de684081daac583640a2937d02c21d2a320169d74663bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant1e226e4e09798326c6de684081daac583640a2937d02c21d2a320169d74663bd.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4742a5db04469e059a220254d86c2f6a73589c0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
