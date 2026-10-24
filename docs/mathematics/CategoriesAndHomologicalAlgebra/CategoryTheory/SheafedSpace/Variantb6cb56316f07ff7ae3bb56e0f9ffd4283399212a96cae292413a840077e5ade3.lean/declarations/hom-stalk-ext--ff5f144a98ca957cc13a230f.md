# hom_stalk_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "caadf5af7b1b46d3c98431dd1585bb0224fca987",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7be8b888-b944-0172-054f-bc6231508d17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6266f64c-1068-edb4-ca1a-93e6e6ea7519",
  "kind": "lemma",
  "lexical_name": "hom_stalk_ext",
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
  "slug": "hom-stalk-ext--ff5f144a98ca957cc13a230f",
  "source": {
    "blob": "caadf5af7b1b46d3c98431dd1585bb0224fca987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 230,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff5f144a98ca957cc13a230f6a0a7ce9dfda5e6e5b68827120a2b15fcddf7b10",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6266f64c-1068-edb4-ca1a-93e6e6ea7519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hom_stalk_ext {X Y : SheafedSpace C} (f g : X ⟶ Y) (h : f.base = g.base)
    (h' : ∀ x, f.stalkMap x = (Y.presheaf.stalkCongr (h ▸ rfl)).hom ≫ g.stalkMap x) :
    f = g := by
  obtain ⟨f, fc⟩ := f
  obtain ⟨g, gc⟩ := g
  obtain rfl : f = g := h
  congr
  ext U s
  refine section_ext X.sheaf _ _ _ fun x hx ↦
    show X.presheaf.germ _ x _ _ = X.presheaf.germ _ x _ _ from ?_
  erw [← PresheafedSpace.stalkMap_germ_apply ⟨f, fc⟩, ← PresheafedSpace.stalkMap_germ_apply ⟨f, gc⟩]
  simp [h']

attribute [local ext] DFunLike.ext in
include instCC in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb6cb56316f07ff7ae3bb56e0f9ffd4283399212a96cae292413a840077e5ade3.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caadf5af7b1b46d3c98431dd1585bb0224fca987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
