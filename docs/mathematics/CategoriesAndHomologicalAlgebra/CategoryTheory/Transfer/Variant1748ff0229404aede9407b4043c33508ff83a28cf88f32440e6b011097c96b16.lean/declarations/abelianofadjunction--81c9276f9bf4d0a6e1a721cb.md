# abelianOfAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee6cda847904e5fc13f00a05860d859000fc383340c9a6a674197dc5565f468b",
  "kind": "def",
  "lexical_name": "abelianOfAdjunction",
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
  "slug": "abelianofadjunction--81c9276f9bf4d0a6e1a721cb",
  "source": {
    "blob": "c264b9df927801daf9a915b2ddf4f6ebb188a7ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 94,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant1748ff0229404aede9407b4043c33508ff83a28cf88f32440e6b011097c96b16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81c9276f9bf4d0a6e1a721cbed959e3e79b14c5d5e7b70cdc728b7d4c020022f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant1748ff0229404aede9407b4043c33508ff83a28cf88f32440e6b011097c96b16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee6cda847904e5fc13f00a05860d859000fc383340c9a6a674197dc5565f468b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def abelianOfAdjunction {C : Type u₁} [Category.{v₁} C] [Preadditive C] [HasFiniteProducts C]
    {D : Type u₂} [Category.{v₂} D] [Abelian D] (F : C ⥤ D)
    (G : D ⥤ C) [Functor.PreservesZeroMorphisms G] [PreservesFiniteLimits G] (i : F ⋙ G ≅ 𝟭 C)
    (adj : G ⊣ F) : Abelian C := by
  haveI := hasKernels F G i
  haveI := hasCokernels F G i adj
  have : ∀ {X Y : C} (f : X ⟶ Y), IsIso (Abelian.coimageImageComparison f) := by
    intro X Y f
    let arrowIso : Arrow.mk (G.map (F.map f)) ≅ Arrow.mk f :=
      ((Functor.mapArrowFunctor _ _).mapIso i).app (Arrow.mk f)
    have : PreservesColimits G := adj.leftAdjoint_preservesColimits
    let iso : Arrow.mk (G.map (Abelian.coimageImageComparison (F.map f))) ≅
        Arrow.mk (Abelian.coimageImageComparison f) :=
      Abelian.PreservesCoimageImageComparison.iso G (F.map f) ≪≫
        Abelian.coimageImageComparisonFunctor.mapIso arrowIso
    rw [Arrow.isIso_iff_isIso_of_isIso iso.inv]
    infer_instance
  apply Abelian.ofCoimageImageComparisonIsIso

/-- If `C` is an additive category equivalent to an abelian category `D`
via a functor that preserves zero morphisms,
then `C` is also abelian.
-/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant1748ff0229404aede9407b4043c33508ff83a28cf88f32440e6b011097c96b16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Transfer/Variant1748ff0229404aede9407b4043c33508ff83a28cf88f32440e6b011097c96b16.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c264b9df927801daf9a915b2ddf4f6ebb188a7ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
