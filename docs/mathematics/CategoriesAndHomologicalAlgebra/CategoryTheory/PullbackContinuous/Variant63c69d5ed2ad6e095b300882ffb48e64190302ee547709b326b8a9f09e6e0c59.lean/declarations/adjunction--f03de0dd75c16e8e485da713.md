# adjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff65f58d5daae39885638986068bccc1cf153909dd3c675e27d165d983cbed7c",
  "kind": "def",
  "lexical_name": "adjunction",
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
  "slug": "adjunction--f03de0dd75c16e8e485da713",
  "source": {
    "blob": "6ffa7105821a631753be0181a5194c65432c4d65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f03de0dd75c16e8e485da7133e156b8a4c55170274959012b6f21d24527748d6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff65f58d5daae39885638986068bccc1cf153909dd3c675e27d165d983cbed7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def adjunction :
    (forget S ⋙ PresheafOfModules.pullback.{v} φ.val ⋙
      PresheafOfModules.sheafification (𝟙 R.val)) ⊣ pushforward.{v} φ :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun F G ↦
        ((PresheafOfModules.sheafificationAdjunction (𝟙 R.val)).homEquiv _ _).trans
            (((PresheafOfModules.pullbackPushforwardAdjunction φ.val).homEquiv F.val G.val).trans
              ((fullyFaithfulForget S).homEquiv (Y := (pushforward φ).obj G)).symm)
      homEquiv_naturality_left_symm := by
        intros
        dsimp [Functor.FullyFaithful.homEquiv]
        -- these erw seem difficult to remove
        erw [Adjunction.homEquiv_naturality_left_symm,
          Adjunction.homEquiv_naturality_left_symm]
        dsimp
        simp only [Functor.map_comp, Category.assoc]
      homEquiv_naturality_right := by
        intros
        dsimp
        -- these erw seem difficult to remove
        erw [Adjunction.homEquiv_naturality_right, Adjunction.homEquiv_naturality_right]
        dsimp
        rfl }

end PullbackConstruction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackContinuous/Variant63c69d5ed2ad6e095b300882ffb48e64190302ee547709b326b8a9f09e6e0c59.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ffa7105821a631753be0181a5194c65432c4d65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
