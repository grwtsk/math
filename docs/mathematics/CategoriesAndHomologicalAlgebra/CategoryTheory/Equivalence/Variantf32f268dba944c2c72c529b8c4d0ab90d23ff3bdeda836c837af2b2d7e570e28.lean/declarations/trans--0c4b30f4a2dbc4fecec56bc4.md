# trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2336829203d00832b65005510a6e0bf785b8ef68e16bee3c1c7088ca5b66a75e",
  "kind": "def",
  "lexical_name": "trans",
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
  "slug": "trans--0c4b30f4a2dbc4fecec56bc4",
  "source": {
    "blob": "4d61a0fbe9732519fd0a9f6bf1ac240aaaf9a079",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 354,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c4b30f4a2dbc4fecec56bc4403414d236d27f1da8c120db93ae5c017b6aa84a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2336829203d00832b65005510a6e0bf785b8ef68e16bee3c1c7088ca5b66a75e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def trans (e : C ≌ D) (f : D ≌ E) : C ≌ E where
  functor := e.functor ⋙ f.functor
  inverse := f.inverse ⋙ e.inverse
  unitIso := e.unitIso ≪≫ isoWhiskerRight (e.functor.rightUnitor.symm ≪≫
    isoWhiskerLeft _ f.unitIso ≪≫ (Functor.associator _ _ _ ).symm) _ ≪≫ Functor.associator _ _ _
  counitIso := (Functor.associator _ _ _ ).symm ≪≫ isoWhiskerRight ((Functor.associator _ _ _ ) ≪≫
      isoWhiskerLeft _ e.counitIso ≪≫ f.inverse.rightUnitor) _ ≪≫ f.counitIso
  -- We wouldn't have needed to give this proof if we'd used `Equivalence.mk`,
  -- but we choose to avoid using that here, for the sake of good structure projection `simp`
  -- lemmas.
  functor_unitIso_comp X := by
    dsimp
    simp only [comp_id, id_comp, map_comp, fun_inv_map, comp_obj, id_obj, counitInv,
      functor_unit_comp_assoc, assoc]
    slice_lhs 2 3 => rw [← Functor.map_comp, Iso.inv_hom_id_app]
    simp

/-- Composing a functor with both functors of an equivalence yields a naturally isomorphic
functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantf32f268dba944c2c72c529b8c4d0ab90d23ff3bdeda836c837af2b2d7e570e28.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d61a0fbe9732519fd0a9f6bf1ac240aaaf9a079` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
