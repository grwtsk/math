# mk_XYIdeal'_mul_mk_XYIdeal'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f10d185c70019fd37c82da3d09eb906e12ac9bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 396,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77b0dd8038c9a4cb198b23a411ba637911a3183f1092f38ecaf48760ab9c4ed9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4cad6904-fed1-2f8e-a051-17a77187e9d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a4afef9-8384-d8f0-c155-39bc1db43d9a",
  "kind": "lemma",
  "lexical_name": "mk_XYIdeal'_mul_mk_XYIdeal'",
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
  "slug": "mk-xyideal-mul-mk-xyideal--8c9a5a87674cee4863c02dbb",
  "source": {
    "blob": "2f10d185c70019fd37c82da3d09eb906e12ac9bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 396,
    "path": "GRWTSK/Algebra/LinearAlgebra/Point/Variant77b0dd8038c9a4cb198b23a411ba637911a3183f1092f38ecaf48760ab9c4ed9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c9a5a87674cee4863c02dbb5b0ee0d8eccde0686d89c254d56a9f6824c50fad",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Point/Variant77b0dd8038c9a4cb198b23a411ba637911a3183f1092f38ecaf48760ab9c4ed9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a4afef9-8384-d8f0-c155-39bc1db43d9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk_XYIdeal'_mul_mk_XYIdeal' [DecidableEq F] {x₁ x₂ y₁ y₂ : F} (h₁ : W.Nonsingular x₁ y₁)
    (h₂ : W.Nonsingular x₂ y₂) (hxy : ¬(x₁ = x₂ ∧ y₁ = W.negY x₂ y₂)) :
    ClassGroup.mk W.FunctionField (XYIdeal' h₁) *
        ClassGroup.mk W.FunctionField (XYIdeal' h₂) =
      ClassGroup.mk W.FunctionField (XYIdeal' <| nonsingular_add h₁ h₂ hxy) := by
  rw [← map_mul]
  exact (ClassGroup.mk_eq_mk_of_coe_ideal (coeIdeal_mul ..).symm <| XYIdeal'_eq _).mpr
    ⟨_, _, XClass_ne_zero _, YClass_ne_zero _, XYIdeal_mul_XYIdeal h₁.left h₂.left hxy⟩

/-! ## Norms on the affine coordinate ring -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Point/Variant77b0dd8038c9a4cb198b23a411ba637911a3183f1092f38ecaf48760ab9c4ed9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Point/Variant77b0dd8038c9a4cb198b23a411ba637911a3183f1092f38ecaf48760ab9c4ed9.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f10d185c70019fd37c82da3d09eb906e12ac9bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
