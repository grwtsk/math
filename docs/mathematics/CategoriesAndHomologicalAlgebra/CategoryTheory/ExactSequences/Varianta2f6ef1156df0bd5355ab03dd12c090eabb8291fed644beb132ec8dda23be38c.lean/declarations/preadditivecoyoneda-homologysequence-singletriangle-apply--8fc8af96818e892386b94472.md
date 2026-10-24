# preadditiveCoyoneda_homologySequenceδ_singleTriangle_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e094aace-7121-e481-f025-72f5988739a7",
  "kind": "lemma",
  "lexical_name": "preadditiveCoyoneda_homologySequenceδ_singleTriangle_apply",
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
  "slug": "preadditivecoyoneda-homologysequence-singletriangle-apply--8fc8af96818e892386b94472",
  "source": {
    "blob": "fce80314f7f2b00a96524d071b4f821965cad152",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 52,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fc8af96818e892386b94472c8ef7eae58dc3148735c73ffc33ecd55ecb93854",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e094aace-7121-e481-f025-72f5988739a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preadditiveCoyoneda_homologySequenceδ_singleTriangle_apply
    [HasDerivedCategory.{w'} C] {X : C} {n₀ : ℕ} (x : Ext X S.X₃ n₀)
    {n₁ : ℕ} (h : n₀ + 1 = n₁) :
    (preadditiveCoyoneda.obj (op ((singleFunctor C 0).obj X))).homologySequenceδ
      hS.singleTriangle n₀ n₁ (by omega) x.hom =
        (x.comp hS.extClass h).hom := by
  rw [Pretriangulated.preadditiveCoyoneda_homologySequenceδ_apply,
    comp_hom, hS.extClass_hom, ShiftedHom.comp]
  rfl

variable (X)

include hS in
/-- Alternative formulation of `covariant_sequence_exact₂` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Varianta2f6ef1156df0bd5355ab03dd12c090eabb8291fed644beb132ec8dda23be38c.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fce80314f7f2b00a96524d071b4f821965cad152` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
