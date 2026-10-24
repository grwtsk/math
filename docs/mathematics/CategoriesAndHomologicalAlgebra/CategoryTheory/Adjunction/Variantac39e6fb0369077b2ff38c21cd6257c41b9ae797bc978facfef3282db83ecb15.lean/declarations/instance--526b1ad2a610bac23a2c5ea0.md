# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6de7297f1d790f87638758c8c63e16558657414aaf480cfc7a752c43fc6e57a",
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
  "slug": "instance--526b1ad2a610bac23a2c5ea0",
  "source": {
    "blob": "bd0eb80406ca62dcd5d7de337f4c580df9fd1507",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 319,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:526b1ad2a610bac23a2c5ea0877268373ed960750fdf05483f46e2a845a542b8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6de7297f1d790f87638758c8c63e16558657414aaf480cfc7a752c43fc6e57a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Reflective R] (X : (reflectorAdjunction R).toMonad.Algebra) :
    IsIso ((reflectorAdjunction R).unit.app X.A) :=
  ⟨⟨X.a,
      ⟨X.unit, by
        dsimp only [Functor.id_obj]
        rw [← (reflectorAdjunction R).unit_naturality]
        dsimp only [Functor.comp_obj, Adjunction.toMonad_coe]
        rw [unit_obj_eq_map_unit, ← Functor.map_comp, ← Functor.map_comp]
        dsimp [X.unit]
        simpa using congrArg (fun t ↦ R.map ((reflector R).map t)) X.unit ⟩⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantac39e6fb0369077b2ff38c21cd6257c41b9ae797bc978facfef3282db83ecb15.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd0eb80406ca62dcd5d7de337f4c580df9fd1507` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
