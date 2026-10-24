# GabrielPopescu.preservesInjectiveObjects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1df807e-acf4-36a5-0d7a-071f1e89549e",
  "kind": "theorem",
  "lexical_name": "GabrielPopescu.preservesInjectiveObjects",
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
  "slug": "gabrielpopescu-preservesinjectiveobjects--1470ceaeb1cc6ed627b18b05",
  "source": {
    "blob": "45a4f51bfabc75216c83f68d34bc6134e5da23f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1470ceaeb1cc6ed627b18b058a4e65bcf2b5792e8b52e403baafded6e76afc5c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1df807e-acf4-36a5-0d7a-071f1e89549e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GabrielPopescu.preservesInjectiveObjects (G : C) (hG : IsSeparator G) :
    (preadditiveCoyonedaObj G).PreservesInjectiveObjects where
  injective_obj {B} hB := by
    rw [← Module.injective_iff_injective_object]
    simp only [preadditiveCoyonedaObj_obj_carrier, preadditiveCoyonedaObj_obj_isAddCommGroup,
      preadditiveCoyonedaObj_obj_isModule]
    refine Module.Baer.injective (fun M g => ?_)
    have h := exists_d_comp_eq_d hG B (ModuleCat.ofHom
      ⟨⟨fun i => i.1.unop, by aesop_cat⟩, by aesop_cat⟩) ?_ (ModuleCat.ofHom g)
    · obtain ⟨l, hl⟩ := h
      refine ⟨((preadditiveCoyonedaObj G).map l).hom ∘ₗ
        (Preadditive.homSelfLinearEquivEndMulOpposite G).symm.toLinearMap, ?_⟩
      intro f hf
      simpa [d] using Sigma.ι _ ⟨f, hf⟩ ≫= hl
    · rw [ModuleCat.mono_iff_injective]
      aesop_cat

/-- Right exactness follows because `tensorObj G` is a left adjoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45a4f51bfabc75216c83f68d34bc6134e5da23f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
