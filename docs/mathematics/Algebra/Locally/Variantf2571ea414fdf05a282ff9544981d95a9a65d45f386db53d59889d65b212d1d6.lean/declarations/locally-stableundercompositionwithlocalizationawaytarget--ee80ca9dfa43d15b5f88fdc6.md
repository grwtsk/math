# locally_StableUnderCompositionWithLocalizationAwayTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b946017-159a-bc5c-aeb7-d7762380a3b2",
  "kind": "lemma",
  "lexical_name": "locally_StableUnderCompositionWithLocalizationAwayTarget",
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
  "slug": "locally-stableundercompositionwithlocalizationawaytarget--ee80ca9dfa43d15b5f88fdc6",
  "source": {
    "blob": "36f03ea7f8a0b68e0d7c793b9317b8d2e85dc8f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 242,
    "path": "GRWTSK/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee80ca9dfa43d15b5f88fdc63b3575cd13e075ba14768190fa36ef30e8dc2716",
  "verification": {
    "reference": "docs/verification/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b946017-159a-bc5c-aeb7-d7762380a3b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma locally_StableUnderCompositionWithLocalizationAwayTarget
    (hP0 : RespectsIso P)
    (hPa : StableUnderCompositionWithLocalizationAwayTarget P) :
    StableUnderCompositionWithLocalizationAwayTarget (Locally P) := by
  intro R S T _ _ _ _ t _ f hf
  simp only [locally_iff_isLocalization hP0 f] at hf
  obtain ⟨s, hsone, hs⟩ := hf
  refine ⟨algebraMap S T '' s, ?_, ?_⟩
  · rw [← Ideal.map_span, hsone, Ideal.map_top]
  · rintro - ⟨a, ha, rfl⟩
    letI : Algebra (Localization.Away a) (Localization.Away (algebraMap S T a)) :=
      (IsLocalization.Away.map _ _ (algebraMap S T) a).toAlgebra
    have : (algebraMap (Localization.Away a) (Localization.Away (algebraMap S T a))).comp
        (algebraMap S (Localization.Away a)) =
        (algebraMap T (Localization.Away (algebraMap S T a))).comp (algebraMap S T) := by
      simp [algebraMap_toAlgebra, IsLocalization.Away.map]
    rw [← comp_assoc, ← this, comp_assoc]
    haveI : IsScalarTower S (Localization.Away a) (Localization.Away ((algebraMap S T) a)) := by
      apply IsScalarTower.of_algebraMap_eq
      intro x
      simp [algebraMap_toAlgebra, IsLocalization.Away.map, ← IsScalarTower.algebraMap_apply]
    haveI : IsLocalization.Away (algebraMap S (Localization.Away a) t)
        (Localization.Away (algebraMap S T a)) :=
      IsLocalization.Away.commutes _ T ((Localization.Away (algebraMap S T a))) a t
    apply hPa _ (algebraMap S (Localization.Away a) t)
    apply hs a ha

/-- If `P` is stable under composition with localization away maps on the left,
then so is `Locally P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36f03ea7f8a0b68e0d7c793b9317b8d2e85dc8f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
