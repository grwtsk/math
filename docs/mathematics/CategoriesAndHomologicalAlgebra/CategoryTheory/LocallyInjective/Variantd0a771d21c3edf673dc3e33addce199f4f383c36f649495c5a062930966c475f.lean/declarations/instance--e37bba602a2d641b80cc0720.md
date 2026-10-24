# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f733cff83fac3155539166e5180325687d031c83bda9dcdbe0568ceb38ff4880",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e37bba602a2d641b80cc0720",
  "source": {
    "blob": "470b94e1e10ed7363f371806c591ece3d5ceb289",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 171,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e37bba602a2d641b80cc0720729cf66b0d56c2d5fd4ad41b7e19f1293242789c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f733cff83fac3155539166e5180325687d031c83bda9dcdbe0568ceb38ff4880`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (F : Cᵒᵖ ⥤ Type w) (G : Subpresheaf F) :
    IsLocallyInjective J G.ι :=
  isLocallyInjective_of_injective _ _ (fun X => by
    intro ⟨x, _⟩ ⟨y, _⟩ h
    exact Subtype.ext h)

section

open GrothendieckTopology.Plus

attribute [local instance] Types.instFunLike Types.instConcreteCategory

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyInjective/Variantd0a771d21c3edf673dc3e33addce199f4f383c36f649495c5a062930966c475f.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `470b94e1e10ed7363f371806c591ece3d5ceb289` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
