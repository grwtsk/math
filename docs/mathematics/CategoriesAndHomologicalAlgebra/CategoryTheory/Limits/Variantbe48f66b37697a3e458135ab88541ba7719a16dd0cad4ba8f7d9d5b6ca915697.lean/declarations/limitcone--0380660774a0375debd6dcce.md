# limitCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42d75ea67a96c1058897e954791adea19e120f871b426894559a4304d1195be4",
  "kind": "def",
  "lexical_name": "limitCone",
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
  "slug": "limitcone--0380660774a0375debd6dcce",
  "source": {
    "blob": "2275a8f6c561dbb658f3bcc1897ca0e29e539359",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0380660774a0375debd6dcce80376079d8ed046ed011537f3071446f90b22bb9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42d75ea67a96c1058897e954791adea19e120f871b426894559a4304d1195be4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def limitCone : Cone F :=
  { pt := MonCat.of (Types.Small.limitCone (F ⋙ forget _)).pt
    π :=
    { app j := ofHom (limitπMonoidHom F j)
      naturality := fun _ _ f => MonCat.ext fun x =>
        CategoryTheory.congr_hom ((Types.Small.limitCone (F ⋙ forget _)).π.naturality f) x } }

/-- Witness that the limit cone in `MonCat` is a limit cone.
(Internal use only; use the limits API.)
-/
@[to_additive "(Internal use only; use the limits API.)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantbe48f66b37697a3e458135ab88541ba7719a16dd0cad4ba8f7d9d5b6ca915697.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2275a8f6c561dbb658f3bcc1897ca0e29e539359` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
