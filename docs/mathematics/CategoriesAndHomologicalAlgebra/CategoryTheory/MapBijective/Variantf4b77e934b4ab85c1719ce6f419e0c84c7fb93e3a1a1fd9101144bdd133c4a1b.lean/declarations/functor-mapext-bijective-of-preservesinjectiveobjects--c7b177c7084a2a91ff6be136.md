# Functor.mapExt_bijective_of_preservesInjectiveObjects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c0c10f5-5071-d34b-8320-16e082dec53f",
  "kind": "lemma",
  "lexical_name": "Functor.mapExt_bijective_of_preservesInjectiveObjects",
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
  "slug": "functor-mapext-bijective-of-preservesinjectiveobjects--c7b177c7084a2a91ff6be136",
  "source": {
    "blob": "32e23773758ffdd0ee28823920e84e1e2891d639",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapBijective/Variantf4b77e934b4ab85c1719ce6f419e0c84c7fb93e3a1a1fd9101144bdd133c4a1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7b177c7084a2a91ff6be136431fa0cccf89c1dde64fd3fade13ff1d8c1817c8",
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

Occurrence: `result:1c0c10f5-5071-d34b-8320-16e082dec53f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Functor.mapExt_bijective_of_preservesInjectiveObjects [F.Full] [F.Faithful] [HasExt.{w} C]
    [HasExt.{w'} D] [EnoughInjectives C] [F.PreservesInjectiveObjects] (X Y : C) (n : ℕ) :
    Function.Bijective (F.mapExtAddHom X Y n) := by
  induction n generalizing Y with
  | zero => simpa [Ext.mapExactFunctor₀] using ⟨Faithful.map_injective, Full.map_surjective⟩
  | succ n hn =>
    let I : InjectivePresentation Y := Classical.arbitrary _
    let S := ShortComplex.mk _ _ (cokernel.condition I.f)
    have : Injective (S.map F).X₂ := Functor.PreservesInjectiveObjects.injective_obj I.injective
    have hS : S.ShortExact := { exact := ShortComplex.exact_cokernel I.f }
    exact AddMonoidHom.bijective_of_surjective_of_bijective_of_right_exact _ _ _ _
      (F.mapExtAddHom X S.X₂ n) (F.mapExtAddHom X S.X₃ n) (F.mapExtAddHom X S.X₁ (n + 1))
      (by cat_disch) (by cat_disch)
      ((ShortComplex.ab_exact_iff_function_exact _).mp
        (Ext.covariant_sequence_exact₃' X hS n (n + 1) rfl))
      ((ShortComplex.ab_exact_iff_function_exact _).mp
        (Ext.covariant_sequence_exact₃' (F.obj X) (hS.map F) n (n + 1) rfl))
      (hn _).surjective (hn _)
      (fun x₁ ↦ Ext.covariant_sequence_exact₁ _ hS x₁ (by subsingleton) rfl)
      (fun y₁ ↦ Ext.covariant_sequence_exact₁ _ (hS.map F) y₁ (by subsingleton) rfl)

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MapBijective/Variantf4b77e934b4ab85c1719ce6f419e0c84c7fb93e3a1a1fd9101144bdd133c4a1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapBijective/Variantf4b77e934b4ab85c1719ce6f419e0c84c7fb93e3a1a1fd9101144bdd133c4a1b.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32e23773758ffdd0ee28823920e84e1e2891d639` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
