# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01e284a10264e03ee9cac1f6094d8d25a708433077b7740e8ba91ec57ce1daf5",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--dc92567a966202eaccc690e1",
  "source": {
    "blob": "85e94ad0bc3ac78a8786f5199047bb0146874193",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 113,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Varianta5200b1bc9afe663843ee2fc297316c7d7f369f884f7d17729d4040789d5aacd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc92567a966202eaccc690e1ea6be5000943510a16d26cf652f5e3eb04650267",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Varianta5200b1bc9afe663843ee2fc297316c7d7f369f884f7d17729d4040789d5aacd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01e284a10264e03ee9cac1f6094d8d25a708433077b7740e8ba91ec57ce1daf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : P.isoModSerre.HasRightCalculusOfFractions where
  exists_rightFraction X Y φ :=
    ⟨{s := pullback.fst φ.f φ.s
      f := pullback.snd φ.f φ.s,
      hs := MorphismProperty.pullback_fst _ _ φ.hs}, pullback.condition⟩
  ext X Y Y' f₁ f₂ s hs eq := by
    refine ⟨_, kernel.ι (f₁ - f₂), ?_, ?_⟩
    · rw [isoModSerre_iff_of_mono]
      exact P.prop_of_iso (Abelian.coimageIsoImage (f₁ - f₂)).symm
        ((exists_comp_isoModSerre_eq_zero_iff P _).1 ⟨_ ,s, hs, by simpa [sub_eq_zero]⟩)
    · simpa only [Preadditive.comp_sub, sub_eq_zero] using kernel.condition (f₁ - f₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Varianta5200b1bc9afe663843ee2fc297316c7d7f369f884f7d17729d4040789d5aacd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Varianta5200b1bc9afe663843ee2fc297316c7d7f369f884f7d17729d4040789d5aacd.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e94ad0bc3ac78a8786f5199047bb0146874193` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
