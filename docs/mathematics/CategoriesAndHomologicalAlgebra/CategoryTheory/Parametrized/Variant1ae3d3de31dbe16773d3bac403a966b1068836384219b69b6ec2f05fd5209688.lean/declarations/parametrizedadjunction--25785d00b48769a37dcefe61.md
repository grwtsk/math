# ParametrizedAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e1b587ccb28ab005459201cefd7e961e02eb824bd7c973cff0c362adea986db",
  "kind": "structure",
  "lexical_name": "ParametrizedAdjunction",
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
  "slug": "parametrizedadjunction--25785d00b48769a37dcefe61",
  "source": {
    "blob": "7c7323772deecb18ec5ce5d8ba80ea433b7452c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant1ae3d3de31dbe16773d3bac403a966b1068836384219b69b6ec2f05fd5209688.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25785d00b48769a37dcefe616922e7c0542bdc9c7152b780da5232fe83d111ab",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant1ae3d3de31dbe16773d3bac403a966b1068836384219b69b6ec2f05fd5209688.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e1b587ccb28ab005459201cefd7e961e02eb824bd7c973cff0c362adea986db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ParametrizedAdjunction where
  /-- a family of adjunctions -/
  adj (X₁ : C₁) : F.obj X₁ ⊣ G.obj (op X₁)
  unit_whiskerRight_map {X₁ Y₁ : C₁} (f : X₁ ⟶ Y₁) :
    (adj X₁).unit ≫ whiskerRight (F.map f) _ = (adj Y₁).unit ≫ whiskerLeft _ (G.map f.op) :=
      by aesop_cat

/-- The notation `F ⊣₂ G` stands for `ParametrizedAdjunction F G`
representing that the bifunctor `F` is the left adjoint to `G`
in an adjunction with a parameter. -/
infixl:15 " ⊣₂ " => ParametrizedAdjunction

namespace ParametrizedAdjunction

attribute [reassoc] unit_whiskerRight_map

variable {F G}

/-- Alternative constructor for parametrized adjunctions, for which
the compatibility is stated in terms of `Adjunction.homEquiv`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant1ae3d3de31dbe16773d3bac403a966b1068836384219b69b6ec2f05fd5209688.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant1ae3d3de31dbe16773d3bac403a966b1068836384219b69b6ec2f05fd5209688.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c7323772deecb18ec5ce5d8ba80ea433b7452c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
