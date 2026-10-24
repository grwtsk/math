# homologicalKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:260c29a5595b601cbf797949e3e2c85861c27eaec1f68db9e484c1bcab6ae632",
  "kind": "def",
  "lexical_name": "homologicalKernel",
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
  "slug": "homologicalkernel--f0824a1a305e2365ab09e4db",
  "source": {
    "blob": "5552b70022e379268543fb0d313b5d17150e33d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0824a1a305e2365ab09e4db2f38000d46ef8014b95fdbdd893a14e5df48a555",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:260c29a5595b601cbf797949e3e2c85861c27eaec1f68db9e484c1bcab6ae632`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homologicalKernel [F.IsHomological] :
    Triangulated.Subcategory C := Triangulated.Subcategory.mk'
  (fun X => ∀ (n : ℤ), IsZero (F.obj (X⟦n⟧)))
  (fun n => by
    rw [IsZero.iff_id_eq_zero, ← F.map_id, ← Functor.map_id,
      id_zero, Functor.map_zero, Functor.map_zero])
  (fun X a hX b => IsZero.of_iso (hX (a + b)) (F.mapIso ((shiftFunctorAdd C a b).app X).symm))
  (fun T hT h₁ h₃ n => (F.map_distinguished_exact _
    (Triangle.shift_distinguished T hT n)).isZero_of_both_zeros
      (IsZero.eq_of_src (h₁ n) _ _) (IsZero.eq_of_tgt (h₃ n) _ _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5552b70022e379268543fb0d313b5d17150e33d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
