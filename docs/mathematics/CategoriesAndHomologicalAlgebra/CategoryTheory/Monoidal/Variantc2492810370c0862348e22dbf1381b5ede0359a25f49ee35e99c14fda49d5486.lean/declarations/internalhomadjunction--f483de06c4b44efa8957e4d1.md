# internalHomAdjunction₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb402dbaa1abad77e463101c4e16268cc04993f79b69d1fe47c8ce5fec4d78df",
  "kind": "def",
  "lexical_name": "internalHomAdjunction₂",
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
  "slug": "internalhomadjunction--f483de06c4b44efa8957e4d1",
  "source": {
    "blob": "2a3868c44174f1c80d6e694b8885c953312503d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 283,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc2492810370c0862348e22dbf1381b5ede0359a25f49ee35e99c14fda49d5486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f483de06c4b44efa8957e4d1f5ece9232f8e1dd5521b266fa249c5368c57c37b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc2492810370c0862348e22dbf1381b5ede0359a25f49ee35e99c14fda49d5486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb402dbaa1abad77e463101c4e16268cc04993f79b69d1fe47c8ce5fec4d78df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def internalHomAdjunction₂ [MonoidalClosed C] :
    curriedTensor C ⊣₂ internalHom where
  adj _ := ihom.adjunction _

section OfEquiv

variable {D : Type u₂} [Category.{v₂} D] [MonoidalCategory.{v₂} D]

variable (F : C ⥤ D) {G : D ⥤ C} (adj : F ⊣ G)
  [F.Monoidal] [F.IsEquivalence] [MonoidalClosed D]

/-- Transport the property of being monoidal closed across a monoidal equivalence of categories -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc2492810370c0862348e22dbf1381b5ede0359a25f49ee35e99c14fda49d5486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc2492810370c0862348e22dbf1381b5ede0359a25f49ee35e99c14fda49d5486.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a3868c44174f1c80d6e694b8885c953312503d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
