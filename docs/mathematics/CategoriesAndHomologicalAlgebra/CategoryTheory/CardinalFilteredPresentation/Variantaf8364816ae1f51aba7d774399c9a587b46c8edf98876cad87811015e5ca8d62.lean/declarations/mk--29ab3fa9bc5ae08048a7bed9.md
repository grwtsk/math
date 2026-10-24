# mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d069118-3b20-9d2e-614d-faca4049c8ba",
  "kind": "lemma",
  "lexical_name": "mk'",
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
  "slug": "mk--29ab3fa9bc5ae08048a7bed9",
  "source": {
    "blob": "92bb36828f58cfbe1ad073b0c6416600f36cf6ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 100,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29ab3fa9bc5ae08048a7bed9e3f79aaad3b44c83efa1698f9a9af7c492d21419",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d069118-3b20-9d2e-614d-faca4049c8ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk' (h₁ : P ≤ isCardinalPresentable C κ)
    (h₂ : ∀ (X : C), ∃ (J : Type w₁) (_ : Category.{w₂} J)
      (_ : EssentiallySmall.{w} J) (_ : IsCardinalFiltered J κ), P.colimitsOfShape J X) :
    P.IsCardinalFilteredGenerator κ where
  le_isCardinalPresentable := h₁
  exists_colimitsOfShape X := by
    obtain ⟨J, _, _, _, p⟩ := h₂ X
    exact ⟨SmallModel.{w} J, inferInstance,
      IsCardinalFiltered.of_equivalence κ (equivSmallModel.{w} J),
      by rwa [← P.colimitsOfShape_congr (equivSmallModel.{w} J)]⟩

variable (h : P.IsCardinalFilteredGenerator κ) (X : C)

include h in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variantaf8364816ae1f51aba7d774399c9a587b46c8edf98876cad87811015e5ca8d62.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92bb36828f58cfbe1ad073b0c6416600f36cf6ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
