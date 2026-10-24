# actual_primitive_absolute_mass_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8415259-efdd-ff27-5eed-9b254b008d53",
  "kind": "theorem",
  "lexical_name": "actual_primitive_absolute_mass_lower",
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
  "slug": "actual-primitive-absolute-mass-lower--6fc32ac5321c7df67b50ca59",
  "source": {
    "blob": "0d9215002a8c434ab2a0174941c7b42e2b0934a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 71,
    "path": "GRWTSK/Analysis/MangoldtPrimitiveAbsoluteMass/Variant1497224deb0add0fea83d7007e5402979c1c364d37fcf5a13f01f52abe06808f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fc32ac5321c7df67b50ca599cf7b7e6b2d724adb834c37a4b27923ac611aa2b",
  "verification": {
    "reference": "docs/verification/Analysis/MangoldtPrimitiveAbsoluteMass/Variant1497224deb0add0fea83d7007e5402979c1c364d37fcf5a13f01f52abe06808f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8415259-efdd-ff27-5eed-9b254b008d53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_primitive_absolute_mass_lower {x : ℝ} (hx : 48 ≤ x) :
    Real.sqrt x / 24 ≤ absolutePrimitiveMass x := by
  let M : ℕ := ⌊x / 24⌋₊
  let T := (Finset.Icc 1 M).image (fun k ↦ 6 * k)
  have hi : Function.Injective (fun k : ℕ ↦ 6 * k) := by
    intro a b h
    dsimp only at h
    omega
  have hsub : T ⊆ Finset.Icc 2 ⌊x⌋₊ := by
    intro n hn
    obtain ⟨k, hk, rfl⟩ := Finset.mem_image.mp hn
    obtain ⟨hk1, hkM⟩ := Finset.mem_Icc.mp hk
    have hkr := (show (k : ℝ) ≤ (M : ℝ) by exact_mod_cast hkM).trans
      (Nat.floor_le (by linarith : 0 ≤ x / 24))
    exact Finset.mem_Icc.mpr ⟨by omega, Nat.le_floor (by push_cast; linarith)⟩
  have hfirst : (M : ℝ) * (2 / Real.sqrt x) ≤
      ∑ k ∈ Finset.Icc 1 M,
        |ArithmeticFunction.vonMangoldt (6 * k) - 1| * primitiveWeight x (6 * k) := by
    calc
      _ = ∑ _k ∈ Finset.Icc 1 M, 2 / Real.sqrt x := by simp [Nat.card_Icc]
      _ ≤ _ := Finset.sum_le_sum (fun k hk ↦ early_six_atom_lower hx hk)
  have himage : (∑ k ∈ Finset.Icc 1 M,
      |ArithmeticFunction.vonMangoldt (6 * k) - 1| * primitiveWeight x (6 * k)) =
      ∑ n ∈ T, |ArithmeticFunction.vonMangoldt n - 1| * primitiveWeight x n := by
    rw [Finset.sum_image (fun a _ b _ h ↦ hi h)]
  rw [himage] at hfirst
  have hraw : (M : ℝ) * (2 / Real.sqrt x) ≤ absolutePrimitiveMass x := by
    apply hfirst.trans
    apply Finset.sum_le_sum_of_subset_of_nonneg hsub
    intro n hn hnt
    obtain ⟨hn2, hnhi⟩ := Finset.mem_Icc.mp hn
    have hnx := (show (n : ℝ) ≤ (⌊x⌋₊ : ℝ) by exact_mod_cast hnhi).trans
      (Nat.floor_le (by linarith : 0 ≤ x))
    exact mul_nonneg (abs_nonneg _) (visible_primitive_weight_nonnegative (by omega) hnx)
  have hcount := first_quarter_six_count hx
  have hspos : 0 < Real.sqrt x := Real.sqrt_pos.mpr (by linarith)
  have hsq := Real.sq_sqrt (by linarith : 0 ≤ x)
  have hmul : (M : ℝ) * (2 / Real.sqrt x) = (2 * M) / Real.sqrt x := by ring
  rw [hmul] at hraw
  have hbase : Real.sqrt x / 24 ≤ (2 * M) / Real.sqrt x := by
    apply (le_div_iff₀ hspos).mpr
    change x / 48 ≤ (M : ℝ) at hcount
    nlinarith
  exact hbase.trans hraw

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MangoldtPrimitiveAbsoluteMass/Variant1497224deb0add0fea83d7007e5402979c1c364d37fcf5a13f01f52abe06808f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MangoldtPrimitiveAbsoluteMass/Variant1497224deb0add0fea83d7007e5402979c1c364d37fcf5a13f01f52abe06808f.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d9215002a8c434ab2a0174941c7b42e2b0934a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
