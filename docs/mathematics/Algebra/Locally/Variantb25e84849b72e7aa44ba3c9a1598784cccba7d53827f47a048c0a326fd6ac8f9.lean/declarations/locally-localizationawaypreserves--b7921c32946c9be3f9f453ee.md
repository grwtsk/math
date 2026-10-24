# locally_localizationAwayPreserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2159dba0-dce3-e120-5a58-cc8b4d482abf",
  "kind": "lemma",
  "lexical_name": "locally_localizationAwayPreserves",
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
  "slug": "locally-localizationawaypreserves--b7921c32946c9be3f9f453ee",
  "source": {
    "blob": "e79cf4574ca91dbb7d9812c2231b517acd136f4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 309,
    "path": "GRWTSK/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7921c32946c9be3f9f453ee9cd481bdc453cab58b80d168758971de5ba45192",
  "verification": {
    "reference": "docs/verification/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2159dba0-dce3-e120-5a58-cc8b4d482abf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma locally_localizationAwayPreserves (hPl : LocalizationAwayPreserves P) :
    LocalizationAwayPreserves (Locally P) := by
  introv R hf
  obtain ⟨s, hsone, hs⟩ := hf
  rw [locally_iff_exists hPl.respectsIso]
  let rₐ (a : s) : Localization.Away a.val := algebraMap _ _ (f r)
  let Sₐ (a : s) := Localization.Away (rₐ a)
  have (a : s) :
      IsLocalization.Away (((algebraMap S (Localization.Away a.val)).comp f) r) (Sₐ a) :=
    inferInstanceAs (IsLocalization.Away (rₐ a) (Sₐ a))
  have (a : s) : IsLocalization (Algebra.algebraMapSubmonoid (Localization.Away a.val)
    (Submonoid.map f (Submonoid.powers r))) (Sₐ a) := by
    convert! (inferInstance : IsLocalization.Away (rₐ a) (Sₐ a))
    simp [rₐ, Algebra.algebraMapSubmonoid]
  have H (a : s) : Submonoid.powers (f r) ≤
      (Submonoid.powers (rₐ a)).comap (algebraMap S (Localization.Away a.val)) := by
    simp [rₐ, Submonoid.powers_le]
  let (a : s) : Algebra S' (Sₐ a) :=
    (IsLocalization.map (Sₐ a) (algebraMap S (Localization.Away a.val)) (H a)).toAlgebra
  have (a : s) : IsScalarTower S S' (Sₐ a) :=
    IsScalarTower.of_algebraMap_eq' (IsLocalization.map_comp (H a)).symm
  refine ⟨s, fun a ↦ algebraMap S S' a.val, ?_, Sₐ,
      inferInstance, inferInstance, fun a ↦ ?_, fun a ↦ ?_⟩
  · rw [← Set.image_eq_range, ← Ideal.map_span, hsone, Ideal.map_top]
  · convert!
    IsLocalization.commutes (T := Sₐ a) (M₁ := (Submonoid.powers r).map f) (S₁ := S') (S₂ :=
      Localization.Away a.val) (M₂ := Submonoid.powers a.val)
    simp [Algebra.algebraMapSubmonoid]
  · rw [algebraMap_toAlgebra, IsLocalization.Away.map, IsLocalization.map_comp_map]
    exact hPl ((algebraMap _ (Localization.Away a.val)).comp f) r R' (Sₐ a) (hs _ a.2)

/-- If `P` is preserved by localizations, then so is `Locally P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Locally/Variantb25e84849b72e7aa44ba3c9a1598784cccba7d53827f47a048c0a326fd6ac8f9.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e79cf4574ca91dbb7d9812c2231b517acd136f4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
