# preservesLimitsOfShape_presheafToSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8aca22a765e8f7d9803b00ff258c3bffbbff2fcf77a5f39cb759efc449693e0f",
  "kind": "instance",
  "lexical_name": "preservesLimitsOfShape_presheafToSheaf",
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
  "slug": "preserveslimitsofshape-presheaftosheaf--2de48647e5f0609277624c3c",
  "source": {
    "blob": "7e3df8e2fa48d6f98e6297eee93e069f7e27629d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 244,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2de48647e5f0609277624c3c92ce8f4e6448f4ec873f2dd7d65eb192403acaf1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8aca22a765e8f7d9803b00ff258c3bffbbff2fcf77a5f39cb759efc449693e0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance preservesLimitsOfShape_presheafToSheaf :
    PreservesLimitsOfShape K (presheafToSheaf J D) := by
  constructor; intro F; constructor; intro S hS
  apply isLimitOfReflects (sheafToPresheaf J D)
  have : ReflectsLimitsOfShape K (forget D) := reflectsLimitsOfShapeOfReflectsIsomorphisms
  -- porting note: the mathlib proof was by `apply is_limit_of_preserves (J.sheafification D) hS`
  have : PreservesLimitsOfShape K (presheafToSheaf J D ⋙ sheafToPresheaf J D) :=
    preservesLimitsOfShapeOfNatIso (J.sheafificationIsoPresheafToSheafCompSheafToPreasheaf D)
  exact isLimitOfPreserves (presheafToSheaf J D ⋙ sheafToPresheaf J D) hS

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e3df8e2fa48d6f98e6297eee93e069f7e27629d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
