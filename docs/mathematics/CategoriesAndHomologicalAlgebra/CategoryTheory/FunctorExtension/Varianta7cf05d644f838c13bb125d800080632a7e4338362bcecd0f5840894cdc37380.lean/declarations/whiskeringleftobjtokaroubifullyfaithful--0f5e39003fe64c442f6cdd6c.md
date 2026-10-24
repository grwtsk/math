# whiskeringLeftObjToKaroubiFullyFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edc0bc8730c519554bec1036bd41d259452ad6454445898d77f077bd8851ede4",
  "kind": "def",
  "lexical_name": "whiskeringLeftObjToKaroubiFullyFaithful",
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
  "slug": "whiskeringleftobjtokaroubifullyfaithful--0f5e39003fe64c442f6cdd6c",
  "source": {
    "blob": "170e05892abadf9c08f81e6982a1fc43e182ba3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 270,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Varianta7cf05d644f838c13bb125d800080632a7e4338362bcecd0f5840894cdc37380.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f5e39003fe64c442f6cdd6cc42682ba1faac061d40e17f6e08bc83fdbfd62b5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Varianta7cf05d644f838c13bb125d800080632a7e4338362bcecd0f5840894cdc37380.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edc0bc8730c519554bec1036bd41d259452ad6454445898d77f077bd8851ede4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def whiskeringLeftObjToKaroubiFullyFaithful :
    ((Functor.whiskeringLeft C (Karoubi C) D).obj (toKaroubi C)).FullyFaithful where
  preimage {F G} τ :=
    { app P := F.map P.decompId_i ≫ τ.app P.X ≫ G.map P.decompId_p
      naturality X Y f := by
        dsimp at τ ⊢
        have h₁ : f ≫ Y.decompId_i = X.decompId_i ≫ (toKaroubi C).map f.f := by simp
        have h₂ := τ.naturality f.f
        have h₃ : X.decompId_p ≫ f = (toKaroubi C).map f.f ≫ Y.decompId_p := by simp
        dsimp at h₂
        rw [Category.assoc, Category.assoc, ← F.map_comp_assoc,
          h₁, F.map_comp_assoc, reassoc_of% h₂, ← G.map_comp, ← h₃, G.map_comp] }
  preimage_map {F G} τ := by ext X; exact (natTrans_eq _ _).symm
  map_preimage {F G} τ := by
    ext X
    dsimp
    rw [Karoubi.decompId_i_toKaroubi, Karoubi.decompId_p_toKaroubi,
      Functor.map_id, Category.id_comp]
    change _ ≫ G.map (𝟙 _) = _
    simp

end Idempotents

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Varianta7cf05d644f838c13bb125d800080632a7e4338362bcecd0f5840894cdc37380.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Varianta7cf05d644f838c13bb125d800080632a7e4338362bcecd0f5840894cdc37380.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `170e05892abadf9c08f81e6982a1fc43e182ba3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
