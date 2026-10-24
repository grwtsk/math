# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91f30d5655944e5afead122efcfb239f457864fbebd4fac22c15aac1b7041bc8",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--1f33f39b71cd581fd9794dbb",
  "source": {
    "blob": "d71134c54dd96f29eaba8738a41e82c3a134db46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 37,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/UniqueFactorization/Variant91b06ffa8fbdc131a988a7a0e214184bdd552a2ce6622ae97407dff604e25ec7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f33f39b71cd581fd9794dbbc2b90b1efb4d8c0268a46997c73e221833729725",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/UniqueFactorization/Variant91b06ffa8fbdc131a988a7a0e214184bdd552a2ce6622ae97407dff604e25ec7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91f30d5655944e5afead122efcfb239f457864fbebd4fac22c15aac1b7041bc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) wfDvdMonoid : WfDvdMonoid R[X] := by
  classical
  refine
    RelHomClass.wellFounded
      (⟨fun p : R[X] =>
          ((if p = 0 then ⊤ else ↑p.degree : WithTop (WithBot ℕ)), p.leadingCoeff), ?_⟩ :
        DvdNotUnit →r Prod.Lex (· < ·) DvdNotUnit)
      (wellFounded_lt.prod_lex ‹WfDvdMonoid R›)
  rintro a b ⟨ane0, ⟨c, ⟨not_unit_c, rfl⟩⟩⟩
  rw [Polynomial.degree_mul, ite_eq_right ane0]
  split_ifs with hac
  · rw [hac, Polynomial.leadingCoeff_zero]
    apply Prod.Lex.left
    exact WithTop.coe_lt_top _
  have cne0 : c ≠ 0 := right_ne_zero_of_mul hac
  simp only [Polynomial.leadingCoeff_mul]
  by_cases hdeg : c.degree = (0 : ℕ)
  · simp only [hdeg, Nat.cast_zero, add_zero]
    refine Prod.Lex.right _ ⟨?_, ⟨c.leadingCoeff, fun unit_c => not_unit_c ?_, rfl⟩⟩
    · rwa [Ne, Polynomial.leadingCoeff_eq_zero]
    rw [Polynomial.isUnit_iff, Polynomial.eq_C_of_degree_eq_zero hdeg]
    use c.leadingCoeff, unit_c
    rw [Polynomial.leadingCoeff, Polynomial.natDegree_eq_of_degree_eq_some hdeg]
  · apply Prod.Lex.left
    rw [Polynomial.degree_eq_natDegree cne0] at *
    simp only [Nat.cast_inj] at hdeg
    rw [WithTop.coe_lt_coe, Polynomial.degree_eq_natDegree ane0, ← Nat.cast_add, Nat.cast_lt]
    exact lt_add_of_pos_right _ (Nat.pos_of_ne_zero hdeg)

variable [Nontrivial R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/UniqueFactorization/Variant91b06ffa8fbdc131a988a7a0e214184bdd552a2ce6622ae97407dff604e25ec7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/UniqueFactorization/Variant91b06ffa8fbdc131a988a7a0e214184bdd552a2ce6622ae97407dff604e25ec7.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d71134c54dd96f29eaba8738a41e82c3a134db46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
