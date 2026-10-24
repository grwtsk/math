# natDegree_ne_zero_induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2c5db37c2cb72ba1ac3d558ce45b146ed6f1fab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe7ebbd3-48f3-119e-4c3e-52bfdbb415d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be03b756-aa7c-ff8c-054a-cc3ee4cc6c2d",
  "kind": "theorem",
  "lexical_name": "natDegree_ne_zero_induction_on",
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
  "slug": "natdegree-ne-zero-induction-on--e9c3030de23daf95cf22f70c",
  "source": {
    "blob": "c2c5db37c2cb72ba1ac3d558ce45b146ed6f1fab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 189,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9c3030de23daf95cf22f70cf8df4fcd397232435b0225e71e18fc29e3a57e45",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be03b756-aa7c-ff8c-054a-cc3ee4cc6c2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_ne_zero_induction_on {M : R[X] → Prop} {f : R[X]} (f0 : f.natDegree ≠ 0)
    (h_C_add : ∀ {a p}, M p → M (C a + p)) (h_add : ∀ {p q}, M p → M q → M (p + q))
    (h_monomial : ∀ {n : ℕ} {a : R}, a ≠ 0 → n ≠ 0 → M (monomial n a)) : M f := by
  suffices f.natDegree = 0 ∨ M f from Or.recOn this (fun h => (f0 h).elim) id
  refine Polynomial.induction_on f ?_ ?_ ?_
  · exact fun a => Or.inl (natDegree_C _)
  · rintro p q (hp | hp) (hq | hq)
    · refine Or.inl ?_
      rw [eq_C_of_natDegree_eq_zero hp, eq_C_of_natDegree_eq_zero hq, ← C_add, natDegree_C]
    · refine Or.inr ?_
      rw [eq_C_of_natDegree_eq_zero hp]
      exact h_C_add hq
    · refine Or.inr ?_
      rw [eq_C_of_natDegree_eq_zero hq, add_comm]
      exact h_C_add hp
    · exact Or.inr (h_add hp hq)
  · intro n a _
    by_cases a0 : a = 0
    · exact Or.inl (by rw [a0, C_0, zero_mul, natDegree_zero])
    · refine Or.inr ?_
      rw [C_mul_X_pow_eq_monomial]
      exact h_monomial a0 n.succ_ne_zero

end Semiring

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variant6a91707d715d7a3c24e209070666a91efeaa27b96154538adf3a160b5411d2d0.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2c5db37c2cb72ba1ac3d558ce45b146ed6f1fab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
