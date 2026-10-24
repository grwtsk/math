# pointwiseLeftKanExtension_desc_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82693388c9e7c4b779e9003526877e01275bfd61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 661,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e648df22a8fee5730768fc5d92904272d1a6ff2b69b9a1ecf84ae6259a88619.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d50d7be9-2e7e-9490-f39c-be410b9f1125",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d728105c-88ec-6812-ebea-f820fe611c64",
  "kind": "lemma",
  "lexical_name": "pointwiseLeftKanExtension_desc_app",
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
  "slug": "pointwiseleftkanextension-desc-app--1e27d5c8132a1b305c0fb2b9",
  "source": {
    "blob": "82693388c9e7c4b779e9003526877e01275bfd61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 675,
    "line": 661,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant3e648df22a8fee5730768fc5d92904272d1a6ff2b69b9a1ecf84ae6259a88619.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e27d5c8132a1b305c0fb2b9f22d00893f87b78cbd066fe51f84a8a5690a023c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant3e648df22a8fee5730768fc5d92904272d1a6ff2b69b9a1ecf84ae6259a88619.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d728105c-88ec-6812-ebea-f820fe611c64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 661–675.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pointwiseLeftKanExtension_desc_app (G : D ⥤ H) (α : F ⟶ L ⋙ G) (Y : D) :
    ((pointwiseLeftKanExtension L F).descOfIsLeftKanExtension (pointwiseLeftKanExtensionUnit L F)
      G α |>.app Y) = colimit.desc _ (costructuredArrowMapCocone L F G α Y) := by
  let β : L.pointwiseLeftKanExtension F ⟶ G :=
    { app := fun Y ↦ colimit.desc _ (costructuredArrowMapCocone L F G α Y) }
  have h : (pointwiseLeftKanExtension L F).descOfIsLeftKanExtension
      (pointwiseLeftKanExtensionUnit L F) G α = β := by
    apply hom_ext_of_isLeftKanExtension (α := pointwiseLeftKanExtensionUnit L F)
    aesop
  exact NatTrans.congr_app h Y

variable {F L}

/-- If `F` admits a pointwise left Kan extension along `L`, then any left Kan extension of `F`
along `L` is a pointwise left Kan extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant3e648df22a8fee5730768fc5d92904272d1a6ff2b69b9a1ecf84ae6259a88619.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointwise/Variant3e648df22a8fee5730768fc5d92904272d1a6ff2b69b9a1ecf84ae6259a88619.lean#L661).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82693388c9e7c4b779e9003526877e01275bfd61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
