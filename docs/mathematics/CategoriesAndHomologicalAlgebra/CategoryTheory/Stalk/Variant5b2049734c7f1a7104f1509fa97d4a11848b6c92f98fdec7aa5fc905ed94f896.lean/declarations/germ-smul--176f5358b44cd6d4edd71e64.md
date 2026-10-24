# germ_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:456284a9-008b-73f4-dbce-27afa23727ef",
  "kind": "lemma",
  "lexical_name": "germ_smul",
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
  "slug": "germ-smul--176f5358b44cd6d4edd71e64",
  "source": {
    "blob": "245f347a216d5300dd3044523a9207c8d6f03601",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 211,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalk/Variant5b2049734c7f1a7104f1509fa97d4a11848b6c92f98fdec7aa5fc905ed94f896.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:176f5358b44cd6d4edd71e648a6359cfcf97b0a496cdaf49f08f8a8070fd60bf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalk/Variant5b2049734c7f1a7104f1509fa97d4a11848b6c92f98fdec7aa5fc905ed94f896.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:456284a9-008b-73f4-dbce-27afa23727ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma germ_smul (x : X) (U : Opens X) (hx : x ∈ U) (r : R.obj (op U)) (m : M.obj (op U)) :
    TopCat.Presheaf.germ M.presheaf U x hx (r • m) =
      R.germ U x hx r • TopCat.Presheaf.germ M.presheaf U x hx m :=
  letI (i : (OpenNhds x)ᵒᵖ) : Module (((OpenNhds.inclusion x).op ⋙ R ⋙ forget₂ _ RingCat).obj i)
      (((OpenNhds.inclusion x).op ⋙ M.presheaf).obj i) := by
    dsimp; infer_instance
  Limits.IsColimit.ι_smul ((OpenNhds.inclusion x).op ⋙ R ⋙ forget₂ _ _)
    ((OpenNhds.inclusion x).op ⋙ M.presheaf)
    (fun f r m ↦ M.map_smul _ _ _) (Limits.isColimitOfPreserves (forget₂ _ _)
      (Limits.colimit.isColimit ((OpenNhds.inclusion x).op ⋙ R))) (Limits.colimit.isColimit _)
      ⟨_, _⟩ _ _

end CommRingCat

end PresheafOfModules
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalk/Variant5b2049734c7f1a7104f1509fa97d4a11848b6c92f98fdec7aa5fc905ed94f896.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalk/Variant5b2049734c7f1a7104f1509fa97d4a11848b6c92f98fdec7aa5fc905ed94f896.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `245f347a216d5300dd3044523a9207c8d6f03601` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
