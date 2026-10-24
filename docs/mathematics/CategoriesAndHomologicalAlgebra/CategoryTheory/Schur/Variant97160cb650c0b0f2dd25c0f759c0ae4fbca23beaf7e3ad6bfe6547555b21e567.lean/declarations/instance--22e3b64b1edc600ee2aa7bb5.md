# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3a44be744cd496a7aa4801391638fd3c50d18b87c8e3f673ef0367bc41d8801",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--22e3b64b1edc600ee2aa7bb5",
  "source": {
    "blob": "0a9d695f4f24c0f9fad00116cfa4c840451dd3de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant97160cb650c0b0f2dd25c0f759c0ae4fbca23beaf7e3ad6bfe6547555b21e567.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22e3b64b1edc600ee2aa7bb5c3b9d2066577f9070db602714489c01540c9ed8c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant97160cb650c0b0f2dd25c0f759c0ae4fbca23beaf7e3ad6bfe6547555b21e567.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3a44be744cd496a7aa4801391638fd3c50d18b87c8e3f673ef0367bc41d8801`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance [HasKernels C] {X : C} [Simple X] : DivisionRing (End X) where
  inv f := if h : f = 0 then 0 else haveI := isIso_of_hom_simple h; inv f
  exists_pair_ne := ⟨𝟙 X, 0, id_nonzero _⟩
  inv_zero := dite_eq_left rfl
  mul_inv_cancel f hf := by
    dsimp
    rw [dite_eq_right hf]
    have := isIso_of_hom_simple hf
    exact IsIso.inv_hom_id f
  nnqsmul := _
  nnqsmul_def := fun _ _ => rfl
  qsmul := _
  qsmul_def := fun _ _ => rfl

open Module

section

variable (𝕜 : Type*) [DivisionRing 𝕜]

/-- Part of **Schur's lemma** for `𝕜`-linear categories:
the hom space between two non-isomorphic simple objects is 0-dimensional.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant97160cb650c0b0f2dd25c0f759c0ae4fbca23beaf7e3ad6bfe6547555b21e567.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Schur/Variant97160cb650c0b0f2dd25c0f759c0ae4fbca23beaf7e3ad6bfe6547555b21e567.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a9d695f4f24c0f9fad00116cfa4c840451dd3de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
