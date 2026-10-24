# exp_polynomial_approx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba7ab8e09a35052e4146fb6fd858fb5284a2ef94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ef6cfab-a502-42e2-b4b4-4d096245b655",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4adf56bd-1ca3-2077-b4b5-0a1866a5f569",
  "kind": "theorem",
  "lexical_name": "exp_polynomial_approx",
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
  "slug": "exp-polynomial-approx--0a3f0650c4219bf045a63257",
  "source": {
    "blob": "ba7ab8e09a35052e4146fb6fd858fb5284a2ef94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 156,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a3f0650c4219bf045a63257f5bc71bb77855d227f68023617d2c7c0813d230b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AnalyticalPart/Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4adf56bd-1ca3-2077-b4b5-0a1866a5f569`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_polynomial_approx (f : ℤ[X]) (hf : f.eval 0 ≠ 0) :
    ∃ c,
      ∀ p > (eval 0 f).natAbs, p.Prime →
        ∃ n : ℤ, ¬ ↑p ∣ n ∧ ∃ gp : ℤ[X], gp.natDegree ≤ p * f.natDegree - 1 ∧
          ∀ {r : ℂ}, r ∈ f.aroots ℂ →
            ‖n • exp r - p • aeval r gp‖ ≤ c ^ p / (p - 1)! := by
  simp_rw [nsmul_eq_mul, zsmul_eq_mul]
  choose c' c'0 Pp'_le using exp_polynomial_approx_aux f
  use
    if h : ((f.aroots ℂ).map c').toFinset.Nonempty then ((f.aroots ℂ).map c').toFinset.max' h else 0
  intro p p_gt prime_p
  obtain ⟨gp', -, h'⟩ := eval_sumIDeriv_of_pos (X ^ (p - 1) * f ^ p) prime_p.pos
  specialize h' 0 (by rw [C_0, sub_zero])
  use f.eval 0 ^ p + p * gp'.eval 0
  constructor
  · rw [dvd_add_left (dvd_mul_right _ _)]
    contrapose! p_gt with h
    exact Nat.le_of_dvd (Int.natAbs_pos.mpr hf) (Int.natCast_dvd.mp (Int.Prime.dvd_pow' prime_p h))
  obtain ⟨gp, gp'_le, h⟩ := aeval_sumIDeriv ℂ (X ^ (p - 1) * f ^ p) p
  refine ⟨gp, ?_, ?_⟩
  · refine gp'_le.trans ((tsub_le_tsub_right natDegree_mul_le p).trans ?_)
    rw [natDegree_X_pow, natDegree_pow, tsub_add_eq_add_tsub prime_p.one_le, tsub_right_comm,
      add_tsub_cancel_left]
  intro r hr
  specialize h r _
  · rw [mem_roots'] at hr
    rw [Polynomial.map_mul, f.map_pow]
    exact dvd_mul_of_dvd_right (pow_dvd_pow_of_dvd (dvd_iff_isRoot.mpr hr.2) _) _
  rw [nsmul_eq_mul] at h
  have :
      (↑(eval 0 f ^ p + p * eval 0 gp') * cexp r - p * (aeval r) gp) * (p - 1)! =
      ((eval 0 f ^ p * cexp r) * (p - 1)! +
        ↑(p * (p - 1)!) * (eval 0 gp' * cexp r - (aeval r) gp)) := by
    push_cast; ring
  rw [le_div_iff₀ (Nat.cast_pos.mpr (Nat.factorial_pos _) : (0 : ℝ) < _), ← norm_natCast,
    ← norm_mul, this, Nat.mul_factorial_pred prime_p.ne_zero, mul_sub, ← h]
  have :
      ↑(eval 0 f) ^ p * cexp r * ↑(p - 1)! +
        (↑p ! * (↑(eval 0 gp') * cexp r) - (aeval r) (sumIDeriv (X ^ (p - 1) * f ^ p))) =
      ((p - 1)! • ↑(eval 0 (f ^ p)) + p ! • ↑(eval 0 gp') : ℤ) * cexp r -
        (aeval r) (sumIDeriv (X ^ (p - 1) * f ^ p)) := by
    simp; ring
  rw [this, ← h', mul_comm, ← eq_intCast (algebraMap ℤ ℂ),
    ← aeval_algebraMap_apply_eq_algebraMap_eval, map_zero,
    aeval_sumIDeriv_eq_eval, aeval_sumIDeriv_eq_eval, ← P]
  refine (Pp'_le r p prime_p.ne_zero).trans (pow_le_pow_left₀ (c'0 r) ?_ _)
  have aux : c' r ∈ (Multiset.map c' (f.aroots ℂ)).toFinset := by
    simpa only [Multiset.mem_toFinset] using Multiset.mem_map_of_mem _ hr
  have h : ((f.aroots ℂ).map c').toFinset.Nonempty := ⟨c' r, aux⟩
  simpa only [h, ↓reduceDIte] using Finset.le_max' _ _ aux

end

end LindemannWeierstrass
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AnalyticalPart/Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AnalyticalPart/Variantd6a030731563c9054693bd39c5df7462071ae304c98580a8f3610c7adbea4c2b.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba7ab8e09a35052e4146fb6fd858fb5284a2ef94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
