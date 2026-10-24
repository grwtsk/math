# comparison_essSurj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b44895b6c0dc5b2faaeaeb08cde058cb0f4f5d33d6634edbab02fae7e632a98f",
  "kind": "instance",
  "lexical_name": "comparison_essSurj",
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
  "slug": "comparison-esssurj--6150b459bd640884db28606a",
  "source": {
    "blob": "1ab320bb293816a8ff1e67ce28c1350e3c24f31c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 322,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6150b459bd640884db28606a69b488621e347903f6ef2e9ac148128e5200953c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b44895b6c0dc5b2faaeaeb08cde058cb0f4f5d33d6634edbab02fae7e632a98f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance comparison_essSurj [Reflective R] :
    (Monad.comparison (reflectorAdjunction R)).EssSurj := by
  refine ⟨fun X => ⟨(reflector R).obj X.A, ⟨?_⟩⟩⟩
  symm
  refine Monad.Algebra.isoMk ?_ ?_
  · exact asIso ((reflectorAdjunction R).unit.app X.A)
  dsimp only [Functor.comp_map, Monad.comparison_obj_a, asIso_hom, Functor.comp_obj,
    Monad.comparison_obj_A, Adjunction.toMonad_coe]
  rw [← cancel_epi ((reflectorAdjunction R).unit.app X.A)]
  dsimp only [Functor.id_obj, Functor.comp_obj]
  rw [Adjunction.unit_naturality_assoc,
    Adjunction.right_triangle_components, comp_id]
  apply (X.unit_assoc _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ab320bb293816a8ff1e67ce28c1350e3c24f31c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
