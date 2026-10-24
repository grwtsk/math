# YonedaSheafCondition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1c7c77a381c16cf40489f8634ff7ff67a6d48bebecfd589f4b147f784f9d122",
  "kind": "def",
  "lexical_name": "YonedaSheafCondition",
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
  "slug": "yonedasheafcondition--8b55bb29bca1c272e5d14158",
  "source": {
    "blob": "a2dc4c68219a724be5f99a0b56d8ed4aaff5b8db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 422,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b55bb29bca1c272e5d141583be8f433a4e2e4a96cbbd114e1c16d5f8591a811",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1c7c77a381c16cf40489f8634ff7ff67a6d48bebecfd589f4b147f784f9d122`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def YonedaSheafCondition (P : Cᵒᵖ ⥤ Type v₁) (S : Sieve X) : Prop :=
  ∀ f : S.functor ⟶ P, ∃! g, S.functorInclusion ≫ g = f

-- TODO: We can generalize the universe parameter v₁ above by composing with
-- appropriate `ulift_functor`s.
/-- (Implementation). This is a (primarily internal) equivalence between natural transformations
and compatible families.

Cf the discussion after Lemma 7.47.10 in <https://stacks.math.columbia.edu/tag/00YW>. See also
the proof of C2.1.4 of [Elephant], and the discussion in [MM92], Chapter III, Section 4.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variante375281c15113e4e8deb9f243cbf6dded285f3ad62ff8227a086583ee732deaa.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2dc4c68219a724be5f99a0b56d8ed4aaff5b8db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
