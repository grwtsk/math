# AlgebraicIndependent.aeval_comp_mvPolynomialOptionEquivPolynomialAdjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:162968e6-8836-6511-6597-25912f03b5ef",
  "kind": "theorem",
  "lexical_name": "AlgebraicIndependent.aeval_comp_mvPolynomialOptionEquivPolynomialAdjoin",
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
  "slug": "algebraicindependent-aeval-comp-mvpolynomialoptionequivpolynomialadjoin--70a5d2fe631cbaa5540c1f9c",
  "source": {
    "blob": "e52a13a46576843d7db7108d9b73cfd6422f5454",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 481,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant69cf4eafbfdecf819a7c64359a9cee781c3641ce55b08116fab33305da9f9346.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70a5d2fe631cbaa5540c1f9c6daa7b8b45210ac790ace19a64ec09b3c85a630c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant69cf4eafbfdecf819a7c64359a9cee781c3641ce55b08116fab33305da9f9346.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:162968e6-8836-6511-6597-25912f03b5ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AlgebraicIndependent.aeval_comp_mvPolynomialOptionEquivPolynomialAdjoin
    (hx : AlgebraicIndependent R x) (a : A) :
    RingHom.comp
        (↑(Polynomial.aeval a : Polynomial (adjoin R (Set.range x)) →ₐ[_] A) :
          Polynomial (adjoin R (Set.range x)) →+* A)
        hx.mvPolynomialOptionEquivPolynomialAdjoin.toRingHom =
      ↑(MvPolynomial.aeval fun o : Option ι => o.elim a x : MvPolynomial (Option ι) R →ₐ[R] A) := by
  refine MvPolynomial.ringHom_ext ?_ ?_ <;>
    simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom,
      AlgHom.coe_toRingHom, AlgHom.coe_toRingHom]
  · intro r
    rw [hx.mvPolynomialOptionEquivPolynomialAdjoin_C, aeval_C, Polynomial.aeval_C,
      IsScalarTower.algebraMap_apply R (adjoin R (range x)) A]
  · rintro (⟨⟩ | ⟨i⟩)
    · rw [hx.mvPolynomialOptionEquivPolynomialAdjoin_X_none, aeval_X, Polynomial.aeval_X,
        Option.elim]
    · rw [hx.mvPolynomialOptionEquivPolynomialAdjoin_X_some, Polynomial.aeval_C,
        hx.algebraMap_aevalEquiv, aeval_X, aeval_X, Option.elim]

section Field

variable {K : Type*} [Field K] [Algebra K A]

/- Porting note: removing `simp`, not in simp normal form. Could make `Function.Injective f` a
simp lemma when `f` is a field hom, and then simp would prove this -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant69cf4eafbfdecf819a7c64359a9cee781c3641ce55b08116fab33305da9f9346.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant69cf4eafbfdecf819a7c64359a9cee781c3641ce55b08116fab33305da9f9346.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e52a13a46576843d7db7108d9b73cfd6422f5454` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
