# induction_with_natDegree_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9ca512f7ebd7f5f88060fdb89ffef46e7f3c0fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f0a5327-ebc8-1dc4-6f23-2728f352e80e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c448a7d6-8cb3-87c5-8ac4-3eabf7963a75",
  "kind": "theorem",
  "lexical_name": "induction_with_natDegree_le",
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
  "slug": "induction-with-natdegree-le--1843411deede64c1de724cf2",
  "source": {
    "blob": "f9ca512f7ebd7f5f88060fdb89ffef46e7f3c0fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 265,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1843411deede64c1de724cf2d716faf8b452c6f2504e5bf27d094fc918ca1453",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c448a7d6-8cb3-87c5-8ac4-3eabf7963a75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_with_natDegree_le (P : R[X] → Prop) (N : ℕ) (P_0 : P 0)
    (P_C_mul_pow : ∀ n : ℕ, ∀ r : R, r ≠ 0 → n ≤ N → P (C r * X ^ n))
    (P_C_add : ∀ f g : R[X], f.natDegree < g.natDegree → g.natDegree ≤ N → P f → P g → P (f + g)) :
    ∀ f : R[X], f.natDegree ≤ N → P f := by
  intro f df
  generalize hd : #f.support = c
  revert f
  induction' c with c hc
  · intro f _ f0
    convert P_0
    simpa [support_eq_empty, card_eq_zero] using f0
  · intro f df f0
    rw [← eraseLead_add_C_mul_X_pow f]
    cases c
    · convert P_C_mul_pow f.natDegree f.leadingCoeff ?_ df using 1
      · convert zero_add (C (leadingCoeff f) * X ^ f.natDegree)
        rw [← card_support_eq_zero, card_support_eraseLead' f0]
      · rw [leadingCoeff_ne_zero, Ne, ← card_support_eq_zero, f0]
        exact zero_ne_one.symm
    refine P_C_add f.eraseLead _ ?_ ?_ ?_ ?_
    · refine (eraseLead_natDegree_lt ?_).trans_le (le_of_eq ?_)
      · exact (Nat.succ_le_succ (Nat.succ_le_succ (Nat.zero_le _))).trans f0.ge
      · rw [natDegree_C_mul_X_pow _ _ (leadingCoeff_ne_zero.mpr _)]
        rintro rfl
        simp at f0
    · exact (natDegree_C_mul_X_pow_le f.leadingCoeff f.natDegree).trans df
    · exact hc _ (eraseLead_natDegree_le_aux.trans df) (card_support_eraseLead' f0)
    · refine P_C_mul_pow _ _ ?_ df
      rw [Ne, leadingCoeff_eq_zero, ← card_support_eq_zero, f0]
      exact Nat.succ_ne_zero _

/-- Let `φ : R[x] → S[x]` be an additive map, `k : ℕ` a bound, and `fu : ℕ → ℕ` a
"sufficiently monotone" map.  Assume also that
* `φ` maps to `0` all monomials of degree less than `k`,
* `φ` maps each monomial `m` in `R[x]` to a polynomial `φ m` of degree `fu (deg m)`.
Then, `φ` maps each polynomial `p` in `R[x]` to a polynomial of degree `fu (deg p)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variant31e62ca8bfde8a46e24553a70432ca7aa70697c558e8777f7473a597b5288f82.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9ca512f7ebd7f5f88060fdb89ffef46e7f3c0fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
