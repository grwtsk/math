# contravariant_sequence_exact₃'

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
      "line": 252,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29037a4bb3559712b6933623fc410a60b2750b87cbf13c952da0933988aaee6c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d2b45be-21b1-288f-7862-6c0d0ee5668f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2850e9dc-0be5-e391-2463-70f90c60f09b",
  "kind": "lemma",
  "lexical_name": "contravariant_sequence_exact₃'",
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
  "slug": "contravariant-sequence-exact--d803ffdb9e4f15af09a928d0",
  "source": {
    "blob": "505d17771473f52d43517810043f1d95bf841a4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 252,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant29037a4bb3559712b6933623fc410a60b2750b87cbf13c952da0933988aaee6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d803ffdb9e4f15af09a928d039091bdf055e5c8b695080a6d11ae3a6a2ae5c83",
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

Occurrence: `result:2850e9dc-0be5-e391-2463-70f90c60f09b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contravariant_sequence_exact₃' :
    (ShortComplex.mk (AddCommGrpCat.ofHom (hS.extClass.precomp Y h))
      (AddCommGrpCat.ofHom (((mk₀ S.g).precomp Y (zero_add n₁)))) (by
        ext
        dsimp
        simp only [ShortComplex.ShortExact.comp_extClass_assoc])).Exact := by
  let := HasDerivedCategory.standard C
  have := (preadditiveYoneda.obj ((singleFunctor C 0).obj Y)).homologySequence_exact₁ _
    (op_distinguished _ hS.singleTriangle_distinguished) n₀ n₁ (by lia)
  rw [ShortComplex.ab_exact_iff_function_exact] at this ⊢
  apply Function.Exact.of_ladder_addEquiv_of_exact' (e₁ := Ext.homAddEquiv)
    (e₂ := Ext.homAddEquiv) (e₃ := Ext.homAddEquiv) (H := this)
  · ext; dsimp; apply preadditiveYoneda_homologySequenceδ_singleTriangle_apply
  · ext; apply singleFunctor_map_comp_hom (C := C)

open ComposableArrows

/-- Given a short exact short complex `S` in an abelian category `C` and an object `Y : C`,
this is the long exact sequence
`Ext S.X₃ Y n₀ → Ext S.X₂ Y n₀ → Ext S.X₁ Y n₀ → Ext S.X₃ Y n₁ → Ext S.X₂ Y n₁ → Ext S.X₁ Y n₁`
when `1 + n₀ = n₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant29037a4bb3559712b6933623fc410a60b2750b87cbf13c952da0933988aaee6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequences/Variant29037a4bb3559712b6933623fc410a60b2750b87cbf13c952da0933988aaee6c.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `505d17771473f52d43517810043f1d95bf841a4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
