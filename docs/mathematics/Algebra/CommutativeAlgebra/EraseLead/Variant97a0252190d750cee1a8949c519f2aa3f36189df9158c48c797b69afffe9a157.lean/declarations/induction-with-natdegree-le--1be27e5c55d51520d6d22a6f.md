# induction_with_natDegree_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:595166b6-478d-2c56-49a9-eb8f744d4f24",
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
  "slug": "induction-with-natdegree-le--1be27e5c55d51520d6d22a6f",
  "source": {
    "blob": "7bc68136fef8177406c2a755f742f7139569c8ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 328,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variant97a0252190d750cee1a8949c519f2aa3f36189df9158c48c797b69afffe9a157.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1be27e5c55d51520d6d22a6fc616786f7ed6360017eae0d47511dea48ab0d11d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/EraseLead/Variant97a0252190d750cee1a8949c519f2aa3f36189df9158c48c797b69afffe9a157.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:595166b6-478d-2c56-49a9-eb8f744d4f24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_with_natDegree_le (motive : R[X] → Prop) (N : ℕ) (zero : motive 0)
    (C_mul_pow : ∀ n : ℕ, ∀ r : R, r ≠ 0 → n ≤ N → motive (C r * X ^ n))
    (add : ∀ f g : R[X], f.natDegree < g.natDegree → g.natDegree ≤ N →
      motive f → motive g → motive (f + g)) (f : R[X]) (df : f.natDegree ≤ N) : motive f := by
  induction hf : #f.support generalizing f with
  | zero =>
    convert! zero
    simpa [support_eq_empty, card_eq_zero] using hf
  | succ c hc =>
    rw [← eraseLead_add_C_mul_X_pow f]
    cases c
    · convert C_mul_pow f.natDegree f.leadingCoeff ?_ df
      · convert! zero_add (C (leadingCoeff f) * X ^ f.natDegree)
        rw [← card_support_eq_zero, card_support_eraseLead' hf]
      · rw [leadingCoeff_ne_zero, Ne, ← card_support_eq_zero, hf]
        exact zero_ne_one.symm
    refine add f.eraseLead _ ?_ ?_ ?_ ?_
    · refine (eraseLead_natDegree_lt ?_).trans_le (le_of_eq ?_)
      · exact (Nat.succ_le_succ (Nat.succ_le_succ (Nat.zero_le _))).trans hf.ge
      · rw [natDegree_C_mul_X_pow _ _ (leadingCoeff_ne_zero.mpr _)]
        rintro rfl
        simp at hf
    · exact (natDegree_C_mul_X_pow_le f.leadingCoeff f.natDegree).trans df
    · exact hc _ (eraseLead_natDegree_le_aux.trans df) (card_support_eraseLead' hf)
    · refine C_mul_pow _ _ ?_ df
      rw [Ne, leadingCoeff_eq_zero, ← card_support_eq_zero, hf]
      exact Nat.succ_ne_zero _

/-- Let `φ : R[x] → S[x]` be an additive map, `k : ℕ` a bound, and `fu : ℕ → ℕ` a
"sufficiently monotone" map.  Assume also that
* `φ` maps to `0` all monomials of degree less than `k`,
* `φ` maps each monomial `m` in `R[x]` to a polynomial `φ m` of degree `fu (deg m)`.

Then, `φ` maps each polynomial `p` in `R[x]` to a polynomial of degree `fu (deg p)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/EraseLead/Variant97a0252190d750cee1a8949c519f2aa3f36189df9158c48c797b69afffe9a157.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variant97a0252190d750cee1a8949c519f2aa3f36189df9158c48c797b69afffe9a157.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bc68136fef8177406c2a755f742f7139569c8ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
