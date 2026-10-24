# succNthDefiningPoly_degree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93033ed914fb2f5a9e12fa18c26cdba17197110b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b2e271d-7b09-4bcd-fc3a-91c875e711e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ff90cc6-f146-7f23-0a26-2dd9d7073883",
  "kind": "theorem",
  "lexical_name": "succNthDefiningPoly_degree",
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
  "slug": "succnthdefiningpoly-degree--c9c977ad8c82434cfd637e65",
  "source": {
    "blob": "93033ed914fb2f5a9e12fa18c26cdba17197110b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 79,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9c977ad8c82434cfd637e65ad291e3d2b60390e330e4c62245ec859422ca139",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ff90cc6-f146-7f23-0a26-2dd9d7073883`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succNthDefiningPoly_degree [IsDomain k] (n : ℕ) (a₁ a₂ : 𝕎 k) (bs : Fin (n + 1) → k)
    (ha₁ : a₁.coeff 0 ≠ 0) (ha₂ : a₂.coeff 0 ≠ 0) :
    (succNthDefiningPoly p n a₁ a₂ bs).degree = p := by
  have : (X ^ p * C (a₁.coeff 0 ^ p ^ (n + 1))).degree = (p : WithBot ℕ) := by
    rw [degree_mul, degree_C]
    · simp only [Nat.cast_withBot, add_zero, degree_X, degree_pow, Nat.smul_one_eq_coe]
    · exact pow_ne_zero _ ha₁
  have : (X ^ p * C (a₁.coeff 0 ^ p ^ (n + 1)) - X * C (a₂.coeff 0 ^ p ^ (n + 1))).degree =
      (p : WithBot ℕ) := by
    rw [degree_sub_eq_left_of_degree_lt, this]
    rw [this, degree_mul, degree_C, degree_X, add_zero]
    · exact_mod_cast hp.out.one_lt
    · exact pow_ne_zero _ ha₂
  rw [succNthDefiningPoly, degree_add_eq_left_of_degree_lt, this]
  apply lt_of_le_of_lt degree_C_le
  rw [this]
  exact_mod_cast hp.out.pos
#align witt_vector.recursion_main.succ_nth_defining_poly_degree WittVector.RecursionMain.succNthDefiningPoly_degree

end CommRing

section IsAlgClosed

variable {k : Type*} [Field k] [CharP k p] [IsAlgClosed k]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant97328188f8ea16da8aed5e75e8452dec6ad0df8bdb6c6dfd41ece4ce0a9781d4.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93033ed914fb2f5a9e12fa18c26cdba17197110b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
