# mapBifunctorShift₁Iso_trans_mapBifunctorShift₂Iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83a5a29a3a8d242a56320759aa42f26bef2dcf1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:718e0b3a-d394-eab4-6afc-842dbfca34d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37b01c83-3382-676a-dc43-601623bcf7d4",
  "kind": "lemma",
  "lexical_name": "mapBifunctorShift₁Iso_trans_mapBifunctorShift₂Iso",
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
  "slug": "mapbifunctorshift-iso-trans-mapbifunctorshift-iso--e09cfe336346fc7d288d51ff",
  "source": {
    "blob": "83a5a29a3a8d242a56320759aa42f26bef2dcf1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 132,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e09cfe336346fc7d288d51ff0fbe0031d40f8d0a9a49d33327752b0ad9cfd643",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37b01c83-3382-676a-dc43-601623bcf7d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapBifunctorShift₁Iso_trans_mapBifunctorShift₂Iso :
    mapBifunctorShift₁Iso K₁ (K₂⟦y⟧) F x ≪≫
      (CategoryTheory.shiftFunctor _ x).mapIso (mapBifunctorShift₂Iso K₁ K₂ F y) =
      (x * y).negOnePow • (mapBifunctorShift₂Iso (K₁⟦x⟧) K₂ F y ≪≫
        (CategoryTheory.shiftFunctor _ y).mapIso (mapBifunctorShift₁Iso K₁ K₂ F x) ≪≫
          (shiftFunctorComm (CochainComplex D ℤ) x y).app _) := by
  ext1
  dsimp [mapBifunctorShift₁Iso, mapBifunctorShift₂Iso]
  rw [Functor.map_comp, Functor.map_comp, assoc, assoc, assoc,
    ← HomologicalComplex₂.totalShift₁Iso_hom_naturality_assoc,
    HomologicalComplex₂.totalShift₁Iso_hom_totalShift₂Iso_hom,
    ← HomologicalComplex₂.totalShift₂Iso_hom_naturality_assoc,
    Linear.comp_units_smul, Linear.comp_units_smul,
    smul_left_cancel_iff,
    ← HomologicalComplex₂.total.map_comp_assoc,
    ← HomologicalComplex₂.total.map_comp_assoc,
    ← HomologicalComplex₂.total.map_comp_assoc]
  congr 2
  ext a b
  dsimp [HomologicalComplex₂.shiftFunctor₁₂CommIso]
  simp only [id_comp]

end

end CochainComplex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variant95c5a1c253aef01dda0890f1a760a68ef38d62e91d9f1aef83f397593009bb8a.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83a5a29a3a8d242a56320759aa42f26bef2dcf1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
