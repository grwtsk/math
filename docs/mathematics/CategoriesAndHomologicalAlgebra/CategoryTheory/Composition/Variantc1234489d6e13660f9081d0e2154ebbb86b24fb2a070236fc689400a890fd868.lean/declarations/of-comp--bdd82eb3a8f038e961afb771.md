# of_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f89ab36957e4e6e1885d47d3357dfedcd547b647",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1234489d6e13660f9081d0e2154ebbb86b24fb2a070236fc689400a890fd868.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f44fc055-54be-5382-127e-3528c96b6486",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1108a8f-039b-18f6-ea0c-d2f217e1f79c",
  "kind": "lemma",
  "lexical_name": "of_comp",
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
  "slug": "of-comp--bdd82eb3a8f038e961afb771",
  "source": {
    "blob": "f89ab36957e4e6e1885d47d3357dfedcd547b647",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 110,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Composition/Variantc1234489d6e13660f9081d0e2154ebbb86b24fb2a070236fc689400a890fd868.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdd82eb3a8f038e961afb771235ecc1f9909d9ab8f11de888d4fe810e24da769",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Composition/Variantc1234489d6e13660f9081d0e2154ebbb86b24fb2a070236fc689400a890fd868.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1108a8f-039b-18f6-ea0c-d2f217e1f79c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_comp (W₃ : MorphismProperty C₁)
    [L₁.IsLocalization W₁] [(L₁ ⋙ L₂).IsLocalization W₃]
    (hW₁₃ : W₁ ≤ W₃) (hW₂₃ : W₂ = W₃.map L₁) :
    L₂.IsLocalization W₂ := by
    have : (L₁ ⋙ W₂.Q).IsLocalization W₃ :=
      comp L₁ W₂.Q W₁ W₂ W₃ (fun X Y f hf => Localization.inverts W₂.Q W₂ _
        (by simpa only [hW₂₃] using W₃.map_mem_map _ _ hf)) hW₁₃
        (by rw [hW₂₃])
    exact IsLocalization.of_equivalence_target W₂.Q W₂ L₂
      (Localization.uniq (L₁ ⋙ W₂.Q) (L₁ ⋙ L₂) W₃)
      (liftNatIso L₁ W₁ _ _ _ _
        ((Functor.associator _ _ _).symm ≪≫
          Localization.compUniqFunctor (L₁ ⋙ W₂.Q) (L₁ ⋙ L₂) W₃))

end IsLocalization

end Functor

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Composition/Variantc1234489d6e13660f9081d0e2154ebbb86b24fb2a070236fc689400a890fd868.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Composition/Variantc1234489d6e13660f9081d0e2154ebbb86b24fb2a070236fc689400a890fd868.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f89ab36957e4e6e1885d47d3357dfedcd547b647` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
