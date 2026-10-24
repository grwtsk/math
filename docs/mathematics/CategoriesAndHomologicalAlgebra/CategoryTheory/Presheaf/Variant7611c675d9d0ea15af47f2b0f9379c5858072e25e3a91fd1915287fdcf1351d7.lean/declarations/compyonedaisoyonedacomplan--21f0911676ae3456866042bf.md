# compYonedaIsoYonedaCompLan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f28131b69e3a5a66ad9ad5a0adb52c0d8a3d9d7d09080e483f9e6e106a24cd83",
  "kind": "def",
  "lexical_name": "compYonedaIsoYonedaCompLan",
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
  "slug": "compyonedaisoyonedacomplan--21f0911676ae3456866042bf",
  "source": {
    "blob": "accfc3d8296025cbdf3c5b552bc5329b8e5e2e6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 356,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21f0911676ae3456866042bfa54bca7daff8ccf7d6a693d5e672dc8c10d4df6e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f28131b69e3a5a66ad9ad5a0adb52c0d8a3d9d7d09080e483f9e6e106a24cd83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def compYonedaIsoYonedaCompLan :
    F ⋙ yoneda ≅ yoneda ⋙ F.op.lan :=
  NatIso.ofComponents (fun X => Functor.leftKanExtensionUnique _
    (yonedaMap F X) (F.op.lan.obj _) (F.op.lanUnit.app (yoneda.obj X))) (fun {X Y} f => by
      apply yonedaEquiv.injective
      have eq₁ := congr_fun ((yoneda.obj (F.obj Y)).descOfIsLeftKanExtension_fac_app
        (yonedaMap F Y) (F.op.lan.obj (yoneda.obj Y)) (F.op.lanUnit.app (yoneda.obj Y)) _) f
      have eq₂ := congr_fun (((yoneda.obj (F.obj X)).descOfIsLeftKanExtension_fac_app
        (yonedaMap F X) (F.op.lan.obj (yoneda.obj X)) (F.op.lanUnit.app (yoneda.obj X))) _) (𝟙 _)
      have eq₃ := congr_fun (congr_app (F.op.lanUnit.naturality (yoneda.map f)) _) (𝟙 _)
      dsimp at eq₁ eq₂ eq₃
      simp only [Functor.map_id] at eq₂
      simp only [id_comp] at eq₃
      simp [yonedaEquiv, eq₁, eq₂, eq₃])

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `accfc3d8296025cbdf3c5b552bc5329b8e5e2e6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
