# exact_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1142c302-e766-6c7b-b2a9-e6900a04abdd",
  "kind": "lemma",
  "lexical_name": "exact_tfae",
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
  "slug": "exact-tfae--1caeccf1b7c4d143448d1701",
  "source": {
    "blob": "519d131fb979c9333c4c1bb61b66db5426d2cdae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 224,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant6c3a7977e9de20f994889f2c559ce8fec2e9c031d0433cf898089bb09362e755.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1caeccf1b7c4d143448d1701b78558f2f2272ff38360deb560b4b77c08f2d1e2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant6c3a7977e9de20f994889f2c559ce8fec2e9c031d0433cf898089bb09362e755.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1142c302-e766-6c7b-b2a9-e6900a04abdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exact_tfae : List.TFAE
    [
      ∀ (S : ShortComplex C), S.ShortExact → (S.map F).ShortExact,
      ∀ (S : ShortComplex C), S.Exact → (S.map F).Exact,
      PreservesHomology F,
      PreservesFiniteLimits F ∧ PreservesFiniteColimits F
    ] := by
  tfae_have 1 → 3
  | hF => by
    refine ⟨fun {X Y} f ↦ ?_, fun {X Y} f ↦ ?_⟩
    · have h := (preservesFiniteLimits_tfae F |>.out 0 2 |>.1 fun S hS ↦
        And.intro (hF S hS).exact (hF S hS).mono_f)
      exact h f
    · have h := (preservesFiniteColimits_tfae F |>.out 0 2 |>.1 fun S hS ↦
        And.intro (hF S hS).exact (hF S hS).epi_g)
      exact h f

  tfae_have 2 → 1
  | hF, S, hS => by
    have : Mono (S.map F).f := exact_iff_mono _ (by simp) |>.1 <|
      hF (.mk (0 : 0 ⟶ S.X₁) S.f <| by simp) (exact_iff_mono _ (by simp) |>.2 hS.mono_f)
    have : Epi (S.map F).g := exact_iff_epi _ (by simp) |>.1 <|
      hF (.mk S.g (0 : S.X₃ ⟶ 0) <| by simp) (exact_iff_epi _ (by simp) |>.2 hS.epi_g)
    exact ⟨hF S hS.exact⟩

  tfae_have 3 → 4
  | h => ⟨preservesFiniteLimits_of_preservesHomology F,
      preservesFiniteColimits_of_preservesHomology F⟩

  tfae_have 4 → 2
  | ⟨h1, h2⟩, _, h => h.map F

  tfae_finish

end

end Functor

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant6c3a7977e9de20f994889f2c559ce8fec2e9c031d0433cf898089bb09362e755.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant6c3a7977e9de20f994889f2c559ce8fec2e9c031d0433cf898089bb09362e755.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `519d131fb979c9333c4c1bb61b66db5426d2cdae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
