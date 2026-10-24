# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:089f0c74e020a06e0e7a5a30eb0d9528d6aa309e60ffea22bcd0db240ccc4b6d",
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
  "slug": "instance--66a4a7fea2de580590dc0698",
  "source": {
    "blob": "ae839c77d03fb8e3ee75722194ae0842ff2d6472",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 199,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66a4a7fea2de580590dc0698b2c3696b5d2cf9654e4c5481223aab13ee3b07f0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:089f0c74e020a06e0e7a5a30eb0d9528d6aa309e60ffea22bcd0db240ccc4b6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsCofilteredOrEmpty (cofilteredClosure f).FullSubcategory where
  cone_objs j j' :=
    ⟨⟨min j.1 j'.1, cofilteredClosure.min j.2 j'.2⟩, minToLeft _ _, minToRight _ _, trivial⟩
  cone_maps {j j'} f f' :=
    ⟨⟨eq f f', cofilteredClosure.eq j.2 j'.2 f f'⟩, eqHom (C := C) f f', eq_condition _ _⟩

namespace CofilteredClosureSmall

/-- Implementation detail for the instance
    `EssentiallySmall.{max v w} (FullSubcategory (cofilteredClosure f))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant5775d15efec3f4b26e52202e081493728900f9219253862dcfe341aa371628a0.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae839c77d03fb8e3ee75722194ae0842ff2d6472` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
