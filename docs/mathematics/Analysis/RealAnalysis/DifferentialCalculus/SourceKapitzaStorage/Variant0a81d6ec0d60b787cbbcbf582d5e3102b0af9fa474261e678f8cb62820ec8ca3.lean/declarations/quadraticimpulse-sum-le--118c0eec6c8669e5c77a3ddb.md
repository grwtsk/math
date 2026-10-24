# quadraticImpulse_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64f2b7b1-3896-5c37-8383-a66024839bab",
  "kind": "theorem",
  "lexical_name": "quadraticImpulse_sum_le",
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
  "slug": "quadraticimpulse-sum-le--118c0eec6c8669e5c77a3ddb",
  "source": {
    "blob": "50432f5bb6f6b72e4835ccf5fa05eeea642501fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 290,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0a81d6ec0d60b787cbbcbf582d5e3102b0af9fa474261e678f8cb62820ec8ca3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:118c0eec6c8669e5c77a3ddbb17039955fc389dae7744d3c83969f096f8a3487",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0a81d6ec0d60b787cbbcbf582d5e3102b0af9fa474261e678f8cb62820ec8ca3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64f2b7b1-3896-5c37-8383-a66024839bab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticImpulse_sum_le (N : ℕ) :
    (∑ n ∈ Finset.Icc 2 N, quadraticImpulse n) ≤ quadraticConstant := by
  have hC : 0 ≤ quadraticConstant := by
    unfold quadraticConstant
    have hlog : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
    positivity
  by_cases hN : 1 ≤ N
  · have hNreal : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have hshift : (∑ i ∈ Finset.Ico 1 N, quadraticImpulse (i + 1)) =
        ∑ n ∈ Finset.Icc 2 N, quadraticImpulse n := by
      rw [Finset.sum_Ico_add' quadraticImpulse 1 N 1]
      norm_num only [Nat.add_eq, Finset.Ico_add_one_right_eq_Icc]
    have hi : IntervalIntegrable quadraticMajorant MeasureTheory.volume 1 (N : ℝ) :=
      (quadraticMajorant_continuousOn hNreal).intervalIntegrable
    have hg : MeasureTheory.IntegrableOn quadraticMajorant (Set.Ico (1 : ℝ) N) :=
      (intervalIntegrable_iff_integrableOn_Ico_of_le hNreal).mp hi
    have hcompare := sum_Ico_le_integral_of_le
      (f := fun y : ℝ ↦ (Real.log (y + 1)) ^ 2 / (y + 1) ^ (3 / 2 : ℝ))
      (g := quadraticMajorant) hN (fun i hi x hx ↦ ?_)
      (by simpa only [Nat.cast_one] using hg)
    · calc
        (∑ n ∈ Finset.Icc 2 N, quadraticImpulse n) =
            ∑ i ∈ Finset.Ico 1 N, quadraticImpulse (i + 1) := hshift.symm
        _ ≤ ∑ i ∈ Finset.Ico 1 N,
            (Real.log ((i + 1 : ℕ) : ℝ)) ^ 2 / ((i + 1 : ℕ) : ℝ) ^ (3 / 2 : ℝ) :=
          Finset.sum_le_sum (fun i _ ↦ quadraticImpulse_le_log (i + 1))
        _ ≤ (∫ x in (1 : ℝ)..(N : ℝ), quadraticMajorant x) := by
          simpa only [Nat.cast_add, Nat.cast_one] using hcompare
        _ ≤ quadraticConstant := quadraticMajorant_integral_le hNreal
    · rcases hi with ⟨hi₁, hi₂⟩
      have hni : 2 ≤ i + 1 := by omega
      have hl : ((i + 1 : ℕ) : ℝ) - 1 ≤ x := by
        simp only [Nat.cast_add, Nat.cast_one]
        linarith [hx.1]
      have hu : x ≤ ((i + 1 : ℕ) : ℝ) := hx.2.le
      simpa only [Nat.cast_add, Nat.cast_one] using log_atom_le_quadraticMajorant hni hl hu
  · have hN0 : N = 0 := by omega
    simp only [hN0, Finset.Icc_eq_empty_of_lt (by norm_num : (0 : ℕ) < 2),
      Finset.sum_empty]
    exact hC

/-- Literal closed cutoff, including a prime power touching exp(2A). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0a81d6ec0d60b787cbbcbf582d5e3102b0af9fa474261e678f8cb62820ec8ca3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant0a81d6ec0d60b787cbbcbf582d5e3102b0af9fa474261e678f8cb62820ec8ca3.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50432f5bb6f6b72e4835ccf5fa05eeea642501fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
