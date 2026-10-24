# isPresentable_eq_retractClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f455005b150757b2827cc5f21f101bc030e06259",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94c04a3152329c892ecdfb6cc39d757a520597a0594ef0e61d69fbd3eb728a3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f27e2e03-aa1b-3e08-ee27-f173667e4e8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c83453e3-c48d-a96b-d900-0169124a7df7",
  "kind": "lemma",
  "lexical_name": "isPresentable_eq_retractClosure",
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
  "slug": "ispresentable-eq-retractclosure--c7f8c12dacde1cd4af5f6e22",
  "source": {
    "blob": "f455005b150757b2827cc5f21f101bc030e06259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 146,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variant94c04a3152329c892ecdfb6cc39d757a520597a0594ef0e61d69fbd3eb728a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7f8c12dacde1cd4af5f6e223024ac8dbd5356bee6f329637f06ceb6c8e59a90",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variant94c04a3152329c892ecdfb6cc39d757a520597a0594ef0e61d69fbd3eb728a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c83453e3-c48d-a96b-d900-0169124a7df7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPresentable_eq_retractClosure :
    isCardinalPresentable C κ = P.retractClosure := by
  refine le_antisymm (fun X hX ↦ ?_) ?_
  · rw [isCardinalPresentable_iff] at hX
    obtain ⟨J, _, _, ⟨p⟩⟩ := h.exists_colimitsOfShape X
    have := essentiallySmall_of_small_of_locallySmall.{w} J
    obtain ⟨j, f, hf⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ p.isColimit (𝟙 X)
    exact ⟨_, p.prop_diag_obj j, ⟨{ i := _, r := _, retract := hf}⟩⟩
  · simpa only [ObjectProperty.retractClosure_le_iff] using h.le_isCardinalPresentable

include h in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variant94c04a3152329c892ecdfb6cc39d757a520597a0594ef0e61d69fbd3eb728a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variant94c04a3152329c892ecdfb6cc39d757a520597a0594ef0e61d69fbd3eb728a3c.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f455005b150757b2827cc5f21f101bc030e06259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
