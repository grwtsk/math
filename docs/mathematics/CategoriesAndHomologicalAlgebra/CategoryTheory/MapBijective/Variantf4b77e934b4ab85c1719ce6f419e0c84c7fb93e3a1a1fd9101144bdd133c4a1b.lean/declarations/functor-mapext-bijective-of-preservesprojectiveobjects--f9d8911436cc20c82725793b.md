# Functor.mapExt_bijective_of_preservesProjectiveObjects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f457d05a-cfee-822a-9547-6752b2369f93",
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
  "slug": "functor-mapext-bijective-of-preservesprojectiveobjects--f9d8911436cc20c82725793b",
  "source": {
    "blob": "32e23773758ffdd0ee28823920e84e1e2891d639",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapBijective/Variantf4b77e934b4ab85c1719ce6f419e0c84c7fb93e3a1a1fd9101144bdd133c4a1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9d8911436cc20c82725793bea98807827df311119a7bcf951dab1d7b89b6ce5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MapBijective/Variantf4b77e934b4ab85c1719ce6f419e0c84c7fb93e3a1a1fd9101144bdd133c4a1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f457d05a-cfee-822a-9547-6752b2369f93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–72.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MapBijective/Variantf4b77e934b4ab85c1719ce6f419e0c84c7fb93e3a1a1fd9101144bdd133c4a1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapBijective/Variantf4b77e934b4ab85c1719ce6f419e0c84c7fb93e3a1a1fd9101144bdd133c4a1b.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32e23773758ffdd0ee28823920e84e1e2891d639` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
