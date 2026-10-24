# counit_isIso_of_R_fully_faithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f738367676692f7c1a698a76cc7c252982d470a6861592ca95149b2690f0fa22",
  "kind": "instance",
  "lexical_name": "counit_isIso_of_R_fully_faithful",
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
  "slug": "counit-isiso-of-r-fully-faithful--e382d60f5f7517b138659eba",
  "source": {
    "blob": "9050d4a6b33b47461d1eebdc4f29c532dae21fed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e382d60f5f7517b138659ebaa00327d6d13c7e05da2e00aabff93437d66be2e5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f738367676692f7c1a698a76cc7c252982d470a6861592ca95149b2690f0fa22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance counit_isIso_of_R_fully_faithful [Full R] [Faithful R] : IsIso (Adjunction.counit h) :=
  @NatIso.isIso_of_isIso_app _ _ _ _ _ _ (Adjunction.counit h) fun X =>
    @isIso_of_op _ _ _ _ _ <|
      @Coyoneda.isIso _ _ _ _ ((Adjunction.counit h).app X).op
        ⟨⟨{ app := fun Y f => R.preimage ((h.homEquiv (R.obj X) Y) f) },
            ⟨by
              ext x
              apply R.map_injective
              simp,
             by
              ext x
              dsimp
              simp only [Adjunction.homEquiv_unit, preimage_comp, preimage_map]
              rw [← h.counit_naturality]
              simp⟩⟩⟩
set_option linter.uppercaseLean3 false in
#align category_theory.counit_is_iso_of_R_fully_faithful CategoryTheory.counit_isIso_of_R_fully_faithful

/-- If the unit of an adjunction is an isomorphism, then its inverse on the image of L is given
by L whiskered with the counit. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant6463ffa69b4266a1c999ee479bf0896821c99df7533348ef07d142d58b2b1a57.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9050d4a6b33b47461d1eebdc4f29c532dae21fed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
