# Functor.isContinuous_of_coverPreserving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f79e747351cc3d1015d1576f131b3fb95449dc5f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62a7b568-2eb0-dd3a-4183-ca3131e6c877",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f79890c-dd82-8014-ade5-0ebccd8758d9",
  "kind": "lemma",
  "lexical_name": "Functor.isContinuous_of_coverPreserving",
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
  "slug": "functor-iscontinuous-of-coverpreserving--6d7af58d251e39b1d0d451fc",
  "source": {
    "blob": "f79e747351cc3d1015d1576f131b3fb95449dc5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 159,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d7af58d251e39b1d0d451fccc3ff8190bb5bd5d71727a09173afc02856312a6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f79890c-dd82-8014-ade5-0ebccd8758d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Functor.isContinuous_of_coverPreserving (hF₁ : CompatiblePreserving.{w} K F)
    (hF₂ : CoverPreserving J K F) : Functor.IsContinuous.{w} F J K where
  op_comp_isSheaf_of_types G X S hS x hx := by
    apply existsUnique_of_exists_of_unique
    · have H := (isSheaf_iff_isSheaf_of_type _ _).1 G.2 _ (hF₂.cover_preserve hS)
      exact ⟨H.amalgamate (x.functorPushforward F) (hx.functorPushforward hF₁),
        fun V f hf => (H.isAmalgamation (hx.functorPushforward hF₁) (F.map f) _).trans
          (hF₁.apply_map _ hx hf)⟩
    · intro y₁ y₂ hy₁ hy₂
      apply (Presieve.isSeparated_of_isSheaf _ _ ((isSheaf_iff_isSheaf_of_type _ _).1 G.2) _
        (hF₂.cover_preserve hS)).ext
      rintro Y _ ⟨Z, g, h, hg, rfl⟩
      dsimp
      simp only [Functor.map_comp, types_comp_apply]
      have H := (hy₁ g hg).trans (hy₂ g hg).symm
      dsimp at H
      rw [H]

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variantd24e26799c87088007f0618fd1814ecb63ab494deb7763e6571038be80880fda.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f79e747351cc3d1015d1576f131b3fb95449dc5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
