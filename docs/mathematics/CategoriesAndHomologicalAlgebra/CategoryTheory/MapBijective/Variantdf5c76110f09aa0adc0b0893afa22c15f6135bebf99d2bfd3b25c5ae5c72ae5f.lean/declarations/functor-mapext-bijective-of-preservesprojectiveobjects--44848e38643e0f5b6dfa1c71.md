# Functor.mapExt_bijective_of_preservesProjectiveObjects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0fb4e0654507f6ef062f8d9f138b9f27a7878052",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df5c76110f09aa0adc0b0893afa22c15f6135bebf99d2bfd3b25c5ae5c72ae5f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96dabf52-6846-8071-8800-611be46cea80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8020ea5e-bf35-a4e0-a9e6-1b533cfb4429",
  "kind": "lemma",
  "lexical_name": "Functor.mapExt_bijective_of_preservesProjectiveObjects",
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
  "slug": "functor-mapext-bijective-of-preservesprojectiveobjects--44848e38643e0f5b6dfa1c71",
  "source": {
    "blob": "0fb4e0654507f6ef062f8d9f138b9f27a7878052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapBijective/Variantdf5c76110f09aa0adc0b0893afa22c15f6135bebf99d2bfd3b25c5ae5c72ae5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44848e38643e0f5b6dfa1c71b8646021ab320640c01746209c3ea70d3c1b2419",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MapBijective/Variantdf5c76110f09aa0adc0b0893afa22c15f6135bebf99d2bfd3b25c5ae5c72ae5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8020ea5e-bf35-a4e0-a9e6-1b533cfb4429`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Functor.mapExt_bijective_of_preservesProjectiveObjects [F.Full] [F.Faithful] [HasExt.{w} C]
    [HasExt.{w'} D] [EnoughProjectives C] [F.PreservesProjectiveObjects] (X Y : C) (n : ℕ) :
    Function.Bijective (F.mapExtAddHom X Y n) := by
  induction n generalizing X with
  | zero => simpa [Ext.mapExactFunctor₀] using ⟨Faithful.map_injective, Full.map_surjective⟩
  | succ n hn =>
    let P : ProjectivePresentation X := Classical.arbitrary _
    let S := ShortComplex.mk _ _ (kernel.condition P.f)
    have : Projective (S.map F).X₂ := Functor.PreservesProjectiveObjects.projective_obj P.projective
    have hS : S.ShortExact := { exact := ShortComplex.exact_kernel P.f }
    exact AddMonoidHom.bijective_of_surjective_of_bijective_of_right_exact _ _ _ _
      (F.mapExtAddHom S.X₂ Y n) (F.mapExtAddHom S.X₁ Y n) (F.mapExtAddHom S.X₃ Y (n + 1))
      (by cat_disch) (by cat_disch)
      ((ShortComplex.ab_exact_iff_function_exact _).1
        (Ext.contravariant_sequence_exact₁' hS Y n (n + 1) (add_comm 1 n)))
      ((ShortComplex.ab_exact_iff_function_exact _).1
        (Ext.contravariant_sequence_exact₁' (hS.map F) (F.obj Y) n (n + 1) (add_comm 1 n)))
      (hn _).surjective (hn _)
      (fun x₃ ↦ Ext.contravariant_sequence_exact₃ hS _ x₃ (by subsingleton) (add_comm 1 n))
      (fun y₃ ↦ Ext.contravariant_sequence_exact₃ (hS.map F) _ y₃ (by subsingleton) (add_comm 1 n))

attribute [local instance] Ext.subsingleton_of_injective in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MapBijective/Variantdf5c76110f09aa0adc0b0893afa22c15f6135bebf99d2bfd3b25c5ae5c72ae5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapBijective/Variantdf5c76110f09aa0adc0b0893afa22c15f6135bebf99d2bfd3b25c5ae5c72ae5f.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fb4e0654507f6ef062f8d9f138b9f27a7878052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
