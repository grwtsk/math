# atom_inventory_square_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45271ed192e91def64dcc93b949dc48f39bb9570",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03b45718-1f1c-8801-1601-6df6b6587358",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0d41846-aee5-8c93-ee6d-405a9ae7bc05",
  "kind": "theorem",
  "lexical_name": "atom_inventory_square_bound",
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
  "slug": "atom-inventory-square-bound--52d93249ad91d394e115c2ee",
  "source": {
    "blob": "45271ed192e91def64dcc93b949dc48f39bb9570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 145,
    "path": "GRWTSK/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52d93249ad91d394e115c2ee56890a1e2c4b42b7b23576b5be5bed3285d60f73",
  "verification": {
    "reference": "docs/verification/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0d41846-aee5-8c93-ee6d-405a9ae7bc05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atom_inventory_square_bound {T u : ℝ} (hu : 0 ≤ u) (huT : u ≤ T) :
    (∑ n ∈ integerInventory T, atom n u ^ 2) ≤ 4 * u := by
  have hsub : integerInventory u ⊆ integerInventory T := by
    intro n hn
    exact mem_integerInventory.mpr ⟨(mem_integerInventory.mp hn).1,
      (mem_integerInventory.mp hn).2.trans (Real.exp_le_exp.mpr huT)⟩
  have heq : (∑ n ∈ integerInventory u, atom n u ^ 2) =
      ∑ n ∈ integerInventory T, atom n u ^ 2 := by
    apply Finset.sum_subset hsub
    intro n hnT hnu
    have hnpos : 0 < (n : ℝ) := by exact_mod_cast (mem_integerInventory.mp hnT).1
    have hlate : ¬ Real.log (n : ℝ) ≤ u := by
      intro h
      exact hnu (mem_integerInventory.mpr ⟨(mem_integerInventory.mp hnT).1,
        (Real.log_le_iff_le_exp hnpos).mp h⟩)
    simp [atom, hlate]
  rw [← heq]
  calc
    (∑ n ∈ integerInventory u, atom n u ^ 2) =
        4 * ∑ n ∈ integerInventory u, profile u n := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n hn
      have hnpos : 0 < (n : ℝ) := by exact_mod_cast (mem_integerInventory.mp hn).1
      have hentry : Real.log (n : ℝ) ≤ u :=
        (Real.log_le_iff_le_exp hnpos).mpr (mem_integerInventory.mp hn).2
      simp only [atom, if_pos hentry, profile]
      ring
    _ ≤ 4 * u := mul_le_mul_of_nonneg_left (profile_integer_sum_bound hu) (by norm_num)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SumIntegralComparison/ExponentialResponseSquareSum.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45271ed192e91def64dcc93b949dc48f39bb9570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
