# lanAdjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5394660e2b75c353cea26fdc7bef5fabfcae37e2490346d94c5308f3272ce9b9",
  "kind": "def",
  "lexical_name": "lanAdjunction",
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
  "slug": "lanadjunction--cf029451404360f5559eadf6",
  "source": {
    "blob": "7ea6c4382911ff7c18e8c2a6701b1100a87cd27f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 146,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta5889859e740c2b0807e1318cf5d3751fe4c7209e33a185d67aebea95e54a2ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf029451404360f5559eadf690beb6fb467a715c347fb14911c0075f7f92430b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta5889859e740c2b0807e1318cf5d3751fe4c7209e33a185d67aebea95e54a2ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5394660e2b75c353cea26fdc7bef5fabfcae37e2490346d94c5308f3272ce9b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def lanAdjunction : L.lan ⊣ (whiskeringLeft C D H).obj L :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun F G => homEquivOfIsLeftKanExtension _ (L.lanUnit.app F) G
      homEquiv_naturality_left_symm := fun {F₁ F₂ G} f α =>
        hom_ext_of_isLeftKanExtension _ (L.lanUnit.app F₁) _ _ (by
          ext X
          dsimp [homEquivOfIsLeftKanExtension]
          rw [descOfIsLeftKanExtension_fac_app, NatTrans.comp_app, ← assoc]
          have h := congr_app (L.lanUnit.naturality f) X
          dsimp at h ⊢
          rw [← h, assoc, descOfIsLeftKanExtension_fac_app])
      homEquiv_naturality_right := fun {F G₁ G₂} β f => by
        dsimp [homEquivOfIsLeftKanExtension]
        rw [assoc] }

variable (H) in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta5889859e740c2b0807e1318cf5d3751fe4c7209e33a185d67aebea95e54a2ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta5889859e740c2b0807e1318cf5d3751fe4c7209e33a185d67aebea95e54a2ab.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ea6c4382911ff7c18e8c2a6701b1100a87cd27f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
