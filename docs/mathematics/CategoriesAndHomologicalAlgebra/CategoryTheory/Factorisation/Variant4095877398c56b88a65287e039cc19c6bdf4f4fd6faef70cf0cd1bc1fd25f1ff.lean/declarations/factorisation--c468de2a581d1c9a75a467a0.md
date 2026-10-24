# Factorisation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d8de33048d0ef6914c9cdd4d9011cb63946f12335ebf64535846b46fb6491ca",
  "kind": "structure",
  "lexical_name": "Factorisation",
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
  "slug": "factorisation--c468de2a581d1c9a75a467a0",
  "source": {
    "blob": "ae4eb7720d611691572b2e7b9d1a0897e0d86d9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c468de2a581d1c9a75a467a0d84094a7a5c749713883a8c4f9ed11869f5c11fe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d8de33048d0ef6914c9cdd4d9011cb63946f12335ebf64535846b46fb6491ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Factorisation {X Y : C} (f : X ⟶ Y) where
  /-- The midpoint of the factorisation. -/
  mid : C
  /-- The morphism into the factorisation midpoint. -/
  ι   : X ⟶ mid
  /-- The morphism out of the factorisation midpoint. -/
  π   : mid ⟶ Y
  /-- The factorisation condition. -/
  ι_π : ι ≫ π = f := by aesop_cat

attribute [simp] Factorisation.ι_π

namespace Factorisation

variable {X Y : C} {f : X ⟶ Y}

/-- Morphisms of `Factorisation f` consist of morphism between their midpoints and the obvious
commutativity conditions. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorisation/Variant4095877398c56b88a65287e039cc19c6bdf4f4fd6faef70cf0cd1bc1fd25f1ff.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae4eb7720d611691572b2e7b9d1a0897e0d86d9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
