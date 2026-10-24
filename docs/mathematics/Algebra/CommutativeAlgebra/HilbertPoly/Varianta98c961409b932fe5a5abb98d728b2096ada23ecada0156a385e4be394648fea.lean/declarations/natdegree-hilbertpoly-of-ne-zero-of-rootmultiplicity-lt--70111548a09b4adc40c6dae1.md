# natDegree_hilbertPoly_of_ne_zero_of_rootMultiplicity_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd223c2c-7cd7-7947-efa2-8db7182bbe87",
  "kind": "theorem",
  "lexical_name": "natDegree_hilbertPoly_of_ne_zero_of_rootMultiplicity_lt",
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
  "slug": "natdegree-hilbertpoly-of-ne-zero-of-rootmultiplicity-lt--70111548a09b4adc40c6dae1",
  "source": {
    "blob": "7218ab8f1af2bdbd02cd77a6f6c0ae4b7b83f882",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 262,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70111548a09b4adc40c6dae115cd4b89dfb8cac33720fb47c886299c8c4738aa",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd223c2c-7cd7-7947-efa2-8db7182bbe87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_hilbertPoly_of_ne_zero_of_rootMultiplicity_lt
    {p : F[X]} {d : ℕ} (hp : p ≠ 0) (hpd : p.rootMultiplicity 1 < d) :
    (hilbertPoly p d).natDegree = d - p.rootMultiplicity 1 - 1 := by
  rcases exists_eq_pow_rootMultiplicity_mul_and_not_dvd p hp 1 with ⟨q, hq1, hq2⟩
  have heq : p = q * (-1) ^ p.rootMultiplicity 1 * (1 - X) ^ p.rootMultiplicity 1 := by
    simp only [mul_assoc, ← mul_pow, neg_mul, one_mul, neg_sub]
    exact hq1.trans (mul_comm _ _)
  nth_rw 1 [heq, ← Nat.sub_add_cancel (le_of_lt hpd), hilbertPoly_mul_one_sub_pow_add,
    ← Nat.sub_add_cancel (Nat.le_sub_of_add_le' <| add_one_le_of_lt hpd)]
  delta hilbertPoly
  apply natDegree_eq_of_le_of_coeff_ne_zero
  · apply natDegree_sum_le_of_forall_le _ _ <| fun _ _ => ?_
    apply le_trans (natDegree_smul_le _ _)
    rw [natDegree_preHilbertPoly]
  · have : (fun (x : ℕ) (a : F) => a) = fun x a => a * 1 ^ x := by simp only [one_pow, mul_one]
    simp only [finsetSum_coeff, coeff_smul, smul_eq_mul, coeff_preHilbertPoly_self,
      ← Finset.sum_mul, ← sum_def _ (fun _ a => a), this, ← eval_eq_sum, eval_mul, eval_pow,
      eval_neg, eval_one, _root_.mul_eq_zero, pow_eq_zero_iff', neg_eq_zero, one_ne_zero, ne_eq,
      false_and, or_false, inv_eq_zero, cast_eq_zero, not_or]
    exact ⟨(not_iff_not.2 dvd_iff_isRoot).1 hq2, factorial_ne_zero _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Varianta98c961409b932fe5a5abb98d728b2096ada23ecada0156a385e4be394648fea.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7218ab8f1af2bdbd02cd77a6f6c0ae4b7b83f882` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
