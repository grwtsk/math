# map_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3aa46e4-e741-984e-e158-8261dbb8f586",
  "kind": "lemma",
  "lexical_name": "map_comp",
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
  "slug": "map-comp--b80aba9b941ecea9f2a79e51",
  "source": {
    "blob": "2592d2306746bc4c52a5f35d746d2ddf392eb257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 181,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b80aba9b941ecea9f2a79e5175896b4a7654b077d54c203e4eea067dc80b3e8d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3aa46e4-e741-984e-e158-8261dbb8f586`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_comp {a b c : M} (f : ShiftedHom X Y a) (g : ShiftedHom Y Z b)
    (h : b + a = c) (F : C ⥤ D) [F.CommShift M] :
    (f.comp g h).map F = (f.map F).comp (g.map F) h := by
  dsimp [comp, map]
  simp only [Functor.map_comp, assoc]
  erw [← NatTrans.naturality_assoc]
  simp only [Functor.comp_map, F.commShiftIso_add' h, Functor.CommShift.isoAdd'_hom_app,
    ← Functor.map_comp_assoc, Iso.inv_hom_id_app, Functor.comp_obj, comp_id, assoc]

end ShiftedHom

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2592d2306746bc4c52a5f35d746d2ddf392eb257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
