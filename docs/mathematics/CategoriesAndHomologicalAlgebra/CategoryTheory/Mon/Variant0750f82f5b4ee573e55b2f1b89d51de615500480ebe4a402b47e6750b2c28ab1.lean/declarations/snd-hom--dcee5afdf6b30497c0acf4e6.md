# snd_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcf77fce-0a87-d155-9bce-7d2a0f60c074",
  "kind": "lemma",
  "lexical_name": "snd_hom",
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
  "slug": "snd-hom--dcee5afdf6b30497c0acf4e6",
  "source": {
    "blob": "f8c9e2efd164a1a7cc25b36ea3f194c49eeee6a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 159,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant0750f82f5b4ee573e55b2f1b89d51de615500480ebe4a402b47e6750b2c28ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcee5afdf6b30497c0acf4e60f086b15419a1e6e48efee32ad8998c3ce721d98",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant0750f82f5b4ee573e55b2f1b89d51de615500480ebe4a402b47e6750b2c28ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcf77fce-0a87-d155-9bce-7d2a0f60c074`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma snd_hom (M N : Mon C) : (snd M N).hom = snd M.X N.X := rfl

/-! ### Comm monoid objects are internal monoid objects -/

/-- A commutative monoid object is a monoid object in the category of monoid objects. -/
@[to_additive
/-- A commutative additive monoid object is an additive monoid object in the category
of additive monoid objects. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant0750f82f5b4ee573e55b2f1b89d51de615500480ebe4a402b47e6750b2c28ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant0750f82f5b4ee573e55b2f1b89d51de615500480ebe4a402b47e6750b2c28ab1.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8c9e2efd164a1a7cc25b36ea3f194c49eeee6a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
