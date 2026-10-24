# density_mobius_reciprocal_prefix_abs_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:262fa9a4-940c-c9fb-1d12-3e50b3cbf5b7",
  "kind": "theorem",
  "lexical_name": "density_mobius_reciprocal_prefix_abs_le_one",
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
  "slug": "density-mobius-reciprocal-prefix-abs-le-one--e2eec5ebc6563f321c462bed",
  "source": {
    "blob": "a641a4e96747480caa5befe873dc9fc86b0482a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 51,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2eec5ebc6563f321c462bed3d1a04882da6b090065ba31a943dedd15043b373",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:262fa9a4-940c-c9fb-1d12-3e50b3cbf5b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_mobius_reciprocal_prefix_abs_le_one {x : ℝ} (hx : 1 ≤ x) :
    |densityMobiusReciprocalPrefix x| ≤ 1 := by
  classical
  have hx0 : 0 < x := by linarith
  let S := densityClosedInventory (Real.log x)
  let f (n : ℕ) : ℝ := x / n - (⌊x / (n : ℝ)⌋₊ : ℝ)
  let R := ∑ n ∈ S.erase 1, moebiusReal n * f n
  have h1 : 1 ∈ S := density_closed_inventory_one_of_nonneg (Real.log_nonneg hx)
  have hcard : (S.card : ℝ) = (⌊x⌋₊ : ℝ) := by
    simp [S, densityClosedInventory, Real.exp_log hx0, Nat.card_Icc]
  have hR : |R| ≤ (⌊x⌋₊ : ℝ) - 1 := by
    calc
      |R| ≤ ∑ n ∈ S.erase 1, |moebiusReal n * f n| := Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ _n ∈ S.erase 1, (1 : ℝ) := by
        apply Finset.sum_le_sum
        intro n hn
        have hnpos : (0 : ℝ) < n := by
          exact_mod_cast (Finset.mem_Icc.mp (Finset.mem_of_mem_erase hn)).1
        have hn0 : 0 ≤ x / (n : ℝ) := div_nonneg hx0.le hnpos.le
        have hf0 : 0 ≤ f n := sub_nonneg.mpr (Nat.floor_le hn0)
        have hf1 : f n ≤ 1 := by
          dsimp [f]
          have := Nat.lt_floor_add_one (x / (n : ℝ))
          linarith
        rw [abs_mul, abs_of_nonneg hf0]
        exact (mul_le_mul_of_nonneg_right (moebiusReal_abs_le_one n) hf0).trans
          (by simpa using hf1)
      _ = (⌊x⌋₊ : ℝ) - 1 := by
        simp only [Finset.sum_const, nsmul_eq_mul, mul_one]
        have hc := Finset.card_erase_add_one h1
        have hr := congrArg (fun n : ℕ ↦ (n : ℝ)) hc
        push_cast at hr
        linarith
  have hsum : (∑ n ∈ S, moebiusReal n * f n) = R + (x - (⌊x⌋₊ : ℝ)) := by
    have H := Finset.sum_erase_add S (fun n ↦ moebiusReal n * f n) h1
    simpa [R, f, moebiusReal, ArithmeticFunction.moebius_apply_one] using H.symm
  have he : x * densityMobiusReciprocalPrefix x = 1 + (∑ n ∈ S, moebiusReal n * f n) := by
    rw [density_mobius_reciprocal_prefix_source_inventory hx0, Finset.mul_sum]
    have H := density_mobius_closed_floor_convolution hx
    change (∑ n ∈ S, moebiusReal n * (⌊x / (n : ℝ)⌋₊ : ℝ)) = 1 at H
    rw [← H, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro n _
    dsimp [f]
    ring
  have hf : (⌊x⌋₊ : ℝ) ≤ x := Nat.floor_le hx0.le
  have hRl := (abs_le.mp hR).1
  have hRu := (abs_le.mp hR).2
  rw [hsum] at he
  apply abs_le.mpr
  constructor
  · apply (le_of_mul_le_mul_left ?_ hx0)
    nlinarith
  · apply (le_of_mul_le_mul_left ?_ hx0)
    nlinarith

end GRWTSK.NumberTheory.ArithmeticFunctions
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/MoebiusReciprocalPrefix.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a641a4e96747480caa5befe873dc9fc86b0482a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
