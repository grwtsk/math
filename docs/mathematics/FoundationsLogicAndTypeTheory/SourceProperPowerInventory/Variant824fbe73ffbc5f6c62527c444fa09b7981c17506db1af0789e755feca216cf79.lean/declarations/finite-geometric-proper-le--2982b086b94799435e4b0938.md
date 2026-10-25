# finite_geometric_proper_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:780717b1-b3f0-60de-d477-9b5d998ed404",
  "kind": "theorem",
  "lexical_name": "finite_geometric_proper_le",
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
  "slug": "finite-geometric-proper-le--2982b086b94799435e4b0938",
  "source": {
    "blob": "d73f2ffbac411c402cccf654d14c2db9a6b3a1f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 104,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variant824fbe73ffbc5f6c62527c444fa09b7981c17506db1af0789e755feca216cf79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2982b086b94799435e4b09381b159951420ee0765cb457826a5a4803cde38e15",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variant824fbe73ffbc5f6c62527c444fa09b7981c17506db1af0789e755feca216cf79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:780717b1-b3f0-60de-d477-9b5d998ed404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_geometric_proper_le (p K : ℕ) (hp : p.Prime) :
    (∑ k ∈ Icc 2 K, Real.log (p : ℝ) / ((p : ℝ) ^ k)) ≤
      Real.log (p : ℝ) / ((p : ℝ) * ((p : ℝ) - 1)) := by
  have hp0 : (0 : ℝ) < p := by exact_mod_cast hp.pos
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hr0 : 0 ≤ (p : ℝ)⁻¹ := inv_nonneg.mpr hp0.le
  have hr : (p : ℝ)⁻¹ < 1 := by simpa using (inv_lt_one₀ hp0).2 hp1
  have hs : (∑ k ∈ Icc 2 K, ((p : ℝ)⁻¹) ^ k) =
      ((p : ℝ)⁻¹) ^ 2 * ∑ j ∈ range (K - 1), ((p : ℝ)⁻¹) ^ j := by
    rw [Finset.mul_sum]
    apply Finset.sum_bij (fun k _ => k - 2)
    · intro k hk
      simp only [Finset.mem_Icc] at hk
      simp only [Finset.mem_range]
      omega
    · intro x hx y hy he
      simp only [Finset.mem_Icc] at hx hy
      omega
    · intro j hj
      refine ⟨j + 2, ?_, by omega⟩
      simp only [Finset.mem_range] at hj
      simp only [Finset.mem_Icc]
      omega
    · intro k hk
      have hk2 := (Finset.mem_Icc.mp hk).1
      rw [← pow_add]
      congr 1
      omega
  have ht := (summable_geometric_of_lt_one hr0 hr).sum_le_tsum (range (K - 1))
    (fun j _ => pow_nonneg hr0 j)
  rw [tsum_geometric_of_lt_one hr0 hr] at ht
  have hlog : 0 ≤ Real.log (p : ℝ) := Real.log_nonneg hp1.le
  calc
    _ = Real.log (p : ℝ) * ∑ k ∈ Icc 2 K, ((p : ℝ)⁻¹) ^ k := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k hk
      rw [div_eq_mul_inv, inv_pow]
    _ = Real.log (p : ℝ) * ((p : ℝ)⁻¹) ^ 2 *
        ∑ j ∈ range (K - 1), ((p : ℝ)⁻¹) ^ j := by rw [hs]; ring
    _ ≤ Real.log (p : ℝ) * ((p : ℝ)⁻¹) ^ 2 * (1 - (p : ℝ)⁻¹)⁻¹ :=
      mul_le_mul_of_nonneg_left ht (by positivity)
    _ = _ := by field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variant824fbe73ffbc5f6c62527c444fa09b7981c17506db1af0789e755feca216cf79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SourceProperPowerInventory/Variant824fbe73ffbc5f6c62527c444fa09b7981c17506db1af0789e755feca216cf79.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d73f2ffbac411c402cccf654d14c2db9a6b3a1f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
