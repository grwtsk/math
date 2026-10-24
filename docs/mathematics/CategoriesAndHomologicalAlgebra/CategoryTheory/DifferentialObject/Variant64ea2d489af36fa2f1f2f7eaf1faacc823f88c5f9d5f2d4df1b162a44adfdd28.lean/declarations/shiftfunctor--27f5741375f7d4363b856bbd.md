# shiftFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc44075a8a5a392a3e43ba44aa5ed22f6b4cf8c8529fe0b02bd3bcc944122fda",
  "kind": "def",
  "lexical_name": "shiftFunctor",
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
  "slug": "shiftfunctor--27f5741375f7d4363b856bbd",
  "source": {
    "blob": "a211d4f74bcd4faaa69d1e24605bc2adb730d252",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 265,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27f5741375f7d4363b856bbd6dd71773ba6926f85765c6aa38c01a49582480ee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc44075a8a5a392a3e43ba44aa5ed22f6b4cf8c8529fe0b02bd3bcc944122fda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shiftFunctor (n : S) : DifferentialObject S C ⥤ DifferentialObject S C where
  obj X :=
    { obj := X.obj⟦n⟧
      d := X.d⟦n⟧' ≫ (shiftComm _ _ _).hom
      d_squared := by
        rw [Functor.map_comp, Category.assoc, shiftComm_hom_comp_assoc, ← Functor.map_comp_assoc,
          X.d_squared, Functor.map_zero, zero_comp] }
  map f :=
    { f := f.f⟦n⟧'
      comm := by
        dsimp
        rw [Category.assoc]
        erw [shiftComm_hom_comp]
        rw [← Functor.map_comp_assoc, f.comm, Functor.map_comp_assoc]
        rfl }
  map_id X := by ext1; dsimp; rw [Functor.map_id]
  map_comp f g := by ext1; dsimp; rw [Functor.map_comp]

/-- The shift functor on `DifferentialObject S C` is additive. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a211d4f74bcd4faaa69d1e24605bc2adb730d252` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
