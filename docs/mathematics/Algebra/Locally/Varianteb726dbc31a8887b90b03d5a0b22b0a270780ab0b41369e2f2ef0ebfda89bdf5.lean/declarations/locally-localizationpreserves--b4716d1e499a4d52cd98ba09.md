# locally_localizationPreserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f85c8a54f243bcdf1c1d9bb230f9b631848e488f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb726dbc31a8887b90b03d5a0b22b0a270780ab0b41369e2f2ef0ebfda89bdf5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aceff031-dc2c-58ec-b51c-2ba27c2984f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8acf8ae3-27d9-c8eb-edf9-c5011217eb09",
  "kind": "lemma",
  "lexical_name": "locally_localizationPreserves",
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
  "slug": "locally-localizationpreserves--b4716d1e499a4d52cd98ba09",
  "source": {
    "blob": "f85c8a54f243bcdf1c1d9bb230f9b631848e488f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 333,
    "path": "GRWTSK/Algebra/Locally/Varianteb726dbc31a8887b90b03d5a0b22b0a270780ab0b41369e2f2ef0ebfda89bdf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4716d1e499a4d52cd98ba09a4b0c45ffbb216c5aeab194ccb952fefcbf45963",
  "verification": {
    "reference": "docs/verification/Algebra/Locally/Varianteb726dbc31a8887b90b03d5a0b22b0a270780ab0b41369e2f2ef0ebfda89bdf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8acf8ae3-27d9-c8eb-edf9-c5011217eb09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma locally_localizationPreserves (hPl : LocalizationPreserves P) :
    LocalizationPreserves (Locally P) := by
  introv R hf
  obtain ⟨s, hsone, hs⟩ := hf
  rw [locally_iff_exists hPl.away.respectsIso]
  let Mₐ (a : s) : Submonoid (Localization.Away a.val) :=
    (M.map f).map (algebraMap S (Localization.Away a.val))
  let Sₐ (a : s) := Localization (Mₐ a)
  have hM (a : s) : M.map ((algebraMap S (Localization.Away a.val)).comp f) = Mₐ a :=
    (M.map_map _ _).symm
  have (a : s) :
      IsLocalization (M.map ((algebraMap S (Localization.Away a.val)).comp f)) (Sₐ a) := by
    rw [hM]
    infer_instance
  have (a : s) :
      IsLocalization (Algebra.algebraMapSubmonoid (Localization.Away a.val) (M.map f)) (Sₐ a) :=
    inferInstanceAs <| IsLocalization (Mₐ a) (Sₐ a)
  let (a : s) : Algebra S' (Sₐ a) :=
    (IsLocalization.map (Sₐ a) (algebraMap S (Localization.Away a.val))
      (M.map f).le_comap_map).toAlgebra
  have (a : s) : IsScalarTower S S' (Sₐ a) :=
    IsScalarTower.of_algebraMap_eq' (IsLocalization.map_comp (M.map f).le_comap_map).symm
  refine ⟨s, fun a ↦ algebraMap S S' a.val, ?_, Sₐ,
      inferInstance, inferInstance, fun a ↦ ?_, fun a ↦ ?_⟩
  · rw [← Set.image_eq_range, ← Ideal.map_span, hsone, Ideal.map_top]
  · convert!
    IsLocalization.commutes (T := Sₐ a) (M₁ := M.map f) (S₁ := S') (S₂ := Localization.Away a.val)
      (M₂ := Submonoid.powers a.val)
    simp [Algebra.algebraMapSubmonoid]
  · rw [algebraMap_toAlgebra, IsLocalization.map_comp_map]
    apply hPl
    exact hs a.val a.property

/-- If `P` is preserved by localizations and stable under composition with localization
away maps, then `Locally P` is a local property of ring homomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Locally/Varianteb726dbc31a8887b90b03d5a0b22b0a270780ab0b41369e2f2ef0ebfda89bdf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Locally/Varianteb726dbc31a8887b90b03d5a0b22b0a270780ab0b41369e2f2ef0ebfda89bdf5.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f85c8a54f243bcdf1c1d9bb230f9b631848e488f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
