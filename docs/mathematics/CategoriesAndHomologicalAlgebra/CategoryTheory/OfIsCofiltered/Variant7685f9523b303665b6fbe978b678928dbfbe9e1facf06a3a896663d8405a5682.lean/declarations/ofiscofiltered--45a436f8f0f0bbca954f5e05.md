# ofIsCofiltered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32324aaacc41258b8a4fd192a5f4830c21b622e7d270d59c89c1b7fcd3d12507",
  "kind": "def",
  "lexical_name": "ofIsCofiltered",
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
  "slug": "ofiscofiltered--45a436f8f0f0bbca954f5e05",
  "source": {
    "blob": "12bf17da87ceafd3c3a7b90d4558b3d9383301fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 148,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfIsCofiltered/Variant7685f9523b303665b6fbe978b678928dbfbe9e1facf06a3a896663d8405a5682.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45a436f8f0f0bbca954f5e05abf6e96040725b4296ca054ec8b572a4f027b590",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfIsCofiltered/Variant7685f9523b303665b6fbe978b678928dbfbe9e1facf06a3a896663d8405a5682.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32324aaacc41258b8a4fd192a5f4830c21b622e7d270d59c89c1b7fcd3d12507`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofIsCofiltered :
    Point.{w} J where
  fiber := ofIsCofiltered.fiber p
  jointly_surjective {X} R hR x := by
    obtain ⟨U, f, rfl⟩ := fiberMk_jointly_surjective x
    obtain ⟨Y, g, hg, V, q, a, ha⟩ := hp R hR f
    exact ⟨Y, g, hg, fiberMk a, by simp [ha]⟩

variable {A : Type u''} [Category.{v''} A] [HasColimitsOfSize.{w, w} A]

/-- The canonical maps `P.obj (op (p.obj U)) ⟶ (ofIsCofiltered p hp).presheafFiber.obj P`
that are part of the colimit cocone `presheafFiberOfIsCofilteredCocone`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfIsCofiltered/Variant7685f9523b303665b6fbe978b678928dbfbe9e1facf06a3a896663d8405a5682.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfIsCofiltered/Variant7685f9523b303665b6fbe978b678928dbfbe9e1facf06a3a896663d8405a5682.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12bf17da87ceafd3c3a7b90d4558b3d9383301fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
