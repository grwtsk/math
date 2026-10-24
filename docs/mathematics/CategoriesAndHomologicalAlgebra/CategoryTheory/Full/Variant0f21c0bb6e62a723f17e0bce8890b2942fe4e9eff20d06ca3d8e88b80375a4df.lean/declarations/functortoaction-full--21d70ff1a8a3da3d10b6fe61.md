# functorToAction_full

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0d1408db3029698b5dda0df90c54a6c739f9917522084b5c71bdf57cf61525b",
  "kind": "instance",
  "lexical_name": "functorToAction_full",
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
  "slug": "functortoaction-full--21d70ff1a8a3da3d10b6fe61",
  "source": {
    "blob": "7848a9cdb7a371f728f4e90f5890640abc687ca2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 101,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Full/Variant0f21c0bb6e62a723f17e0bce8890b2942fe4e9eff20d06ca3d8e88b80375a4df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21d70ff1a8a3da3d10b6fe6182bf2b9b6d52a7c1dc18028c37c19644e38dc2cc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Full/Variant0f21c0bb6e62a723f17e0bce8890b2942fe4e9eff20d06ca3d8e88b80375a4df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0d1408db3029698b5dda0df90c54a6c739f9917522084b5c71bdf57cf61525b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance functorToAction_full : Functor.Full (functorToAction F) where
  map_surjective {X Y} f := by
    let u : (functorToAction F).obj X ⟶ (functorToAction F).obj X ⨯ (functorToAction F).obj Y :=
      prod.lift (𝟙 _) f
    let i : (functorToAction F).obj X ⟶ (functorToAction F).obj (X ⨯ Y) :=
      u ≫ (PreservesLimitPair.iso (functorToAction F) X Y).inv
    have : Mono i := by
      have : Mono (u ≫ prod.fst) := prod.lift_fst (𝟙 _) f ▸ inferInstance
      have : Mono u := mono_of_mono u prod.fst
      apply mono_comp u _
    obtain ⟨Z, g, v, _, hvgi⟩ := exists_lift_of_mono F (Limits.prod X Y)
      ((functorToAction F).obj X) i
    let ψ : Z ⟶ X := g ≫ prod.fst
    have hgvi : (functorToAction F).map g = v.inv ≫ i := by simp [← hvgi]
    have : IsIso ((functorToAction F).map ψ) := by
      simp only [map_comp, hgvi, Category.assoc, ψ]
      have : IsIso (i ≫ (functorToAction F).map prod.fst) := by
        suffices h : IsIso (𝟙 ((functorToAction F).obj X)) by simpa [i, u]
        infer_instance
      apply IsIso.comp_isIso
    have : IsIso ψ := isIso_of_reflects_iso ψ (functorToAction F)
    use inv ψ ≫ g ≫ prod.snd
    rw [← cancel_epi ((functorToAction F).map ψ)]
    ext (z : F.obj Z)
    simp [-FintypeCat.comp_apply, -Action.comp_hom, i, u, ψ, hgvi]

end PreGaloisCategory

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Full/Variant0f21c0bb6e62a723f17e0bce8890b2942fe4e9eff20d06ca3d8e88b80375a4df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Full/Variant0f21c0bb6e62a723f17e0bce8890b2942fe4e9eff20d06ca3d8e88b80375a4df.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7848a9cdb7a371f728f4e90f5890640abc687ca2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
