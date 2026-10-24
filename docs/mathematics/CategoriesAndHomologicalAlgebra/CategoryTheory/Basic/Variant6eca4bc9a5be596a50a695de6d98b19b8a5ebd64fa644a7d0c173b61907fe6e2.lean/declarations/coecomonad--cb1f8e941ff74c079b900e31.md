# coeComonad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe9dacd6990a28230340b06401e5c153bbe7894d8babad2bf225a1cd599bda6e",
  "kind": "instance",
  "lexical_name": "coeComonad",
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
  "slug": "coecomonad--cb1f8e941ff74c079b900e31",
  "source": {
    "blob": "10f817b9b001ded7440ead377dbfd2d8dee19bfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 90,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb1f8e941ff74c079b900e3110ac23ac0a3a5a747904140d7ea693525e38cd35",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe9dacd6990a28230340b06401e5c153bbe7894d8babad2bf225a1cd599bda6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance coeComonad : Coe (Comonad C) (C ⥤ C) :=
  ⟨fun G => G.toFunctor⟩

-- Porting note: these lemmas are syntactic tautologies
--@[simp]
--theorem monad_toFunctor_eq_coe : T.toFunctor = T :=
--  rfl
--
--@[simp]
--theorem comonad_toFunctor_eq_coe : G.toFunctor = G :=
--  rfl

initialize_simps_projections CategoryTheory.Monad (toFunctor → coe)

initialize_simps_projections CategoryTheory.Comonad (toFunctor → coe)

-- Porting note: investigate whether `Monad.assoc` can be a `simp` lemma?
attribute [reassoc (attr := simp)] Monad.left_unit Monad.right_unit
attribute [reassoc (attr := simp)] Comonad.coassoc Comonad.left_counit Comonad.right_counit

/-- A morphism of monads is a natural transformation compatible with η and μ. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6eca4bc9a5be596a50a695de6d98b19b8a5ebd64fa644a7d0c173b61907fe6e2.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10f817b9b001ded7440ead377dbfd2d8dee19bfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
