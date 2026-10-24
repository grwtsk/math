# ColimitPresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9599a20810e0e226d613af7a5190fc2ad93fe004493e4a6bf4a4701e7313e457",
  "kind": "structure",
  "lexical_name": "ColimitPresentation",
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
  "slug": "colimitpresentation--aed9315629156dcea18f38df",
  "source": {
    "blob": "110412d58607e085b626dca49da9d32dd298ed4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 42,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presentation/Variant00b872978dcd9f997c5fbdbd71a87e3022dd9ac4a526eaa0b1e289a62e7e7d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aed9315629156dcea18f38dff55793c4cc0132d199f06704ace1f3bcc86d909d",
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

Occurrence: `declaration:9599a20810e0e226d613af7a5190fc2ad93fe004493e4a6bf4a4701e7313e457`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ColimitPresentation (J : Type w) [Category.{t} J] (X : C) where
  /-- The diagram `{Dᵢ}`. -/
  diag : J ⥤ C
  /-- The natural maps `sᵢ : Dᵢ ⟶ X`. -/
  ι : diag ⟶ (Functor.const J).obj X
  /-- `X` is the colimit of the `Dᵢ` via `sᵢ`. -/
  isColimit : IsColimit (Cocone.mk _ ι)

variable {J : Type w} [Category.{t} J] {X : C}

namespace ColimitPresentation

initialize_simps_projections ColimitPresentation (-isColimit)

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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presentation/Variant00b872978dcd9f997c5fbdbd71a87e3022dd9ac4a526eaa0b1e289a62e7e7d55.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `110412d58607e085b626dca49da9d32dd298ed4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
