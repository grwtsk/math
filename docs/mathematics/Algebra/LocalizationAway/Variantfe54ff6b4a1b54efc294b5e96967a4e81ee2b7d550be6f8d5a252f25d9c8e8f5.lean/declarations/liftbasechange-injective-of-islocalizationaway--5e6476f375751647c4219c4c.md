# liftBaseChange_injective_of_isLocalizationAway

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbc489ec74a642ff95ea2e2fa894281151a9a052",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe54ff6b4a1b54efc294b5e96967a4e81ee2b7d550be6f8d5a252f25d9c8e8f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf6c1d94-85c5-a381-e948-d5194553e377",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11d38de0-98b2-4755-94f9-7e3c062231e3",
  "kind": "lemma",
  "lexical_name": "liftBaseChange_injective_of_isLocalizationAway",
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
  "slug": "liftbasechange-injective-of-islocalizationaway--5e6476f375751647c4219c4c",
  "source": {
    "blob": "dbc489ec74a642ff95ea2e2fa894281151a9a052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 114,
    "path": "GRWTSK/Algebra/LocalizationAway/Variantfe54ff6b4a1b54efc294b5e96967a4e81ee2b7d550be6f8d5a252f25d9c8e8f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e6476f375751647c4219c4cb0e4df3fc620454e14edaabc00915f87afdd0ea1",
  "verification": {
    "reference": "docs/verification/Algebra/LocalizationAway/Variantfe54ff6b4a1b54efc294b5e96967a4e81ee2b7d550be6f8d5a252f25d9c8e8f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11d38de0-98b2-4755-94f9-7e3c062231e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma liftBaseChange_injective_of_isLocalizationAway :
    Function.Injective (LinearMap.liftBaseChange T
      (Extension.Cotangent.map
        ((Generators.localizationAway g (S := T)).toComp P).toExtensionHom)) := by
  set Q := Generators.localizationAway g (S := T)
  algebraize [((Generators.localizationAway g (S := T)).toComp P).toAlgHom.toRingHom]
  let f : P.Ring ⧸ P.ker ^ 2 := P.σ g
  let π := compLocalizationAwayAlgHom T g P
  refine IsLocalizedModule.injective_of_map_zero (Submonoid.powers g)
    (TensorProduct.mk S T P.toExtension.Cotangent 1) (fun x hx ↦ ?_)
  obtain ⟨x, rfl⟩ := Algebra.Extension.Cotangent.mk_surjective x
  suffices h : algebraMap P.Ring (Localization.Away f) x.val = 0 by
    rw [IsScalarTower.algebraMap_apply _ (P.Ring ⧸ P.ker ^ 2) _,
      IsLocalization.map_eq_zero_iff (Submonoid.powers f) (Localization.Away f)] at h
    obtain ⟨⟨m, ⟨n, rfl⟩⟩, hm⟩ := h
    rw [IsLocalizedModule.eq_zero_iff (Submonoid.powers g)]
    use ⟨g ^ n, n, rfl⟩
    dsimp [f] at hm
    rw [← map_pow, ← map_mul, Ideal.Quotient.eq_zero_iff_mem] at hm
    simp only [Submonoid.smul_def]
    rw [show g = algebraMap P.Ring S (P.σ g) by simp, ← map_pow, algebraMap_smul, ← map_smul,
      Extension.Cotangent.mk_eq_zero_iff]
    simpa using hm
  rw [← compLocalizationAwayAlgHom_toAlgHom_toComp (T := T)]
  apply sq_ker_comp_le_ker_compLocalizationAwayAlgHom
  simpa only [LinearEquiv.coe_coe, LinearMap.ringLmapEquivSelf_symm_apply,
    mk_apply, lift.tmul, LinearMap.coe_restrictScalars, LinearMap.coe_smulRight,
    Module.End.one_apply, LinearMap.smul_apply, one_smul, Algebra.Extension.Cotangent.map_mk,
    Extension.Cotangent.mk_eq_zero_iff] using hx

end Algebra.Generators
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalizationAway/Variantfe54ff6b4a1b54efc294b5e96967a4e81ee2b7d550be6f8d5a252f25d9c8e8f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalizationAway/Variantfe54ff6b4a1b54efc294b5e96967a4e81ee2b7d550be6f8d5a252f25d9c8e8f5.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbc489ec74a642ff95ea2e2fa894281151a9a052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
