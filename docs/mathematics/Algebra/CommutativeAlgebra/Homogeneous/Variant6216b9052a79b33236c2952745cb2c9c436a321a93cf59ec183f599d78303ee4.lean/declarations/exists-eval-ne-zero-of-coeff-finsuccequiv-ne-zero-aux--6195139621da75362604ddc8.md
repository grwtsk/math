# exists_eval_ne_zero_of_coeff_finSuccEquiv_ne_zero_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccaeeb4a-7809-bd47-09a0-6cf664423a6f",
  "kind": "lemma",
  "lexical_name": "exists_eval_ne_zero_of_coeff_finSuccEquiv_ne_zero_aux",
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
  "slug": "exists-eval-ne-zero-of-coeff-finsuccequiv-ne-zero-aux--6195139621da75362604ddc8",
  "source": {
    "blob": "3cc1e1350ebe2badf24fe982c2f16290f8aeb006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 386,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variant6216b9052a79b33236c2952745cb2c9c436a321a93cf59ec183f599d78303ee4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6195139621da75362604ddc8c0ba568e0182524eaa919d1fe2d0fe7ed9dc6367",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Homogeneous/Variant6216b9052a79b33236c2952745cb2c9c436a321a93cf59ec183f599d78303ee4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccaeeb4a-7809-bd47-09a0-6cf664423a6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_eval_ne_zero_of_coeff_finSuccEquiv_ne_zero_aux
    {N : ℕ} {F : MvPolynomial (Fin (Nat.succ N)) R} {n : ℕ} (hF : IsHomogeneous F n)
    (hFn : ((finSuccEquiv R N) F).coeff n ≠ 0) :
    ∃ r, eval r F ≠ 0 := by
  have hF₀ : F ≠ 0 := by contrapose hFn; simp [hFn]
  have hdeg : natDegree (finSuccEquiv R N F) < n + 1 := by
    linarith [natDegree_finSuccEquiv F, degreeOf_le_totalDegree F 0, hF.totalDegree hF₀]
  use Fin.cons 1 0
  have aux : ∀ i ∈ Finset.range n, constantCoeff ((finSuccEquiv R N F).coeff i) = 0 := by
    intro i hi
    rw [Finset.mem_range] at hi
    apply (hF.finSuccEquiv_coeff_isHomogeneous i (n - i) (by lia)).coeff_eq_zero
    simp only [map_zero]
    rw [← Nat.sub_ne_zero_iff_lt] at hi
    exact hi.symm
  simp_rw [eval_eq_eval_mv_eval', eval_one_map, Polynomial.eval_eq_sum_range' hdeg,
    eval_zero, one_pow, mul_one, map_sum, Finset.sum_range_succ, Finset.sum_eq_zero aux, zero_add]
  contrapose hFn
  ext d
  rw [AddMonoidAlgebra.coeff_zero, Finsupp.zero_apply]
  obtain rfl | hd := eq_or_ne d 0
  · apply hFn
  · contrapose! hd
    ext i
    rw [Finsupp.coe_zero, Pi.zero_apply]
    by_cases hi : i ∈ d.support
    · have := hF.finSuccEquiv_coeff_isHomogeneous n 0 (add_zero _) hd
      simp only [weight_apply, Pi.one_apply, smul_eq_mul, mul_one, Finsupp.sum] at this
      rw [Finset.sum_eq_zero_iff_of_nonneg (fun _ _ ↦ zero_le)] at this
      exact this i hi
    · simpa using hi

section IsDomain

-- In this section we shadow the semiring `R` with a domain `R`.
variable {R σ : Type*} [CommRing R] [IsDomain R] {F G : MvPolynomial σ R} {n : ℕ}

open Cardinal Polynomial

private
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Homogeneous/Variant6216b9052a79b33236c2952745cb2c9c436a321a93cf59ec183f599d78303ee4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variant6216b9052a79b33236c2952745cb2c9c436a321a93cf59ec183f599d78303ee4.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cc1e1350ebe2badf24fe982c2f16290f8aeb006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
