# locally_isStableUnderBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffb18814-5c09-a3d9-1b1b-9cca13c7588d",
  "kind": "lemma",
  "lexical_name": "locally_isStableUnderBaseChange",
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
  "slug": "locally-isstableunderbasechange--1c33f0ea8386faf55ecac8ed",
  "source": {
    "blob": "36f03ea7f8a0b68e0d7c793b9317b8d2e85dc8f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 281,
    "path": "GRWTSK/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c33f0ea8386faf55ecac8edca78a89033491d673eaa12d455f0cd80a515704a",
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

Occurrence: `result:ffb18814-5c09-a3d9-1b1b-9cca13c7588d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma locally_isStableUnderBaseChange (hPi : RespectsIso P) (hPb : IsStableUnderBaseChange P) :
    IsStableUnderBaseChange (Locally P) := by
  apply IsStableUnderBaseChange.mk (locally_respectsIso hPi)
  introv hf
  obtain ⟨s, hsone, hs⟩ := hf
  rw [locally_iff_exists hPi]
  letI (a : s) : Algebra (S ⊗[R] T) (S ⊗[R] Localization.Away a.val) :=
    (Algebra.TensorProduct.map (AlgHom.id R S) (IsScalarTower.toAlgHom R _ _)).toRingHom.toAlgebra
  letI (a : s) : Algebra T (S ⊗[R] Localization.Away a.val) :=
    ((algebraMap _ (S ⊗[R] Localization.Away a.val)).comp (algebraMap T (S ⊗[R] T))).toAlgebra
  haveI (a : s) : IsScalarTower T (S ⊗[R] T) (S ⊗[R] Localization.Away a.val) :=
    IsScalarTower.of_algebraMap_eq' rfl
  haveI (a : s) : IsScalarTower T (Localization.Away a.val) (S ⊗[R] Localization.Away a.val) :=
    IsScalarTower.of_algebraMap_eq' rfl
  haveI (a : s) : IsScalarTower S (S ⊗[R] T) (S ⊗[R] Localization.Away a.val) :=
      IsScalarTower.of_algebraMap_eq <| by
    intro x
    simp [RingHom.algebraMap_toAlgebra]
  haveI (a : s) : Algebra.IsPushout T (Localization.Away a.val) (S ⊗[R] T)
      (S ⊗[R] Localization.Away a.val) := by
    rw [← Algebra.IsPushout.comp_iff R _ S]
    infer_instance
  refine ⟨s, fun a ↦ Algebra.TensorProduct.includeRight a.val, ?_,
      fun a ↦ (S ⊗[R] Localization.Away a.val), inferInstance, inferInstance, ?_, ?_⟩
  · rw [← Set.image_eq_range, ← Ideal.map_span, hsone, Ideal.map_top]
  · intro a
    convert_to IsLocalization (Algebra.algebraMapSubmonoid (S ⊗[R] T) (Submonoid.powers a.val))
        (S ⊗[R] Localization.Away a.val)
    · simp only [Algebra.TensorProduct.includeRight_apply, Algebra.algebraMapSubmonoid,
        Submonoid.map_powers]
      rfl
    · rw [← isLocalizedModule_iff_isLocalization, isLocalizedModule_iff_isBaseChange
        (S := Submonoid.powers a.val) (A := Localization.Away a.val)]
      exact Algebra.IsPushout.out
  · intro a
    have : (algebraMap (S ⊗[R] T) (S ⊗[R] Localization.Away a.val)).comp
        Algebra.TensorProduct.includeLeftRingHom =
        Algebra.TensorProduct.includeLeftRingHom := by
      ext x
      simp [RingHom.algebraMap_toAlgebra]
    rw [this]
    apply hPb R (Localization.Away a.val)
    rw [IsScalarTower.algebraMap_eq R T (Localization.Away a.val)]
    apply hs a a.property

/-- If `P` is preserved by localization away, then so is `Locally P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Locally/Variantf2571ea414fdf05a282ff9544981d95a9a65d45f386db53d59889d65b212d1d6.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36f03ea7f8a0b68e0d7c793b9317b8d2e85dc8f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
