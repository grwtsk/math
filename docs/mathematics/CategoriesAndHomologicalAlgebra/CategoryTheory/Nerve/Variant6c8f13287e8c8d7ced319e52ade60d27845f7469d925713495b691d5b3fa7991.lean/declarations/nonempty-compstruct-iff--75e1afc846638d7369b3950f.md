# nonempty_compStruct_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37123da1-04d7-77ca-5a97-28a0f4e98739",
  "kind": "lemma",
  "lexical_name": "nonempty_compStruct_iff",
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
  "slug": "nonempty-compstruct-iff--75e1afc846638d7369b3950f",
  "source": {
    "blob": "287ed415355f9890574cf725fe9d634faaa77ca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 222,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variant6c8f13287e8c8d7ced319e52ade60d27845f7469d925713495b691d5b3fa7991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75e1afc846638d7369b3950fec443e8e5d408f599f0c5537951a02ef68c179f3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variant6c8f13287e8c8d7ced319e52ade60d27845f7469d925713495b691d5b3fa7991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37123da1-04d7-77ca-5a97-28a0f4e98739`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonempty_compStruct_iff {x₀ x₁ x₂ : C}
    (f₀₁ : x₀ ⟶ x₁) (f₁₂ : x₁ ⟶ x₂) (f₀₂ : x₀ ⟶ x₂) :
    Nonempty (Edge.CompStruct (edgeMk f₀₁) (edgeMk f₁₂) (edgeMk f₀₂)) ↔
      f₀₁ ≫ f₁₂ = f₀₂ := by
  let h' : Edge.CompStruct (edgeMk f₀₁) (edgeMk f₁₂) (edgeMk (f₀₁ ≫ f₁₂)) :=
      Edge.CompStruct.mk (ComposableArrows.mk₂ f₀₁ f₁₂)
        (by cat_disch) (by cat_disch) (by cat_disch)
  refine ⟨fun ⟨h⟩ ↦ ?_, fun h ↦ ⟨by rwa [← h]⟩⟩
  rw [← Arrow.mk_inj]
  apply ComposableArrows.arrowEquiv.symm.injective
  convert_to! (nerve C).δ 1 h'.simplex = (nerve C).δ 1 h.simplex
  · exact (h'.d₁).symm
  · exact (h.d₁).symm
  · have h₀ := h.d₀
    have h₂ := h.d₂
    have h'₀ := h'.d₀
    have h'₂ := h'.d₂
    simp only [δ₂_zero, δ₂_two, edgeMk_edge] at h₀ h₂ h'₀ h'₂
    exact congr_arg _ (ComposableArrows.ext₂_of_arrow
      (ComposableArrows.arrowEquiv.symm.injective
        (by simp [-Edge.CompStruct.d₂, h'₂, ← h₂]))
      (ComposableArrows.arrowEquiv.symm.injective
        (by simp [-Edge.CompStruct.d₀, h'₀, ← h₀])))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variant6c8f13287e8c8d7ced319e52ade60d27845f7469d925713495b691d5b3fa7991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Nerve/Variant6c8f13287e8c8d7ced319e52ade60d27845f7469d925713495b691d5b3fa7991.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `287ed415355f9890574cf725fe9d634faaa77ca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
