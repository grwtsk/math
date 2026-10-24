# PreservesFiniteBiproducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79505e51860c75dffa4bf21df4df01eb3adf4b52b96b747d36757f9675aa83f7",
  "kind": "class",
  "lexical_name": "PreservesFiniteBiproducts",
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
  "slug": "preservesfinitebiproducts--bc4fc60221223843d32d96de",
  "source": {
    "blob": "f147443dbe19a751e73d712f43c4587a9bca60e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta9a056be94b16694d3dbb82bd98c29eb7919a1d661dab63bab9bebda67f1f094.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc4fc60221223843d32d96deca09e1b9d65d2f8149b5c0a353fae7897b0ed556",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta9a056be94b16694d3dbb82bd98c29eb7919a1d661dab63bab9bebda67f1f094.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79505e51860c75dffa4bf21df4df01eb3adf4b52b96b747d36757f9675aa83f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class PreservesFiniteBiproducts (F : C ⥤ D) [PreservesZeroMorphisms F] : Prop where
  preserves : ∀ {J : Type} [Finite J], PreservesBiproductsOfShape J F

attribute [inherit_doc PreservesFiniteBiproducts] PreservesFiniteBiproducts.preserves
attribute [instance 100] PreservesFiniteBiproducts.preserves

/-- A functor `F` preserves biproducts if it preserves biproducts of any shape `J` of size `w`.
The usual notion of preservation of biproducts is recovered by choosing `w` to be the universe
of the morphisms of `C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta9a056be94b16694d3dbb82bd98c29eb7919a1d661dab63bab9bebda67f1f094.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Varianta9a056be94b16694d3dbb82bd98c29eb7919a1d661dab63bab9bebda67f1f094.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f147443dbe19a751e73d712f43c4587a9bca60e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
