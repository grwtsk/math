# preservesZeroMorphisms_of_map_zero_object

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cdc9869-3d41-8bc9-dcd8-9d47e2bb4afb",
  "kind": "theorem",
  "lexical_name": "preservesZeroMorphisms_of_map_zero_object",
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
  "slug": "preserveszeromorphisms-of-map-zero-object--eebab337b9579e6081977f78",
  "source": {
    "blob": "4263ea3c87715d077ee107709044c2c2d0e3b693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 146,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eebab337b9579e6081977f782d7890e7527026bccdfa1672e7b7e32ceaf01e18",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cdc9869-3d41-8bc9-dcd8-9d47e2bb4afb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preservesZeroMorphisms_of_map_zero_object (i : F.obj 0 ≅ 0) : PreservesZeroMorphisms F where
  map_zero X Y :=
    calc
      F.map (0 : X ⟶ Y) = F.map (0 : X ⟶ 0) ≫ F.map 0 := by rw [← Functor.map_comp, comp_zero]
      _ = F.map 0 ≫ (i.hom ≫ i.inv) ≫ F.map 0 := by rw [Iso.hom_inv_id, Category.id_comp]
      _ = 0 := by simp only [zero_of_to_zero i.hom, zero_comp, comp_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4263ea3c87715d077ee107709044c2c2d0e3b693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
