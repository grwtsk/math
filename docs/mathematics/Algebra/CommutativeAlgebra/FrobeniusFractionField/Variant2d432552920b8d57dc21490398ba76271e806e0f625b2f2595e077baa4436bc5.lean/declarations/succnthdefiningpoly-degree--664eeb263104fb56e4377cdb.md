# succNthDefiningPoly_degree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecc88e20-e91b-40aa-4df9-a51d41042871",
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
  "slug": "succnthdefiningpoly-degree--664eeb263104fb56e4377cdb",
  "source": {
    "blob": "9fdf2e85880d1e6c6aed616684ca46ed9ed9b606",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 87,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:664eeb263104fb56e4377cdb18e954b4239933674a83732d4988c3aca3f41557",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecc88e20-e91b-40aa-4df9-a51d41042871`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–111.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FrobeniusFractionField/Variant2d432552920b8d57dc21490398ba76271e806e0f625b2f2595e077baa4436bc5.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fdf2e85880d1e6c6aed616684ca46ed9ed9b606` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
