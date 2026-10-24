# isLocal_isLocal_toSucc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b75d626f-fa33-b0bd-a2ed-29a32029e3ef",
  "kind": "lemma",
  "lexical_name": "isLocal_isLocal_toSucc",
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
  "slug": "islocal-islocal-tosucc--aeacb5c5b3a5528ebaf533c0",
  "source": {
    "blob": "95357aa8e7d66e804c95843a1c9f7969b2b05cca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 288,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variante13990021cd5d821475ff4077a71ad517e5feff1705460e2e5e339b9b7e29b6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aeacb5c5b3a5528ebaf533c018ea45d16dce13ac973f88d70810bcc925d348f4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variante13990021cd5d821475ff4077a71ad517e5feff1705460e2e5e339b9b7e29b6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b75d626f-fa33-b0bd-a2ed-29a32029e3ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocal_isLocal_toSucc :
    W.isLocal.isLocal (toSucc W Z) := by
  refine fun T hT ↦ ⟨fun φ₁ φ₂ h ↦ ?_, fun g ↦ ?_⟩
  · ext ⟨⟩
    simp only [Category.assoc] at h
    dsimp
    ext d
    · apply (hT d.1.1.hom d.1.2).1
      simp only [← D₁.ι_comp_t_assoc, pushout.condition_assoc, h]
    · exact h
  · choose f hf using fun (d : D₁ W Z) ↦ (hT d.1.1.hom d.1.2).2 (d.2 ≫ g)
    exact ⟨Multicoequalizer.desc _ _ (fun ⟨⟩ ↦ pushout.desc (Sigma.desc f) g)
      (fun d ↦ (hT d.1.1.hom d.1.2).1 (by simp [reassoc_of% d.2.2])), by simp⟩

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variante13990021cd5d821475ff4077a71ad517e5feff1705460e2e5e339b9b7e29b6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OrthogonalReflection/Variante13990021cd5d821475ff4077a71ad517e5feff1705460e2e5e339b9b7e29b6e.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95357aa8e7d66e804c95843a1c9f7969b2b05cca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
