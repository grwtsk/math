# StandardEtalePresentation.toPresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21ab8d47ff3b733698f42a0eb4d9a4716f1a42fd5f1624497cb01287079148d9",
  "kind": "def",
  "lexical_name": "StandardEtalePresentation.toPresentation",
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
  "slug": "standardetalepresentation-topresentation--6299c29058a7a437814ceee7",
  "source": {
    "blob": "03b41e98db7a4d6727042f12a586e0cc1c9f34c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 294,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StandardEtale/Variantb2b5ae0db32569626ba17b97866c94d284aaabda29525b8b1f396165262d2311.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6299c29058a7a437814ceee74f748b2caed95668e54e39b52b03eacfa1263f63",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StandardEtale/Variantb2b5ae0db32569626ba17b97866c94d284aaabda29525b8b1f396165262d2311.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21ab8d47ff3b733698f42a0eb4d9a4716f1a42fd5f1624497cb01287079148d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def StandardEtalePresentation.toPresentation : Algebra.Presentation R S (Fin 2) (Fin 2) where
  __ := Algebra.Generators.ofAlgHom ((P.lift _ P.hasMap).comp
      (P.equivMvPolynomialQuotient.symm.toAlgHom.comp (Ideal.Quotient.mkₐ _ _)))
    (P.lift_bijective.surjective.comp
      (P.equivMvPolynomialQuotient.symm.surjective.comp Ideal.Quotient.mk_surjective))
  relation := ![Bivariate.equivMvPolynomial R (C P.f),
    Bivariate.equivMvPolynomial R (.X * C P.g - 1)]
  span_range_relation_eq_ker := by
    rw [Algebra.Generators.ker_ofAlgHom, AlgHom.toRingHom_eq_coe, AlgHom.comp_toRingHom,
      AlgHom.comp_toRingHom,
      RingHom.ker_comp_of_injective _ (by exact P.lift_bijective.injective),
      RingHom.ker_comp_of_injective _ (by exact P.equivMvPolynomialQuotient.symm.injective)]
    simp [Set.pair_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StandardEtale/Variantb2b5ae0db32569626ba17b97866c94d284aaabda29525b8b1f396165262d2311.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StandardEtale/Variantb2b5ae0db32569626ba17b97866c94d284aaabda29525b8b1f396165262d2311.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03b41e98db7a4d6727042f12a586e0cc1c9f34c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
