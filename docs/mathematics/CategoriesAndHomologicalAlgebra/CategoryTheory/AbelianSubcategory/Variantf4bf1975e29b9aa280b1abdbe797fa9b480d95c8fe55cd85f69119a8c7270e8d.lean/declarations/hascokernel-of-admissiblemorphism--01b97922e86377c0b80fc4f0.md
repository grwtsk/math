# hasCokernel_of_admissibleMorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee49efb3a75e36d68f20ae42bdeb3a9f26972b41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c29393a-b6b8-0329-f614-c3b20249dabe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb4da764-7b8f-79eb-3d87-9e254b774b8e",
  "kind": "lemma",
  "lexical_name": "hasCokernel_of_admissibleMorphism",
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
  "slug": "hascokernel-of-admissiblemorphism--01b97922e86377c0b80fc4f0",
  "source": {
    "blob": "ee49efb3a75e36d68f20ae42bdeb3a9f26972b41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 205,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variantf4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01b97922e86377c0b80fc4f00d67247f4f95bfd288301004e05c3c399f784e10",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variantf4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb4da764-7b8f-79eb-3d87-9e254b774b8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasCokernel_of_admissibleMorphism {X₁ X₂ : A} (f₁ : X₁ ⟶ X₂)
    (hf₁ : admissibleMorphism ι f₁) :
    HasCokernel f₁ := by
  obtain ⟨X₃, f₂, f₃, hT⟩ := distinguished_cocone_triangle (ι.map f₁)
  obtain ⟨K, Q, α, β, γ, hT'⟩ := hf₁ f₂ f₃ hT
  exact hasCokernel hι hT hT'

section

attribute [local instance] hasZeroObject_of_hasTerminal_object

variable [HasFiniteProducts A] [ι.Additive]

set_option backward.defeqAttrib.useBackward true in
/-- If `ι.obj X₁ ⟶ ι.obj X₂ ⟶ ι.obj X₃ ⟶ ...` is a distinguished triangle,
then `X₁` is a kernel of `X₂ ⟶ X₃`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variantf4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variantf4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee49efb3a75e36d68f20ae42bdeb3a9f26972b41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
