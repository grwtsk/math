# injectivity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c04b5e9deada7a0ca3385273cfb75c63cc5cf8b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/42eca1be48ab762273f625ca862ecbc70fff723b8ebc5577d3173bb2d73495c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2907f2b2-3e8f-0bf3-e680-31b23307ff44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de51fab5-478b-aa94-3fe2-1a066f9fe85b",
  "kind": "lemma",
  "lexical_name": "injectivity",
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
  "slug": "injectivity--f7cb1eb7cac99d2306195466",
  "source": {
    "blob": "c04b5e9deada7a0ca3385273cfb75c63cc5cf8b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 132,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant42eca1be48ab762273f625ca862ecbc70fff723b8ebc5577d3173bb2d73495c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7cb1eb7cac99d23061954669b138b254fd3f98680834e46ed8bd07585f9c449",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant42eca1be48ab762273f625ca862ecbc70fff723b8ebc5577d3173bb2d73495c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de51fab5-478b-aa94-3fe2-1a066f9fe85b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injectivity (j₀ : J) (y₁ y₂ : X ⟶ Y.obj j₀)
    (hy : y₁ ≫ c.ι.app j₀ = y₂ ≫ c.ι.app j₀) :
    ∃ (j : J) (φ : j₀ ⟶ j), y₁ ≫ Y.map φ = y₂ ≫ Y.map φ := by
  obtain ⟨j, φ, hφ⟩ := injectivity₀ hc hXκ (y₁ - y₂)
    (by rw [Preadditive.sub_comp, sub_eq_zero, hy])
  exact ⟨j, φ, by simpa only [Preadditive.sub_comp, sub_eq_zero] using hφ⟩

end

namespace surjectivity

variable (z : X ⟶ c.pt)

/-!
Let `z : X ⟶ c.pt` (where `c` is a colimit cocone for `Y : J ⥤ C`).
We consider the pullback of `c.ι` and of the constant
map `(Functor.const J).map z`. If we assume that `c.ι` is a monomorphism,
then this pullback evaluated at `j : J` can be identified to a subobject of `X`
(this is the inverse image by `z` of `Y.obj j` considered as a subobject of `c.pt`).
This corresponds to a functor `F z : J ⥤ MonoOver X`, and when taking the colimit
(computed in `C`), we obtain an epimorphism
`f z : colimit (pullback c.ι ((Functor.const J).map z)) ⟶ X`
when `J` is filtered (see `epi_f`). If `κ` is a regular cardinal that is
bigger than the cardinality of `Subobject X` and `J` is `κ`-filtered,
we deduce that `z` factors as `X ⟶ Y.obj j ⟶ c.pt` for some `j`
(see the lemma `surjectivity`).
-/

set_option backward.defeqAttrib.useBackward true in
/-- The functor `J ⥤ MonoOver X` which sends `j : J` to the inverse image by `z : X ⟶ c.pt`
of the subobject `Y.obj j` of `c.pt`; it is defined here as the object in `MonoOver X`
corresponding to the monomorphism
`(pullback.snd c.ι ((Functor.const _).map z)).app j`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant42eca1be48ab762273f625ca862ecbc70fff723b8ebc5577d3173bb2d73495c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant42eca1be48ab762273f625ca862ecbc70fff723b8ebc5577d3173bb2d73495c7.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c04b5e9deada7a0ca3385273cfb75c63cc5cf8b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
