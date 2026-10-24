# LimitPresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49ceb561043adae997a4d1fec13853cddb7f9b661ea06fde24c0ed78370d391e",
  "kind": "structure",
  "lexical_name": "LimitPresentation",
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
  "slug": "limitpresentation--a1abbe884ac088f30d9ef40a",
  "source": {
    "blob": "110412d58607e085b626dca49da9d32dd298ed4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 125,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presentation/Variant00b872978dcd9f997c5fbdbd71a87e3022dd9ac4a526eaa0b1e289a62e7e7d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1abbe884ac088f30d9ef40acb23cd9f3b8294bac882f8556f6e6dc7f8d6c6b8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presentation/Variant00b872978dcd9f997c5fbdbd71a87e3022dd9ac4a526eaa0b1e289a62e7e7d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49ceb561043adae997a4d1fec13853cddb7f9b661ea06fde24c0ed78370d391e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LimitPresentation (J : Type w) [Category.{t} J] (X : C) where
  /-- The diagram `{Dᵢ}`. -/
  diag : J ⥤ C
  /-- The natural maps `sᵢ : X ⟶ Dᵢ`. -/
  π : (Functor.const J).obj X ⟶ diag
  /-- `X` is the limit of the `Dᵢ` via `sᵢ`. -/
  isLimit : IsLimit (Cone.mk _ π)

variable {J : Type w} [Category.{t} J] {X : C}

namespace LimitPresentation

initialize_simps_projections LimitPresentation (-isLimit)

set_option backward.defeqAttrib.useBackward true in
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presentation/Variant00b872978dcd9f997c5fbdbd71a87e3022dd9ac4a526eaa0b1e289a62e7e7d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presentation/Variant00b872978dcd9f997c5fbdbd71a87e3022dd9ac4a526eaa0b1e289a62e7e7d55.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `110412d58607e085b626dca49da9d32dd298ed4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
