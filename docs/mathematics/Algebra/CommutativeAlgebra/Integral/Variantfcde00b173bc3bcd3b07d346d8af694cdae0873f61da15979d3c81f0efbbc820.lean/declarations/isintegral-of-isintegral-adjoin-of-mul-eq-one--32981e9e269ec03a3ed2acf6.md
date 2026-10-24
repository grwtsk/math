# isIntegral_of_isIntegral_adjoin_of_mul_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:290396f8-3fe3-7170-2ace-6d2d6184ac3a",
  "kind": "lemma",
  "lexical_name": "isIntegral_of_isIntegral_adjoin_of_mul_eq_one",
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
  "slug": "isintegral-of-isintegral-adjoin-of-mul-eq-one--32981e9e269ec03a3ed2acf6",
  "source": {
    "blob": "70bbddb523939a045ac3dcd118a1fa44b755cb52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 296,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantfcde00b173bc3bcd3b07d346d8af694cdae0873f61da15979d3c81f0efbbc820.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32981e9e269ec03a3ed2acf67444ff696187ece549a81990bebfc163e4d0dd24",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Integral/Variantfcde00b173bc3bcd3b07d346d8af694cdae0873f61da15979d3c81f0efbbc820.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:290396f8-3fe3-7170-2ace-6d2d6184ac3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIntegral_of_isIntegral_adjoin_of_mul_eq_one
    (t s : S) (hst : s * t = 1) (ht : IsIntegral (Algebra.adjoin R {s}) t) :
    IsIntegral R t := by
  nontriviality S
  let φ := aeval (R := R) s
  obtain ⟨q, hqm, hqt⟩ : φ.IsIntegralElem t := by
    obtain ⟨p, hpm, hpt⟩ := ht
    have : p.map (algebraMap _ S) ∈ lifts φ.toRingHom := (lifts_iff_coeff_lifts _).mpr
      (by simp [← AlgHom.mem_range, φ, ← Algebra.adjoin_singleton_eq_range_aeval])
    obtain ⟨q, hqp, hqd, hqm⟩ := lifts_and_degree_eq_and_monic this (hpm.map _)
    exact ⟨q, hqm, by rw [← eval_map, hqp, eval_map, hpt]⟩
  let N := q.support.sup (q.coeff · |>.natDegree)
  have hN (i : _) : (q.coeff i).natDegree ≤ N := by
    by_cases hi : i ∈ q.support
    · exact Finset.le_sup (f := (q.coeff · |>.natDegree)) hi
    · simp_all
  let q' := q.sum fun i r ↦ X ^ i * r.reflect N
  have (i : _) : aeval t (reflect N (q.coeff i)) = t ^ N * (aeval s (q.coeff i)) := by
    let : Invertible t := ⟨s, hst, (mul_comm _ _).trans hst⟩
    rw [aeval_def, ← eval₂_reflect_mul_pow _ _ N _ ((natDegree_reflect_le ..).trans (by simp [hN]))]
    simp +instances [mul_comm, this, aeval_def]
  refine ⟨q', ?_, ?_⟩
  · refine monic_of_natDegree_le_of_coeff_eq_one (q.natDegree + N) ?_ ?_
    · refine natDegree_sum_le_of_forall_le _ _ fun i hi ↦ ?_
      grw [natDegree_mul_le, natDegree_pow_le, natDegree_X_le, natDegree_reflect_le]
      simp [max_eq_left (hN _), le_natDegree_of_mem_supp _ hi]
    · simp only [sum, finsetSum_coeff, coeff_X_pow_mul', coeff_reflect, q']
      rw [Finset.sum_eq_single q.natDegree]
      · simp [hqm.leadingCoeff]
      · intro i hi₁ hi₂
        have : N + i < q.natDegree + N :=
          add_comm N i ▸ add_lt_add_left ((le_natDegree_of_mem_supp _ hi₁).lt_of_ne hi₂) _
        simpa [(le_natDegree_of_mem_supp _ hi₁).trans, revAt, this.not_ge] using
          coeff_eq_zero_of_natDegree_lt (by grind)
      · simp +contextual
  · trans t ^ N * q.sum (t ^ · * φ.toRingHom ·)
    · simp [φ, q', Polynomial.sum, ← aeval_def, this, mul_left_comm _ (t ^ N), ← Finset.mul_sum]
    · simp_rw [mul_comm (t ^ _), ← eval₂_eq_sum, hqt, zero_mul]

/-- If `t` is integral in `S[1/t]`, then it is integral in `S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Integral/Variantfcde00b173bc3bcd3b07d346d8af694cdae0873f61da15979d3c81f0efbbc820.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Integral/Variantfcde00b173bc3bcd3b07d346d8af694cdae0873f61da15979d3c81f0efbbc820.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70bbddb523939a045ac3dcd118a1fa44b755cb52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
