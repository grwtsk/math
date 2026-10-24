# Functor.mapHomologicalComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14f69c985d798587a9a2982f170803d7b013c1f8cdb3c13d9a11d14fd291de48",
  "kind": "def",
  "lexical_name": "Functor.mapHomologicalComplex",
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
  "slug": "functor-maphomologicalcomplex--65388f113b3c84e9ffb99e34",
  "source": {
    "blob": "b125c353605ae3c932895ae3f4598e9e7e8b3023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant9c070f7a324089af50864710f2b632b977bbe323fe568c4df5bede70c4daf675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65388f113b3c84e9ffb99e34f58401507b6224583ff7e9d783370d08ff141ab1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant9c070f7a324089af50864710f2b632b977bbe323fe568c4df5bede70c4daf675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14f69c985d798587a9a2982f170803d7b013c1f8cdb3c13d9a11d14fd291de48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Functor.mapHomologicalComplex (F : W₁ ⥤ W₂) [F.PreservesZeroMorphisms] (c : ComplexShape ι) :
    HomologicalComplex W₁ c ⥤ HomologicalComplex W₂ c where
  obj C :=
    { X i := F.obj (C.X i)
      d i j := F.map (C.d i j)
      shape i j w := by
        rw [C.shape _ _ w, F.map_zero]
      d_comp_d' := fun i j k _ _ => by rw [← F.map_comp, C.d_comp_d, F.map_zero] }
  map f :=
    { f i := F.map (f.f i)
      comm' := fun i j _ => by
        dsimp
        rw [← F.map_comp, ← F.map_comp, f.comm] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant9c070f7a324089af50864710f2b632b977bbe323fe568c4df5bede70c4daf675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant9c070f7a324089af50864710f2b632b977bbe323fe568c4df5bede70c4daf675.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b125c353605ae3c932895ae3f4598e9e7e8b3023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
