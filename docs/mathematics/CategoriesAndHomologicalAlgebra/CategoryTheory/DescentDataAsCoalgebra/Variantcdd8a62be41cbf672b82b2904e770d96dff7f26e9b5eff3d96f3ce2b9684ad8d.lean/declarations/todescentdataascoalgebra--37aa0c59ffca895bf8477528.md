# toDescentDataAsCoalgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:228996fa141aac206ca176beb61fbc4b22fd3fe5463d8a2088604297bba23727",
  "kind": "def",
  "lexical_name": "toDescentDataAsCoalgebra",
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
  "slug": "todescentdataascoalgebra--37aa0c59ffca895bf8477528",
  "source": {
    "blob": "65024d76fe2659d728bfcb61b7425ec1abed5d97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 177,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variantcdd8a62be41cbf672b82b2904e770d96dff7f26e9b5eff3d96f3ce2b9684ad8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37aa0c59ffca895bf84775280abcc18b9ef37472a60cbba385bed324aaf84eaf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variantcdd8a62be41cbf672b82b2904e770d96dff7f26e9b5eff3d96f3ce2b9684ad8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:228996fa141aac206ca176beb61fbc4b22fd3fe5463d8a2088604297bba23727`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toDescentDataAsCoalgebra
    {ι : Type t} {S : C} {X : ι → C} (f : ∀ i, X i ⟶ S) :
    (F.obj (.mk (op S))).obj ⥤ F.DescentDataAsCoalgebra f where
  obj M :=
    { obj i := (F.map (f i).op.toLoc).l.toFunctor.obj M
      hom i₁ i₂ :=
        (F.map (f i₁).op.toLoc).l.toFunctor.map
          ((F.map (f i₂).op.toLoc).adj.unit.toNatTrans.app _)
      coassoc i₁ i₂ i₃ := by
        rw [← Functor.map_comp, ← Functor.map_comp, Adj.unit_naturality] }
  map g :=
    { hom i := (F.map (f i).op.toLoc).l.toFunctor.map g
      comm i₁ i₂ := by simp [← Functor.map_comp] }

section

variable (ι : Type*) [Unique ι] {X S : C} (f : X ⟶ S)

/-- When `ι` contains a unique element and `f : X ⟶ S` is a morphism,
the composition of `F.toDescentDataAsCoalgebra (fun (_ : ι) ↦ f)`
and the functor of the equivalence
`DescentDataAsCoalgebra.coalgebraEquivalence F ι f` identifies to
`Comonad.comparison` applied to the adjunction corresponding to
`F.map f.op.toLoc`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variantcdd8a62be41cbf672b82b2904e770d96dff7f26e9b5eff3d96f3ce2b9684ad8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentDataAsCoalgebra/Variantcdd8a62be41cbf672b82b2904e770d96dff7f26e9b5eff3d96f3ce2b9684ad8d.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65024d76fe2659d728bfcb61b7425ec1abed5d97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
