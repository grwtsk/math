# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d064533c9f22c8c84b034b919138a36c3bee78dc94c0f9e547976f3705a1b527",
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
  "slug": "instance--1c64cf86e7a8d0fc5740ba72",
  "source": {
    "blob": "b19d550097f568d522124d676f3ca68c76132560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 41,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c64cf86e7a8d0fc5740ba721d8e4aec3e05ef47917538ebd87170a5ec8d9ecb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d064533c9f22c8c84b034b919138a36c3bee78dc94c0f9e547976f3705a1b527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) wfDvdMonoid : WfDvdMonoid R[X] where
  wf := by
    classical
      refine
        RelHomClass.wellFounded
          (⟨fun p : R[X] =>
              ((if p = 0 then ⊤ else ↑p.degree : WithTop (WithBot ℕ)), p.leadingCoeff), ?_⟩ :
            DvdNotUnit →r Prod.Lex (· < ·) DvdNotUnit)
          (wellFounded_lt.prod_lex ‹WfDvdMonoid R›.wf)
      rintro a b ⟨ane0, ⟨c, ⟨not_unit_c, rfl⟩⟩⟩
      dsimp
      rw [Polynomial.degree_mul, if_neg ane0]
      split_ifs with hac
      · rw [hac, Polynomial.leadingCoeff_zero]
        apply Prod.Lex.left
        exact WithTop.coe_lt_top _
      have cne0 : c ≠ 0 := right_ne_zero_of_mul hac
      simp only [cne0, ane0, Polynomial.leadingCoeff_mul]
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/UniqueFactorization/Variant13c282604638ca36b798e6460626f4bda348d48a51e874e292d9fca48b44a325.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b19d550097f568d522124d676f3ca68c76132560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
