# covariant_sequence_exact₃'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "505d17771473f52d43517810043f1d95bf841a4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29037a4bb3559712b6933623fc410a60b2750b87cbf13c952da0933988aaee6c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c249f60-cd15-8f32-d478-a8b30e9b0ed4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc121e0b-b5c1-ccda-b6b1-492ac7ede607",
  "kind": "lemma",
  "lexical_name": "covariant_sequence_exact₃'",
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
  "slug": "covariant-sequence-exact--af962ac4e163f1a96638d733",
  "source": {
    "blob": "505d17771473f52d43517810043f1d95bf841a4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant29037a4bb3559712b6933623fc410a60b2750b87cbf13c952da0933988aaee6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af962ac4e163f1a96638d733f50e96d92d44e93dd8b11b4c1a5667eb96eea068",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant29037a4bb3559712b6933623fc410a60b2750b87cbf13c952da0933988aaee6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc121e0b-b5c1-ccda-b6b1-492ac7ede607`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma covariant_sequence_exact₃' :
    (ShortComplex.mk (AddCommGrpCat.ofHom ((mk₀ S.g).postcomp X (add_zero n₀)))
      (AddCommGrpCat.ofHom (hS.extClass.postcomp X h)) (by
        ext x
        dsimp
        simp only [comp_assoc_of_second_deg_zero, ShortComplex.ShortExact.comp_extClass,
          comp_zero])).Exact := by
  let := HasDerivedCategory.standard C
  have := (preadditiveCoyoneda.obj (op ((singleFunctor C 0).obj X))).homologySequence_exact₃ _
    (hS.singleTriangle_distinguished) n₀ n₁ (by lia)
  rw [ShortComplex.ab_exact_iff_function_exact] at this ⊢
  apply Function.Exact.of_ladder_addEquiv_of_exact' (e₁ := Ext.homAddEquiv)
    (e₂ := Ext.homAddEquiv) (e₃ := Ext.homAddEquiv) (H := this)
  · ext x; apply hom_comp_singleFunctor_map_shift (C := C)
  · ext x
    exact preadditiveCoyoneda_homologySequenceδ_singleTriangle_apply hS x h

set_option backward.defeqAttrib.useBackward true in
/-- Alternative formulation of `covariant_sequence_exact₁` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant29037a4bb3559712b6933623fc410a60b2750b87cbf13c952da0933988aaee6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant29037a4bb3559712b6933623fc410a60b2750b87cbf13c952da0933988aaee6c.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `505d17771473f52d43517810043f1d95bf841a4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
