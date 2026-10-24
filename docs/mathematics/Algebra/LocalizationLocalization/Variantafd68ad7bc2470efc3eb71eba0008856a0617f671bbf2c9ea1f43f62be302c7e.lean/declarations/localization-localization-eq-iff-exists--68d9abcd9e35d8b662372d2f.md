# localization_localization_eq_iff_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f097062c5520da2d71ad8d2a6c56c3d8d37e5ffa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:847245c3-4df6-a21b-5646-9402963fe602",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:079104e8-60a5-53a8-c04e-070d94dfff03",
  "kind": "theorem",
  "lexical_name": "localization_localization_eq_iff_exists",
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
  "slug": "localization-localization-eq-iff-exists--68d9abcd9e35d8b662372d2f",
  "source": {
    "blob": "f097062c5520da2d71ad8d2a6c56c3d8d37e5ffa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 92,
    "path": "GRWTSK/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68d9abcd9e35d8b662372d2f85cd9c4f7efe058bde53476ce9b5d93d1763d31e",
  "verification": {
    "reference": "docs/verification/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:079104e8-60a5-53a8-c04e-070d94dfff03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localization_localization_eq_iff_exists [IsLocalization N T] (x y : R) :
    algebraMap R T x = algebraMap R T y ↔
      ∃ c : localizationLocalizationSubmodule M N, ↑c * x = ↑c * y := by
  rw [IsScalarTower.algebraMap_apply R S T, IsScalarTower.algebraMap_apply R S T,
    IsLocalization.eq_iff_exists N T]
  constructor
  · rintro ⟨z, eq₁⟩
    rcases IsLocalization.surj M (z : S) with ⟨⟨z', s⟩, eq₂⟩
    dsimp only at eq₂
    suffices : (algebraMap R S) (x * z' : R) = (algebraMap R S) (y * z')
    · obtain ⟨c, eq₃ : ↑c * (x * z') = ↑c * (y * z')⟩ := (IsLocalization.eq_iff_exists M S).mp this
      refine ⟨⟨c * z', ?_⟩, ?_⟩
      · rw [mem_localizationLocalizationSubmodule]
        refine ⟨z, c * s, ?_⟩
        rw [map_mul, ← eq₂, Submonoid.coe_mul, map_mul, mul_left_comm]
      · rwa [mul_comm _ z', mul_comm _ z', ← mul_assoc, ← mul_assoc] at eq₃
    · rw [map_mul, map_mul, ← eq₂, ← mul_assoc, ← mul_assoc, mul_comm _ (z : S), eq₁,
      mul_comm _ (z : S)]
  · rintro ⟨⟨c, hc⟩, eq₁ : c * x = c * y⟩
    rw [mem_localizationLocalizationSubmodule] at hc
    rcases hc with ⟨z₁, z, eq₂⟩
    use z₁
    refine (IsLocalization.map_units S z).mul_right_inj.mp ?_
    rw [← mul_assoc, mul_comm _ (z₁ : S), ← eq₂, ← map_mul, eq₁, map_mul, eq₂, ← mul_assoc,
      mul_comm _ (z₁ : S)]
#align is_localization.localization_localization_eq_iff_exists IsLocalization.localization_localization_eq_iff_exists

/-- Given submodules `M ⊆ R` and `N ⊆ S = M⁻¹R`, with `f : R →+* S` the localization map, we have
`N ⁻¹ S = T = (f⁻¹ (N • f(M))) ⁻¹ R`. I.e., the localization of a localization is a localization.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalizationLocalization/Variantafd68ad7bc2470efc3eb71eba0008856a0617f671bbf2c9ea1f43f62be302c7e.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f097062c5520da2d71ad8d2a6c56c3d8d37e5ffa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
