# complete_pulse_debt_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:373e79c5-9df2-d466-e2cf-d7dcd82114bf",
  "kind": "theorem",
  "lexical_name": "complete_pulse_debt_lower",
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
  "slug": "complete-pulse-debt-lower--eee2514d62d69db68aae274c",
  "source": {
    "blob": "2b0dcefb40faac6de8ee36761c470caf8c1d96dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularPulseDebt/Variant8fd89cc8aa0ba2b4f578a0950f80b7810b84985ac6a81ff32e3fb46126961f07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eee2514d62d69db68aae274c4ea66b48342b11e81e35aff2120ffd2c7c889bfe",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularPulseDebt/Variant8fd89cc8aa0ba2b4f578a0950f80b7810b84985ac6a81ff32e3fb46126961f07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:373e79c5-9df2-d466-e2cf-d7dcd82114bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_pulse_debt_lower {M : ℕ} (hM : 2 ≤ M) {a : ℝ} (ha : 0 ≤ a) :
    a / (16 * M) ≤ debt M a := by
  let idx : ℕ → ℕ := fun i ↦ M ^ 2 + (M + 1) / 2 + i
  let central : Finset ℕ := (Finset.range M).image idx
  have hM0 : (0 : ℝ) < M := by exact_mod_cast (show 0 < M by omega)
  have hsub : central ⊆ inventory M := by
    intro n hn
    obtain ⟨i, hi, rfl⟩ := Finset.mem_image.mp hn
    exact Finset.mem_Icc.mpr (retained_central_indices_belong (Finset.mem_range.mp hi))
  have hsum : (∑ n ∈ central, storage M a n * cellClock n (n + 1 : ℕ)) =
      ∑ i ∈ Finset.range M, storage M a (idx i) * cellClock (idx i) (idx i + 1 : ℕ) := by
    dsimp only [central]
    rw [Finset.sum_image]
    intro i _ j _ hij
    dsimp only [idx] at hij
    omega
  have hterm (i : ℕ) (hi : i ∈ Finset.range M) :
      a / (16 * (M : ℝ) ^ 2) ≤ storage M a (idx i) * cellClock (idx i) (idx i + 1 : ℕ) := by
    have hiM := Finset.mem_range.mp hi
    have hindex := retained_central_indices_belong hiM
    have hb := retained_central_storage_lower hiM ha
    have hw := (literal_pulse_cell_bounds hM hindex.1 hindex.2).1
    calc
      _ = (a * M / 2) * (1 / (8 * (M : ℝ) ^ 3)) := by field_simp [hM0.ne']; ring
      _ ≤ _ := mul_le_mul hb hw (by positivity) (by unfold storage; positivity)
  calc
    a / (16 * M) = ∑ _i ∈ Finset.range M, a / (16 * (M : ℝ) ^ 2) := by
      simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
      field_simp [hM0.ne']
    _ ≤ ∑ i ∈ Finset.range M, storage M a (idx i) * cellClock (idx i) (idx i + 1 : ℕ) :=
      Finset.sum_le_sum hterm
    _ = ∑ n ∈ central, storage M a n * cellClock n (n + 1 : ℕ) := hsum.symm
    _ ≤ debt M a := by
      apply Finset.sum_le_sum_of_subset_of_nonneg hsub
      intro n hn _
      have h := (Finset.mem_Icc.mp hn).1
      exact mul_nonneg (by unfold storage; positivity) (cellClock_pos (by nlinarith)).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularPulseDebt/Variant8fd89cc8aa0ba2b4f578a0950f80b7810b84985ac6a81ff32e3fb46126961f07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularPulseDebt/Variant8fd89cc8aa0ba2b4f578a0950f80b7810b84985ac6a81ff32e3fb46126961f07.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b0dcefb40faac6de8ee36761c470caf8c1d96dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
