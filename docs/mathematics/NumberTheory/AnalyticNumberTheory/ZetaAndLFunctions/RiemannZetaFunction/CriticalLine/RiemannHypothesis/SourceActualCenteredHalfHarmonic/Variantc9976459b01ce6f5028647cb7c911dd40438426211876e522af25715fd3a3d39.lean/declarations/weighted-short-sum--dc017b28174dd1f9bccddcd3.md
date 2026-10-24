# weighted_short_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8462f72a-6bfe-0b83-4521-42b422a118e7",
  "kind": "theorem",
  "lexical_name": "weighted_short_sum",
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
  "slug": "weighted-short-sum--dc017b28174dd1f9bccddcd3",
  "source": {
    "blob": "8e00d0b97e67e6bee20f09f0b6edbb6cfe7e265e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfHarmonic/Variantc9976459b01ce6f5028647cb7c911dd40438426211876e522af25715fd3a3d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc017b28174dd1f9bccddcd3dee519f3e55d0d5b229da7809c050994d0b4537e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfHarmonic/Variantc9976459b01ce6f5028647cb7c911dd40438426211876e522af25715fd3a3d39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8462f72a-6bfe-0b83-4521-42b422a118e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_short_sum (U L : ℕ) (hUL : U ≤ L) :
    (∑ n ∈ Finset.Icc 1 L,
      ((shortPart U (moebius : ArithmeticFunction ℝ) * zeta) n) /
        Real.sqrt (n : ℝ)) =
      ∑ d ∈ Finset.Icc 1 U,
        (moebius d : ℝ) / Real.sqrt (d : ℝ) * finiteHalfHarmonic (L / d) := by
  have hc := ArithmeticFunction.sum_Ioc_mul_eq_sum_sum
    (shortPart U halfMoebius) halfOne L
  simp only [← Finset.Icc_add_one_left_eq_Ioc, Nat.zero_add] at hc
  have hl : (∑ n ∈ Finset.Icc 1 L,
      ((shortPart U (moebius : ArithmeticFunction ℝ) * zeta) n) /
        Real.sqrt (n : ℝ)) = ∑ n ∈ Finset.Icc 1 L,
          (shortPart U halfMoebius * halfOne) n := by
    apply Finset.sum_congr rfl
    intro n hn
    exact (weighted_short_convolution U n (by have := (Finset.mem_Icc.mp hn).1; omega)).symm
  rw [hl, hc]
  have he : (∑ d ∈ Finset.Icc 1 L, shortPart U halfMoebius d *
      ∑ m ∈ Finset.Icc 1 (L / d), halfOne m) =
      ∑ d ∈ Finset.Icc 1 L,
        if d ≤ U then (moebius d : ℝ) / Real.sqrt (d : ℝ) *
          finiteHalfHarmonic (L / d) else 0 := by
    apply Finset.sum_congr rfl
    intro d _
    simp [shortPart_apply, halfMoebius_apply, halfOne_apply, finiteHalfHarmonic, ite_mul]
  rw [he, ← Finset.sum_filter]
  congr 1
  ext d
  simp only [Finset.mem_filter, Finset.mem_Icc]
  omega

/-- The actual positive centered inventory has the source sign and a retained plus unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfHarmonic/Variantc9976459b01ce6f5028647cb7c911dd40438426211876e522af25715fd3a3d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfHarmonic/Variantc9976459b01ce6f5028647cb7c911dd40438426211876e522af25715fd3a3d39.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e00d0b97e67e6bee20f09f0b6edbb6cfe7e265e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
