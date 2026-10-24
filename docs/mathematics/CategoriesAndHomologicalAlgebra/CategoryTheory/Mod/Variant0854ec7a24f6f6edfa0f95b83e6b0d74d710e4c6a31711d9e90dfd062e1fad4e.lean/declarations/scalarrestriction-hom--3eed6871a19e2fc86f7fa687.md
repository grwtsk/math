# scalarRestriction_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1da399a9-8526-fec2-c86d-9f32416997ae",
  "kind": "lemma",
  "lexical_name": "scalarRestriction_hom",
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
  "slug": "scalarrestriction-hom--3eed6871a19e2fc86f7fa687",
  "source": {
    "blob": "af61dcf951aa1067d952a60f0c570c48950f0665",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 395,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant0854ec7a24f6f6edfa0f95b83e6b0d74d710e4c6a31711d9e90dfd062e1fad4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3eed6871a19e2fc86f7fa6870fb450d776f90bd19ee3577ad48481081114de04",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant0854ec7a24f6f6edfa0f95b83e6b0d74d710e4c6a31711d9e90dfd062e1fad4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1da399a9-8526-fec2-c86d-9f32416997ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma scalarRestriction_hom
    (M N : D) [ModObj B M] [ModObj B N] (g : M ⟶ N) [IsModHom B g] :
    letI := scalarRestriction f M
    letI := scalarRestriction f N
    IsModHom A g :=
  letI := scalarRestriction f M
  letI := scalarRestriction f N
  { smul_hom := by
      simpa using (action_exchange_assoc f g γ).symm }

/-- A morphism of monoid objects induces a "restriction" or "comap" functor
between the categories of module objects.
-/
@[to_additive (attr := simps)
  /-- A morphism of additive monoid objects induces a "restriction" or "comap" functor
  between the categories of additive module objects. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant0854ec7a24f6f6edfa0f95b83e6b0d74d710e4c6a31711d9e90dfd062e1fad4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant0854ec7a24f6f6edfa0f95b83e6b0d74d710e4c6a31711d9e90dfd062e1fad4e.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af61dcf951aa1067d952a60f0c570c48950f0665` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
