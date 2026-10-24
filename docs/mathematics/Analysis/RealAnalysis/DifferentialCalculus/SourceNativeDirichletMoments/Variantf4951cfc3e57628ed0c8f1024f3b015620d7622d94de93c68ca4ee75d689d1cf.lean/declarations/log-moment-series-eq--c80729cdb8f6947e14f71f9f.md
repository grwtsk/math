# log_moment_series_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3683af53-3dc4-6958-6b2e-263eb1bcac47",
  "kind": "theorem",
  "lexical_name": "log_moment_series_eq",
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
  "slug": "log-moment-series-eq--c80729cdb8f6947e14f71f9f",
  "source": {
    "blob": "98ee08216616376a4ef41843e93b5d397b079ef2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantf4951cfc3e57628ed0c8f1024f3b015620d7622d94de93c68ca4ee75d689d1cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c80729cdb8f6947e14f71f9fe0aa5540a4b8418c86ded6f8da81038116d46dc9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantf4951cfc3e57628ed0c8f1024f3b015620d7622d94de93c68ca4ee75d689d1cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3683af53-3dc4-6958-6b2e-263eb1bcac47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_moment_series_eq (j : ℕ) :
    LSeries (LSeries.logMul^[j] (fun n : ℕ ↦ (vonMangoldt n : ℂ))) 2 =
      (dirichletMoment j : ℂ) := by
  have hab : LSeries.abscissaOfAbsConv
      (LSeries.logMul^[j] (fun n : ℕ ↦ (vonMangoldt n : ℂ))) < (2 : ℂ).re := by
    rw [LSeries.absicssaOfAbsConv_logPowMul]
    exact lt_of_le_of_lt mangoldt_abscissa_le_one
      (by exact_mod_cast (show (1 : ℝ) < 2 by norm_num))
  have hs := LSeriesSummable_of_abscissaOfAbsConv_lt_re hab
  have ht (n : ℕ) :
      LSeries.term (LSeries.logMul^[j] (fun n : ℕ ↦ (vonMangoldt n : ℂ))) 2 n =
        ((vonMangoldt n * (Real.log n) ^ j / (n : ℝ) ^ 2 : ℝ) : ℂ) := by
    by_cases hn : n = 0
    · simp [hn, LSeries.term]
    · rw [LSeries.term_of_ne_zero hn, iterate_logMul_eq, Complex.cpow_two,
        ← Complex.natCast_log]
      push_cast
      ring
  have hp : (∑ n ∈ Finset.range 2,
      LSeries.term (LSeries.logMul^[j] (fun n : ℕ ↦ (vonMangoldt n : ℂ))) 2 n) = 0 := by
    simp only [Finset.sum_range_succ, Finset.sum_range_zero]
    simp [ht, iterate_logMul_eq]
  unfold LSeries
  rw [← hs.sum_add_tsum_nat_add 2, hp, zero_add]
  simp_rw [ht]
  exact (Complex.ofReal_tsum (fun n : ℕ ↦ vonMangoldt (n + 2) *
    (Real.log ((n + 2 : ℕ) : ℝ)) ^ j / ((n + 2 : ℕ) : ℝ) ^ 2)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantf4951cfc3e57628ed0c8f1024f3b015620d7622d94de93c68ca4ee75d689d1cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variantf4951cfc3e57628ed0c8f1024f3b015620d7622d94de93c68ca4ee75d689d1cf.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ee08216616376a4ef41843e93b5d397b079ef2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
