# mapBifunctorMapHomotopy₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8d583431f5001494010fcb868a2c99dba3e6db4d4c03b9ca660e415904f6033",
  "kind": "def",
  "lexical_name": "mapBifunctorMapHomotopy₁",
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
  "slug": "mapbifunctormaphomotopy--c27bc3dc8a7f63d2b7cec532",
  "source": {
    "blob": "4a0d2257078bcb230e5ebf9f7b474431886cfd5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 178,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant81593e16af20646a3c18e9f133cd16f2e9711d5049f42f0e5e37561342daa2c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c27bc3dc8a7f63d2b7cec532dc8b203259215ce20564eda9be6096ad008732c8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant81593e16af20646a3c18e9f133cd16f2e9711d5049f42f0e5e37561342daa2c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8d583431f5001494010fcb868a2c99dba3e6db4d4c03b9ca660e415904f6033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapBifunctorMapHomotopy₁ :
    Homotopy (mapBifunctorMap f₁ f₂ F c) (mapBifunctorMap f₁' f₂ F c) where
  hom := hom₁ h₁ f₂ F c
  zero := zero₁ h₁ f₂ F c
  comm := comm₁ h₁ f₂ F c

set_option backward.defeqAttrib.useBackward true in
variable (f₁) {f₂ f₂'} in
open mapBifunctorMapHomotopy in
/-- The homotopy between `mapBifunctorMap f₁ f₂ F c` and `mapBifunctorMap f₁ f₂' F c` that
is induced by a homotopy between `f₂` and `f₂'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant81593e16af20646a3c18e9f133cd16f2e9711d5049f42f0e5e37561342daa2c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant81593e16af20646a3c18e9f133cd16f2e9711d5049f42f0e5e37561342daa2c2.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a0d2257078bcb230e5ebf9f7b474431886cfd5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
