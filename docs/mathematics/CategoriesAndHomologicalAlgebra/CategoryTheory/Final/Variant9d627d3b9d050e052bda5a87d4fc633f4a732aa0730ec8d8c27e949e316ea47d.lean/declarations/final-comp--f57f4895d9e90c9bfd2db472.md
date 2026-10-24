# final_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a64b6981c0566381e337027d93e0b1758cc972bdbd26f8f4a02fc5b5fabc4b3c",
  "kind": "instance",
  "lexical_name": "final_comp",
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
  "slug": "final-comp--f57f4895d9e90c9bfd2db472",
  "source": {
    "blob": "82c325140d9282aafbf2b648e09f1b7bb01bbfd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 840,
    "line": 824,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9d627d3b9d050e052bda5a87d4fc633f4a732aa0730ec8d8c27e949e316ea47d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f57f4895d9e90c9bfd2db47287fbbd7ae0135681b707d674f37b94bf4591b9fe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9d627d3b9d050e052bda5a87d4fc633f4a732aa0730ec8d8c27e949e316ea47d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a64b6981c0566381e337027d93e0b1758cc972bdbd26f8f4a02fc5b5fabc4b3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 824–840.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance final_comp [hF : Final F] [hG : Final G] : Final (F ⋙ G) := by
  let s₁ : C ≌ AsSmall.{max u₁ v₁ u₂ v₂ u₃ v₃} C := AsSmall.equiv
  let s₂ : D ≌ AsSmall.{max u₁ v₁ u₂ v₂ u₃ v₃} D := AsSmall.equiv
  let s₃ : E ≌ AsSmall.{max u₁ v₁ u₂ v₂ u₃ v₃} E := AsSmall.equiv
  let i : s₁.inverse ⋙ (F ⋙ G) ⋙ s₃.functor ≅
      (s₁.inverse ⋙ F ⋙ s₂.functor) ⋙ (s₂.inverse ⋙ G ⋙ s₃.functor) :=
    isoWhiskerLeft (s₁.inverse ⋙ F) (isoWhiskerRight s₂.unitIso (G ⋙ s₃.functor))
  rw [final_iff_comp_equivalence (F ⋙ G) s₃.functor, final_iff_equivalence_comp s₁.inverse,
    final_natIso_iff i, final_iff_isIso_colimit_pre]
  rw [final_iff_comp_equivalence F s₂.functor, final_iff_equivalence_comp s₁.inverse,
    final_iff_isIso_colimit_pre] at hF
  rw [final_iff_comp_equivalence G s₃.functor, final_iff_equivalence_comp s₂.inverse,
    final_iff_isIso_colimit_pre] at hG
  intro H
  rw [← colimit.pre_pre]
  infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9d627d3b9d050e052bda5a87d4fc633f4a732aa0730ec8d8c27e949e316ea47d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variant9d627d3b9d050e052bda5a87d4fc633f4a732aa0730ec8d8c27e949e316ea47d.lean#L824).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82c325140d9282aafbf2b648e09f1b7bb01bbfd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
