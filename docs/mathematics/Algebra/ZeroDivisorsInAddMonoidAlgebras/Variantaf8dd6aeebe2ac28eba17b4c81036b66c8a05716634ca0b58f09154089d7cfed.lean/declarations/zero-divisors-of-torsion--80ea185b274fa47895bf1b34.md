# zero_divisors_of_torsion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f138b0128565153807a57223fd9271d87820e9a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34bf8037-ea81-bf9a-b3d3-a6e18f913fd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:890b85aa-2e5e-b787-d6da-45e0c6dba932",
  "kind": "theorem",
  "lexical_name": "zero_divisors_of_torsion",
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
  "slug": "zero-divisors-of-torsion--80ea185b274fa47895bf1b34",
  "source": {
    "blob": "3f138b0128565153807a57223fd9271d87820e9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 78,
    "path": "GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80ea185b274fa47895bf1b34b3bd4ce6d0fd30a3b1f73e674891ceb02722d776",
  "verification": {
    "reference": "docs/verification/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:890b85aa-2e5e-b787-d6da-45e0c6dba932`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_divisors_of_torsion {R A} [Nontrivial R] [Ring R] [AddMonoid A] (a : A)
    (o2 : 2 ≤ addOrderOf a) : ∃ f g : R[A], f ≠ 0 ∧ g ≠ 0 ∧ f * g = 0 := by
  refine
    ⟨(Finset.range (addOrderOf a)).sum fun i : ℕ => single a 1 ^ i, single a 1 - single 0 1, ?_, ?_,
      ?_⟩
  · apply_fun fun x : R[A] => x 0
    refine ne_of_eq_of_ne (?_ : (_ : R) = 1) one_ne_zero
    dsimp only; rw [Finset.sum_apply']
    refine (Finset.sum_eq_single 0 ?_ ?_).trans ?_
    · intro b hb b0
      rw [single_pow, one_pow, single_eq_of_ne]
      exact nsmul_ne_zero_of_lt_addOrderOf b0 (Finset.mem_range.mp hb)
    · simp only [(zero_lt_two.trans_le o2).ne', Finset.mem_range, not_lt, Nat.le_zero,
        false_imp_iff]
    · rw [single_pow, one_pow, zero_smul, single_eq_same]
  · apply_fun fun x : R[A] => x 0
    refine sub_ne_zero.mpr (ne_of_eq_of_ne (?_ : (_ : R) = 0) ?_)
    · have a0 : a ≠ 0 :=
        ne_of_eq_of_ne (one_nsmul a).symm
          (nsmul_ne_zero_of_lt_addOrderOf one_ne_zero (Nat.succ_le_iff.mp o2))
      simp only [a0, single_eq_of_ne, Ne, not_false_iff]
    · simpa only [single_eq_same] using zero_ne_one
  · convert Commute.geom_sum₂_mul (R := AddMonoidAlgebra R A) _ (addOrderOf a) using 3
    · rw [single_zero_one, one_pow, mul_one]
    · rw [single_pow, one_pow, addOrderOf_nsmul_eq_zero, single_zero_one, one_pow, sub_self]
    · simp only [single_zero_one, Commute.one_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f138b0128565153807a57223fd9271d87820e9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
