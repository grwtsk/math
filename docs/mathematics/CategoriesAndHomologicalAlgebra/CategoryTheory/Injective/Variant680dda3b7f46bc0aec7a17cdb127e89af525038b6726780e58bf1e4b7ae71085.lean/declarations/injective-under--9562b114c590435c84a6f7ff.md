# injective_under

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:673399d2eb50be2019b266740e3b01272f10a4dec10a7499c91a7b601f54fc99",
  "kind": "instance",
  "lexical_name": "injective_under",
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
  "slug": "injective-under--9562b114c590435c84a6f7ff",
  "source": {
    "blob": "5241c9dbb65ae2a76e9cfbf45a576e113720ff82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 230,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant680dda3b7f46bc0aec7a17cdb127e89af525038b6726780e58bf1e4b7ae71085.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9562b114c590435c84a6f7fffb3ae7b12c37d05269f06bbfcf84dbf8df7705a0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant680dda3b7f46bc0aec7a17cdb127e89af525038b6726780e58bf1e4b7ae71085.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:673399d2eb50be2019b266740e3b01272f10a4dec10a7499c91a7b601f54fc99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance injective_under (X : C) : Injective (under X) :=
  (EnoughInjectives.presentation X).some.injective
#align category_theory.injective.injective_under CategoryTheory.Injective.injective_under

/-- The monomorphism `Injective.ι : X ⟶ Injective.under X`
from the arbitrarily chosen injective object under `X`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant680dda3b7f46bc0aec7a17cdb127e89af525038b6726780e58bf1e4b7ae71085.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant680dda3b7f46bc0aec7a17cdb127e89af525038b6726780e58bf1e4b7ae71085.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5241c9dbb65ae2a76e9cfbf45a576e113720ff82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
