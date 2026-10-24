# AntitoneOn.summable_of_integrableOn_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eac12fcb-c8ec-e513-b2d2-653d9fdf2dd7",
  "kind": "theorem",
  "lexical_name": "AntitoneOn.summable_of_integrableOn_Ioi",
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
  "slug": "antitoneon-summable-of-integrableon-ioi--79c83fd92de39cf59d4be638",
  "source": {
    "blob": "1d4dddf3a84b25237de66aac222f7ab3e2f6796a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 246,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79c83fd92de39cf59d4be6387258f3e0e669c45e64d7a097e0510145ece9aa13",
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

Occurrence: `result:eac12fcb-c8ec-e513-b2d2-653d9fdf2dd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AntitoneOn.summable_of_integrableOn_Ioi {N : ℕ} (anti : AntitoneOn f (Ici (N : ℝ)))
    (integrable : IntegrableOn f (Ioi (N : ℝ))) (nonneg : ∀ t ∈ Ioi (N : ℝ), 0 ≤ f t) :
    Summable (fun (n : ℕ) ↦ f n) := by
  rw [← summable_nat_add_iff (N + 1)]
  refine summable_of_sum_range_le (c := ∫ t in Ioi (N : ℝ), f t) (by grind) fun M ↦ ?_
  calc
    _ = ∑ n ∈ Finset.Ico N (N + M), f (n + 1 : ℕ) := by rw [Finset.sum_Ico_eq_sum_range]; grind
    _ ≤ _ := (anti.mono Icc_subset_Ici_self).sum_Ico_le_integral integrable nonneg

/-- **Integral test**: a nonnegative antitone function is summable if it is integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant696a3e498e1ae6d288c2fde5630121eb6290e3a8d36f817494b61c286429c66d.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d4dddf3a84b25237de66aac222f7ab3e2f6796a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
