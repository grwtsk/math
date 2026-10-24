# AffineIndependent.indicator_extend_eq_of_affineCombination_comp_embedding_eq_of_fintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc19e85671d53a7b2d70c4149305140ab1a40e90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 404,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/055c8a32f4da725d9d519d9437eba1fb1034d60a6771ef552e5569c4aee8adcb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bcfdd37f-342a-431b-6c32-1dac6619e14a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93187edd-ef85-0be0-69fc-a45db2dcdf2c",
  "kind": "lemma",
  "lexical_name": "AffineIndependent.indicator_extend_eq_of_affineCombination_comp_embedding_eq_of_fintype",
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
  "slug": "affineindependent-indicator-extend-eq-of-affinecombination-comp-embeddin--7c4762950708754ff6ce3b4c",
  "source": {
    "blob": "cc19e85671d53a7b2d70c4149305140ab1a40e90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 404,
    "path": "GRWTSK/Algebra/LinearAlgebra/Independent/Variant055c8a32f4da725d9d519d9437eba1fb1034d60a6771ef552e5569c4aee8adcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c4762950708754ff6ce3b4c0628e23bb13f65cfa8d12cf6b17eeec2346b70ae",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Independent/Variant055c8a32f4da725d9d519d9437eba1fb1034d60a6771ef552e5569c4aee8adcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93187edd-ef85-0be0-69fc-a45db2dcdf2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AffineIndependent.indicator_extend_eq_of_affineCombination_comp_embedding_eq_of_fintype
    [Fintype ι] {ι₂ : Type*} [Fintype ι₂] {p : ι → P} (ha : AffineIndependent k p) {w₁ : ι → k}
    {w₂ : ι₂ → k} (hw₁ : ∑ i, w₁ i = 1) (hw₂ : ∑ i, w₂ i = 1) (e : ι₂ ↪ ι)
    (h : Finset.univ.affineCombination k (p ∘ e) w₂ = Finset.univ.affineCombination k p w₁) :
    Set.indicator (Set.range e) (extend e w₂ 0) = w₁ := by
  simpa using ha.indicator_extend_eq_of_affineCombination_comp_embedding_eq hw₁ hw₂ e h

section Composition

variable {V₂ P₂ : Type*} [AddCommGroup V₂] [Module k V₂] [AffineSpace V₂ P₂]

/-- If the image of a family of points in affine space under an affine transformation is affine-
independent, then the original family of points is also affine-independent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Independent/Variant055c8a32f4da725d9d519d9437eba1fb1034d60a6771ef552e5569c4aee8adcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Independent/Variant055c8a32f4da725d9d519d9437eba1fb1034d60a6771ef552e5569c4aee8adcb.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc19e85671d53a7b2d70c4149305140ab1a40e90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
