# coeff_mul_invOneSubPow_eq_hilbertPoly_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ba900da2d4a085ed232c1fa0754ccaf8e6a4e39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37bf7089-910b-b0ed-5b7e-44782bef2bcb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c55fbb6-3517-0dcc-f430-11496650643e",
  "kind": "theorem",
  "lexical_name": "coeff_mul_invOneSubPow_eq_hilbertPoly_eval",
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
  "slug": "coeff-mul-invonesubpow-eq-hilbertpoly-eval--12574ecb2bdd6d88edb7bcd6",
  "source": {
    "blob": "5ba900da2d4a085ed232c1fa0754ccaf8e6a4e39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 161,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12574ecb2bdd6d88edb7bcd650ae550aa7128ebc721ac7a62c2c7b911b8a9653",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c55fbb6-3517-0dcc-f430-11496650643e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_mul_invOneSubPow_eq_hilbertPoly_eval
    {p : F[X]} (d : ℕ) {n : ℕ} (hn : p.natDegree < n) :
    PowerSeries.coeff F n (p * invOneSubPow F d) = (hilbertPoly p d).eval (n : F) := by
  delta hilbertPoly; induction d with
  | zero => simp only [invOneSubPow_zero, Units.val_one, mul_one, coeff_coe, eval_zero]
            exact coeff_eq_zero_of_natDegree_lt hn
  | succ d hd =>
      simp only [eval_finset_sum, eval_smul, smul_eq_mul]
      rw [← Finset.sum_coe_sort]
      have h_le (i : p.support) : (i : ℕ) ≤ n :=
        le_trans (le_natDegree_of_ne_zero <| mem_support_iff.1 i.2) hn.le
      have h (i : p.support) : eval ↑n (preHilbertPoly F d ↑i) = (n + d - ↑i).choose d := by
        rw [preHilbertPoly_eq_choose_sub_add _ _ (h_le i), Nat.sub_add_comm (h_le i)]
      simp_rw [h]
      rw [Finset.sum_coe_sort _ (fun x => (p.coeff ↑x) * (_ + d - ↑x).choose _),
        PowerSeries.coeff_mul, Finset.Nat.sum_antidiagonal_eq_sum_range_succ_mk,
        invOneSubPow_val_eq_mk_sub_one_add_choose_of_pos _ _ (zero_lt_succ d)]
      simp only [coeff_coe, coeff_mk]
      symm
      refine Finset.sum_subset_zero_on_sdiff (fun s hs ↦ ?_) (fun x hx ↦ ?_) (fun x hx ↦ ?_)
      · rw [Finset.mem_range_succ_iff]
        exact h_le ⟨s, hs⟩
      · simp only [Finset.mem_sdiff, mem_support_iff, not_not] at hx
        rw [hx.2, zero_mul]
      · rw [add_comm, Nat.add_sub_assoc (h_le ⟨x, hx⟩), succ_eq_add_one, add_tsub_cancel_right]

/--
The polynomial satisfying the key property of `Polynomial.hilbertPoly p d` is unique.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ba900da2d4a085ed232c1fa0754ccaf8e6a4e39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
