# Subfunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:065102c7da46d350a7ee064188e8df2cbd9beb5c2fc8a653797cd5e6a663df87",
  "kind": "structure",
  "lexical_name": "Subfunctor",
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
  "slug": "subfunctor--0691bbfc8378398adc5c7368",
  "source": {
    "blob": "40f45e009afb6a19d9f103223b2ddc477b28fa13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant41e267f2323b36e3a0da62b5e0ab9e4e417e01804d9eadcd7d80973c93da34b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0691bbfc8378398adc5c73689e8650526010b8c9aadf44146b48b3f509dcd677",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant41e267f2323b36e3a0da62b5e0ab9e4e417e01804d9eadcd7d80973c93da34b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:065102c7da46d350a7ee064188e8df2cbd9beb5c2fc8a653797cd5e6a663df87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Subfunctor (F : C ⥤ Type w) where
  /-- If `G` is a subfunctor of `F`, then the sections of `G` on `U` forms a subset of sections of
  `F` on `U`. -/
  obj : ∀ U, Set (F.obj U)
  /-- If `G` is a subfunctor of `F` and `i : U ⟶ V`, then for each `G`-sections on `U` `x`,
  `F i x` is in `F(V)`. -/
  map : ∀ {U V : C} (i : U ⟶ V), obj U ⊆ F.map i ⁻¹' obj V

variable {F F' : C ⥤ Type w} (G G' : Subfunctor F)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant41e267f2323b36e3a0da62b5e0ab9e4e417e01804d9eadcd7d80973c93da34b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant41e267f2323b36e3a0da62b5e0ab9e4e417e01804d9eadcd7d80973c93da34b3.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40f45e009afb6a19d9f103223b2ddc477b28fa13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
