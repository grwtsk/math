# cyclotomic_expand_eq_cyclotomic_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d4d09e673cc59ce46be8e388e40a617dfff4a19",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1069ff8-bee0-428a-f7cb-190cf9d90990",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:996cb105-524c-6d6d-f12d-89aefe2c8e57",
  "kind": "theorem",
  "lexical_name": "cyclotomic_expand_eq_cyclotomic_mul",
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
  "slug": "cyclotomic-expand-eq-cyclotomic-mul--29ceaa733ba43d1f8da32495",
  "source": {
    "blob": "2d4d09e673cc59ce46be8e388e40a617dfff4a19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 34,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29ceaa733ba43d1f8da3249520114e517e99211d4bf7818bbc3087b37a8598ad",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Expand/Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:996cb105-524c-6d6d-f12d-89aefe2c8e57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_expand_eq_cyclotomic_mul {p n : ℕ} (hp : Nat.Prime p) (hdiv : ¬p ∣ n)
    (R : Type*) [CommRing R] :
    expand R p (cyclotomic n R) = cyclotomic (n * p) R * cyclotomic n R := by
  rcases Nat.eq_zero_or_pos n with (rfl | hnpos)
  · simp
  haveI := NeZero.of_pos hnpos
  suffices expand ℤ p (cyclotomic n ℤ) = cyclotomic (n * p) ℤ * cyclotomic n ℤ by
    rw [← map_cyclotomic_int, ← map_expand, this, Polynomial.map_mul, map_cyclotomic_int,
      map_cyclotomic]
  refine eq_of_monic_of_dvd_of_natDegree_le ((cyclotomic.monic _ ℤ).mul (cyclotomic.monic _ ℤ))
    ((cyclotomic.monic n ℤ).expand hp.pos) ?_ ?_
  · refine (IsPrimitive.Int.dvd_iff_map_cast_dvd_map_cast _ _
      (IsPrimitive.mul (cyclotomic.isPrimitive (n * p) ℤ) (cyclotomic.isPrimitive n ℤ))
      ((cyclotomic.monic n ℤ).expand hp.pos).isPrimitive).2 ?_
    rw [Polynomial.map_mul, map_cyclotomic_int, map_cyclotomic_int, map_expand, map_cyclotomic_int]
    refine IsCoprime.mul_dvd (cyclotomic.isCoprime_rat fun h => ?_) ?_ ?_
    · replace h : n * p = n * 1 := by simp [h]
      exact Nat.Prime.ne_one hp (mul_left_cancel₀ hnpos.ne' h)
    · have hpos : 0 < n * p := mul_pos hnpos hp.pos
      have hprim := Complex.isPrimitiveRoot_exp _ hpos.ne'
      rw [cyclotomic_eq_minpoly_rat hprim hpos]
      refine minpoly.dvd ℚ _ ?_
      rw [aeval_def, ← eval_map, map_expand, map_cyclotomic, expand_eval, ← IsRoot.def,
        @isRoot_cyclotomic_iff]
      convert IsPrimitiveRoot.pow_of_dvd hprim hp.ne_zero (dvd_mul_left p n)
      rw [Nat.mul_div_cancel _ (Nat.Prime.pos hp)]
    · have hprim := Complex.isPrimitiveRoot_exp _ hnpos.ne.symm
      rw [cyclotomic_eq_minpoly_rat hprim hnpos]
      refine minpoly.dvd ℚ _ ?_
      rw [aeval_def, ← eval_map, map_expand, expand_eval, ← IsRoot.def, ←
        cyclotomic_eq_minpoly_rat hprim hnpos, map_cyclotomic, @isRoot_cyclotomic_iff]
      exact IsPrimitiveRoot.pow_of_prime hprim hp hdiv
  · rw [natDegree_expand, natDegree_cyclotomic,
      natDegree_mul (cyclotomic_ne_zero _ ℤ) (cyclotomic_ne_zero _ ℤ), natDegree_cyclotomic,
      natDegree_cyclotomic, mul_comm n,
      Nat.totient_mul ((Nat.Prime.coprime_iff_not_dvd hp).2 hdiv), Nat.totient_prime hp,
      mul_comm (p - 1), ← Nat.mul_succ, Nat.sub_one, Nat.succ_pred_eq_of_pos hp.pos]

/-- If `p` is a prime such that `p ∣ n`, then
`expand R p (cyclotomic n R) = cyclotomic (p * n) R`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Expand/Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant4c7037e5a83595eba67fa0c7e4cdfaead0d21de94f445e157e17a76ceb604256.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d4d09e673cc59ce46be8e388e40a617dfff4a19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
