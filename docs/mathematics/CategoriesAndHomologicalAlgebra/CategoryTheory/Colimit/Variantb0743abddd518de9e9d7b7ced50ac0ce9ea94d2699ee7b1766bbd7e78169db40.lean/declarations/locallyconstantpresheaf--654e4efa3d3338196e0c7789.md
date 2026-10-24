# locallyConstantPresheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7dcead5b5d966c89cbd07d102ff08af43bcde623f8bbc95338583d2861cea19",
  "kind": "abbrev",
  "lexical_name": "locallyConstantPresheaf",
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
  "slug": "locallyconstantpresheaf--654e4efa3d3338196e0c7789",
  "source": {
    "blob": "33120a7e118f4eb873b9eb5976c1c5ecb9ab4594",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 37,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb0743abddd518de9e9d7b7ced50ac0ce9ea94d2699ee7b1766bbd7e78169db40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:654e4efa3d3338196e0c77893934748fa11b1c0f753ef51c43bd0f84926b0a06",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb0743abddd518de9e9d7b7ced50ac0ce9ea94d2699ee7b1766bbd7e78169db40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7dcead5b5d966c89cbd07d102ff08af43bcde623f8bbc95338583d2861cea19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev locallyConstantPresheaf : Profinite.{u}ᵒᵖ ⥤ Type (u + 1) :=
  CompHausLike.LocallyConstant.functorToPresheaves.{u, u + 1}.obj X

#adaptation_note
/--
In this declaration and `isColimitLocallyConstantPresheaf`, `coe_comp` interferes with rewriting via
`Cone.w`, so we needed to manually exclude it.
-/
set_option backward.defeqAttrib.useBackward true in
/--
The functor `locallyConstantPresheaf` takes cofiltered limits of finite sets with surjective
projection maps to colimits.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb0743abddd518de9e9d7b7ced50ac0ce9ea94d2699ee7b1766bbd7e78169db40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb0743abddd518de9e9d7b7ced50ac0ce9ea94d2699ee7b1766bbd7e78169db40.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33120a7e118f4eb873b9eb5976c1c5ecb9ab4594` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
