# AntitoneOn.tsum_comp_add_le_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24d6c439-a17e-bc3b-c38c-a1b8b6f5220e",
  "kind": "theorem",
  "lexical_name": "AntitoneOn.tsum_comp_add_le_integral",
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
  "slug": "antitoneon-tsum-comp-add-le-integral--dd5dbec07a89d53f2c0eac71",
  "source": {
    "blob": "1d4dddf3a84b25237de66aac222f7ab3e2f6796a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 262,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd5dbec07a89d53f2c0eac716f81d3d485fa361e31bdf09ead65dcb689b041d7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24d6c439-a17e-bc3b-c38c-a1b8b6f5220e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AntitoneOn.tsum_comp_add_le_integral (N : ℕ) (anti : AntitoneOn f (Ici (N : ℝ)))
    (integrable : IntegrableOn f (Ioi (N : ℝ))) (nonneg : ∀ t ∈ Ioi (N : ℝ), 0 ≤ f t) :
    ∑' (n : ℕ),  f (n + N + 1 : ℕ) ≤ ∫ x in Ioi (N : ℝ), f x := by
  refine tsum_le_of_sum_le' (integral_nonneg_of_ae ?_) fun s ↦ ?_
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] using nonneg
  · obtain ⟨t, ht⟩ := tendsto_finset_range.eventually (Ici_mem_atTop s) |>.exists
    calc
      ∑ i ∈ s, f ↑(i + N + 1) ≤ ∑ i ∈ range t, f ↑(i + N + 1) :=
        sum_le_sum_of_subset_of_nonneg ht <| by grind
      _ = ∑ i ∈ Ico N (N + t), f ↑(i + 1) := by rw [Finset.sum_Ico_eq_sum_range]; grind
      _ ≤ ∫ (x : ℝ) in Set.Ioi (N : ℝ), f x :=
        (anti.mono <| by grind).sum_Ico_le_integral integrable nonneg

/-- **Integral test**: bounds the sum from 1 by an integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d4dddf3a84b25237de66aac222f7ab3e2f6796a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
