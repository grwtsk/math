# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66fd67332aaadd77ca7c5fa5df565796367fbe48e349c07ef967860e7878f208",
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
  "slug": "instance--fe917a691caf8b24c4427b00",
  "source": {
    "blob": "ce362a5b87283fc8b627a19c1f01640889b8490f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 236,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant11a3dd0cb359d746cf9a5b99a15f1629d2ce4ccef609e9467e9c63bf19588a65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe917a691caf8b24c4427b002247c2f8c5bc2c82140ecdc53bea0da277d14210",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant11a3dd0cb359d746cf9a5b99a15f1629d2ce4ccef609e9467e9c63bf19588a65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66fd67332aaadd77ca7c5fa5df565796367fbe48e349c07ef967860e7878f208`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance (F : C ⥤ₑ D) : PreservesFiniteColimits F.obj :=
  F.property.2

variable {E : Type u₃} [Category.{v₃} E]

section

variable (C D E)

set_option backward.defeqAttrib.useBackward true in
/-- Whiskering a left exact functor by a left exact functor yields a left exact functor. -/
@[simps! obj_obj_obj obj_map map_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant11a3dd0cb359d746cf9a5b99a15f1629d2ce4ccef609e9467e9c63bf19588a65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant11a3dd0cb359d746cf9a5b99a15f1629d2ce4ccef609e9467e9c63bf19588a65.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce362a5b87283fc8b627a19c1f01640889b8490f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
