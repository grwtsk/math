# localization_localization_exists_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d1ae05d499f42ed6654839987c7f1d2a7cbfe18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe1b0b6df850a30de087c5c526c26304bc90db060fa1f8387c4d0f3b779b998a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:021b5d1b-4a49-ef3d-7cbd-80ef9a5d657d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:712bd3bd-7605-522f-2e4e-3c66ea6b6b43",
  "kind": "theorem",
  "lexical_name": "localization_localization_exists_of_eq",
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
  "slug": "localization-localization-exists-of-eq--685fab8177dba066ad282e1c",
  "source": {
    "blob": "8d1ae05d499f42ed6654839987c7f1d2a7cbfe18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 86,
    "path": "GRWTSK/Algebra/LocalizationLocalization/Variantfe1b0b6df850a30de087c5c526c26304bc90db060fa1f8387c4d0f3b779b998a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:685fab8177dba066ad282e1c9d2251ae36f7e2d282899bab4e5e24011b44160d",
  "verification": {
    "reference": "docs/verification/Algebra/LocalizationLocalization/Variantfe1b0b6df850a30de087c5c526c26304bc90db060fa1f8387c4d0f3b779b998a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:712bd3bd-7605-522f-2e4e-3c66ea6b6b43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localization_localization_exists_of_eq [IsLocalization N T] (x y : R) :
    algebraMap R T x = algebraMap R T y →
      ∃ c : localizationLocalizationSubmodule M N, ↑c * x = ↑c * y := by
  rw [IsScalarTower.algebraMap_apply R S T, IsScalarTower.algebraMap_apply R S T,
    IsLocalization.eq_iff_exists N T]
  rintro ⟨z, eq₁⟩
  rcases IsLocalization.surj M (z : S) with ⟨⟨z', s⟩, eq₂⟩
  dsimp only at eq₂
  suffices (algebraMap R S) (x * z' : R) = (algebraMap R S) (y * z') by
    obtain ⟨c, eq₃ : ↑c * (x * z') = ↑c * (y * z')⟩ := (IsLocalization.eq_iff_exists M S).mp this
    refine ⟨⟨c * z', ?_⟩, ?_⟩
    · rw [mem_localizationLocalizationSubmodule]
      refine ⟨z, c * s, ?_⟩
      rw [map_mul, ← eq₂, Submonoid.coe_mul, map_mul, mul_left_comm]
    · rwa [mul_comm _ z', mul_comm _ z', ← mul_assoc, ← mul_assoc] at eq₃
  rw [map_mul, map_mul, ← eq₂, ← mul_assoc, ← mul_assoc, mul_comm _ (z : S), eq₁,
    mul_comm _ (z : S)]

/-- Given submodules `M ⊆ R` and `N ⊆ S = M⁻¹R`, with `f : R →+* S` the localization map, we have
`N ⁻¹ S = T = (f⁻¹ (N • f(M))) ⁻¹ R`. I.e., the localization of a localization is a localization.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalizationLocalization/Variantfe1b0b6df850a30de087c5c526c26304bc90db060fa1f8387c4d0f3b779b998a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalizationLocalization/Variantfe1b0b6df850a30de087c5c526c26304bc90db060fa1f8387c4d0f3b779b998a.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d1ae05d499f42ed6654839987c7f1d2a7cbfe18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
