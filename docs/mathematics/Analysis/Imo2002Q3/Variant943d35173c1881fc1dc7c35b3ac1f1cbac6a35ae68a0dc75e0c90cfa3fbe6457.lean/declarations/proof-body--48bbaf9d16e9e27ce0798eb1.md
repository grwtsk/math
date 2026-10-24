# proof_body

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f2de3e529843aeafdee8d164068febdb7906c88",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/943d35173c1881fc1dc7c35b3ac1f1cbac6a35ae68a0dc75e0c90cfa3fbe6457.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38c4f173-cdd4-384f-e5c3-648a1a9da137",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f3ff150-7d7f-fdb2-dd44-38140c6b4c1f",
  "kind": "lemma",
  "lexical_name": "proof_body",
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
  "slug": "proof-body--48bbaf9d16e9e27ce0798eb1",
  "source": {
    "blob": "2f2de3e529843aeafdee8d164068febdb7906c88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 72,
    "path": "GRWTSK/Analysis/Imo2002Q3/Variant943d35173c1881fc1dc7c35b3ac1f1cbac6a35ae68a0dc75e0c90cfa3fbe6457.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48bbaf9d16e9e27ce0798eb11eea39da7fb1e04ee307d3dcd3983d3018614542",
  "verification": {
    "reference": "docs/verification/Analysis/Imo2002Q3/Variant943d35173c1881fc1dc7c35b3ac1f1cbac6a35ae68a0dc75e0c90cfa3fbe6457.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f3ff150-7d7f-fdb2-dd44-38140c6b4c1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma proof_body (h : {a : ℤ | 0 < a ∧ a ^ n + a ^ 2 - 1 ∣ a ^ m + a - 1}.Infinite) :
    m = 5 ∧ n = 3 := by
  replace h : (X ^ n + X ^ 2 - 1 : ℤ[X]) ∣ X ^ m + X - 1 :=
    dvd_of_infinite_eval_dvd_eval (monic_denompol hn) (h.mono (by simp))
  -- Algebraic part: `n ≤ m - n + 1`
  have db := natDegree_le_of_dvd h (monic_numerpol hm).ne_zero
  rw [natDegree_numerpol hm, natDegree_denompol hn] at db
  replace h := dvd_sub_self_right.mpr (dvd_mul_of_dvd_left h (X + 1))
  have rearr : ((X ^ m + X - 1) * (X + 1) - (X ^ n + X ^ 2 - 1) : ℤ[X]) =
      X ^ n * (X ^ (m - n + 1) + X ^ (m - n) - 1) := by
    nth_rw 1 [← Nat.sub_add_cancel db]
    ring
  rw [rearr] at h
  replace h : (X ^ n + X ^ 2 - 1 : ℤ[X]) ∣ X ^ (m - n + 1) + X ^ (m - n) - 1 := by
    refine (IsRelPrime.pow_right ?_).dvd_of_dvd_mul_left h
    nth_rw 1 [isRelPrime_comm, irreducible_X.isRelPrime_iff_not_dvd,
      show (X : ℤ[X]) = X - C 0 by simp, dvd_iff_isRoot]
    simp [show n ≠ 0 by lia]
  have de : (X ^ (m - n + 1) + X ^ (m - n) - 1 : ℤ[X]).natDegree = m - n + 1 := by
    compute_degree <;> lia
  have db₂ := natDegree_le_of_dvd h (ne_zero_of_natDegree_gt (n := 0) (by lia))
  rw [natDegree_denompol hn, de] at db₂
  -- Analytic part: given the above, `m - n ≤ 2`
  suffices m - n ≤ 2 by lia
  let hom := Int.castRingHom ℝ
  obtain ⟨r, br, hr⟩ : ∃ r ∈ Set.Ioo 0 1, (X ^ n + X ^ 2 - 1 : ℤ[X]).eval₂ hom r = 0 := by
    simp only [eval₂_sub, eval₂_add, eval₂_X_pow, eval₂_one]
    let f (r : ℝ) := r ^ n + r ^ 2 - 1
    have cf : ContinuousOn f (Set.Icc 0 1) := by fun_prop
    have ivt := intermediate_value_Ioo zero_le_one cf
    have f0 : f 0 = -1 := by simp [f]; lia
    have f1 : f 1 = 1 := by simp [f]
    rw [f0, f1] at ivt
    simpa using ivt (by simp)
  have hr₂ := eval₂_dvd hom r h
  simp only [eval₂_sub, eval₂_add, eval₂_X_pow, eval₂_one] at hr hr₂
  rw [hr, zero_dvd_iff, ← hr, sub_left_inj] at hr₂
  rw [← pow_le_pow_iff_right_of_lt_one₀ br.1 br.2] at db₂
  have fin : r ^ 2 ≤ r ^ (m - n) := by linarith
  rwa [pow_le_pow_iff_right_of_lt_one₀ br.1 br.2] at fin

include hm hn in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Imo2002Q3/Variant943d35173c1881fc1dc7c35b3ac1f1cbac6a35ae68a0dc75e0c90cfa3fbe6457.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Imo2002Q3/Variant943d35173c1881fc1dc7c35b3ac1f1cbac6a35ae68a0dc75e0c90cfa3fbe6457.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f2de3e529843aeafdee8d164068febdb7906c88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
