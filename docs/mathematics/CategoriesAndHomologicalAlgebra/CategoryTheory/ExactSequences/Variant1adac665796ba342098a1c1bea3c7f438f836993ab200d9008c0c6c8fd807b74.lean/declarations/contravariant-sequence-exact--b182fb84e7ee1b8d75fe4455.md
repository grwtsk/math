# contravariant_sequence_exact₁'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4eb09eac1879fc03ecfc8f1bfbdeff44bbbe0e23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7b22b3b-459f-cd45-463a-f3281cadbf3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14e2d1df-03d2-0339-070d-fef82f229b54",
  "kind": "lemma",
  "lexical_name": "contravariant_sequence_exact₁'",
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
  "slug": "contravariant-sequence-exact--b182fb84e7ee1b8d75fe4455",
  "source": {
    "blob": "4eb09eac1879fc03ecfc8f1bfbdeff44bbbe0e23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 201,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b182fb84e7ee1b8d75fe4455269d18972476bb2eaa2b270a3c334a123629c45e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14e2d1df-03d2-0339-070d-fef82f229b54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contravariant_sequence_exact₁' :
    (ShortComplex.mk (AddCommGrp.ofHom (((mk₀ S.f).precomp Y (zero_add n₀))))
      (AddCommGrp.ofHom (hS.extClass.precomp Y h)) (by
        ext
        dsimp
        simp only [ShortComplex.ShortExact.extClass_comp_assoc])).Exact := by
  letI := HasDerivedCategory.standard C
  have := (preadditiveYoneda.obj ((singleFunctor C 0).obj Y)).homologySequence_exact₃ _
    (op_distinguished _ hS.singleTriangle_distinguished) n₀ n₁ (by omega)
  rw [ShortComplex.ab_exact_iff_function_exact] at this ⊢
  apply Function.Exact.of_ladder_addEquiv_of_exact' (e₁ := Ext.homAddEquiv)
    (e₂ := Ext.homAddEquiv) (e₃ := Ext.homAddEquiv) (H := this)
  · ext; apply singleFunctor_map_comp_hom (C := C)
  · ext; dsimp; apply preadditiveYoneda_homologySequenceδ_singleTriangle_apply

/-- Alternative formulation of `contravariant_sequence_exact₃` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant1adac665796ba342098a1c1bea3c7f438f836993ab200d9008c0c6c8fd807b74.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4eb09eac1879fc03ecfc8f1bfbdeff44bbbe0e23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
