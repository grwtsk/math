# beta_weighted_long_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbe222af-a5b6-92d4-45b3-e0c305e20330",
  "kind": "theorem",
  "lexical_name": "beta_weighted_long_sum",
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
  "slug": "beta-weighted-long-sum--ac404df494f5ad81bcc157a1",
  "source": {
    "blob": "ae12e4c3ea1acd0bb7fb6bcc19a200981332431e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant1987b3d57e282f6a0b11eabd90e6ed371892e923f4be57b385693b31ad369a8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac404df494f5ad81bcc157a132bb42a09d4778fe3c399f6b3e9eec2751a0f1cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant1987b3d57e282f6a0b11eabd90e6ed371892e923f4be57b385693b31ad369a8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbe222af-a5b6-92d4-45b3-e0c305e20330`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem beta_weighted_long_sum (U N : ℕ) (hU : 1 ≤ U) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Ioc U N, beta U n * f n) =
      -∑ d ∈ Finset.Icc 1 U, realMoebius d *
        ∑ k ∈ Finset.Ioc (U / d) (N / d), f (d * k) := by
  classical
  have hb (n : ℕ) (hn : n ∈ Finset.Ioc U N) :
      beta U n * f n =
        -(∑ d ∈ Finset.Icc 1 U, realMoebius d *
          (if d ∣ n then f n else 0)) := by
    have hn1 : 1 < n := by have := (Finset.mem_Ioc.mp hn).1; omega
    rw [beta_eq_delta_sub_short, if_neg (by omega), zero_sub,
      short_divisor_sum_eq_indicator U n (by omega), neg_mul, Finset.sum_mul]
    congr 1
    apply Finset.sum_congr rfl
    intro d _
    split_ifs <;> simp [realMoebius]
  calc
    _ = ∑ n ∈ Finset.Ioc U N,
        -(∑ d ∈ Finset.Icc 1 U, realMoebius d *
          (if d ∣ n then f n else 0)) := Finset.sum_congr rfl hb
    _ = -(∑ d ∈ Finset.Icc 1 U, ∑ n ∈ Finset.Ioc U N,
        realMoebius d * (if d ∣ n then f n else 0)) := by
      rw [Finset.sum_neg_distrib, Finset.sum_comm]
    _ = _ := by
      congr 1
      apply Finset.sum_congr rfl
      intro d hd
      rw [← Finset.mul_sum]
      congr 1
      have hp : 0 < d := (Finset.mem_Icc.mp hd).1
      have hi : Finset.Icc (U / d + 1) (N / d) = Finset.Ioc (U / d) (N / d) := by
        ext k
        simp only [Finset.mem_Icc, Finset.mem_Ioc]
        omega
      simpa only [hi] using sum_multiples_eq_quotient_interval U N d hp f

/-- The actual full Type-II rectangle retains every physical quotient and its raw diagonal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant1987b3d57e282f6a0b11eabd90e6ed371892e923f4be57b385693b31ad369a8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant1987b3d57e282f6a0b11eabd90e6ed371892e923f4be57b385693b31ad369a8b.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae12e4c3ea1acd0bb7fb6bcc19a200981332431e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
