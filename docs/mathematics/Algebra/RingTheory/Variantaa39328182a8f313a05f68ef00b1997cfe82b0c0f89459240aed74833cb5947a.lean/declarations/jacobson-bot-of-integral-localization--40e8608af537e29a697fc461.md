# jacobson_bot_of_integral_localization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59e34e0f184baf6a3ede242a0820c02ea4e616a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 338,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ae199d3-5565-5cda-5d84-45c0db97a015",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76b02828-ecfb-fed0-41e0-59dc605e4b92",
  "kind": "theorem",
  "lexical_name": "jacobson_bot_of_integral_localization",
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
  "slug": "jacobson-bot-of-integral-localization--40e8608af537e29a697fc461",
  "source": {
    "blob": "59e34e0f184baf6a3ede242a0820c02ea4e616a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 338,
    "path": "GRWTSK/Algebra/Ring/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40e8608af537e29a697fc46167abd6c8642273f2aecd169a4528a1f6325a33c1",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76b02828-ecfb-fed0-41e0-59dc605e4b92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobson_bot_of_integral_localization
    {R : Type*} [CommRing R] [IsDomain R] [IsJacobsonRing R]
    (Rₘ Sₘ : Type*) [CommRing Rₘ] [CommRing Sₘ] (φ : R →+* S) (hφ : Function.Injective ↑φ) (x : R)
    (hx : x ≠ 0) [Algebra R Rₘ] [IsLocalization.Away x Rₘ] [Algebra S Sₘ]
    [IsLocalization ((Submonoid.powers x).map φ : Submonoid S) Sₘ]
    (hφ' :
      RingHom.IsIntegral (IsLocalization.map Sₘ φ (Submonoid.powers x).le_comap_map : Rₘ →+* Sₘ)) :
    (⊥ : Ideal S).jacobson = (⊥ : Ideal S) := by
  have hM : ((Submonoid.powers x).map φ : Submonoid S) ≤ nonZeroDivisors S :=
    map_le_nonZeroDivisors_of_injective φ hφ (powers_le_nonZeroDivisors_of_noZeroDivisors hx)
  letI : IsDomain Sₘ := IsLocalization.isDomain_of_le_nonZeroDivisors _ hM
  let φ' : Rₘ →+* Sₘ := IsLocalization.map _ φ (Submonoid.powers x).le_comap_map
  suffices ∀ I : Ideal Sₘ, I.IsMaximal → (I.comap (algebraMap S Sₘ)).IsMaximal by
    have hϕ' : comap (algebraMap S Sₘ) (⊥ : Ideal Sₘ) = (⊥ : Ideal S) := by
      rw [← RingHom.ker_eq_comap_bot, ← RingHom.injective_iff_ker_eq_bot]
      exact IsLocalization.injective Sₘ hM
    have hRₘ : IsJacobsonRing Rₘ := isJacobsonRing_localization x
    have hSₘ : IsJacobsonRing Sₘ := isJacobsonRing_of_isIntegral' φ' hφ'
    refine eq_bot_iff.mpr (le_trans ?_ (le_of_eq hϕ'))
    rw [← hSₘ.out isRadical_bot_of_noZeroDivisors, comap_jacobson]
    exact sInf_le_sInf fun j hj => ⟨bot_le,
      let ⟨J, hJ⟩ := hj
      hJ.2 ▸ this J hJ.1.2⟩
  intro I hI
  -- Remainder of the proof is pulling and pushing ideals around the square and the quotient square
  haveI : (I.comap (algebraMap S Sₘ)).IsPrime := comap_isPrime _ I
  haveI : (I.comap φ').IsPrime := comap_isPrime φ' I
  haveI : (⊥ : Ideal (S ⧸ I.comap (algebraMap S Sₘ))).IsPrime := bot_prime
  have hcomm : φ'.comp (algebraMap R Rₘ) = (algebraMap S Sₘ).comp φ := IsLocalization.map_comp _
  let f := quotientMap (I.comap (algebraMap S Sₘ)) φ le_rfl
  let g := quotientMap I (algebraMap S Sₘ) le_rfl
  have := isMaximal_comap_of_isIntegral_of_isMaximal' φ' hφ' I
  have := ((IsLocalization.isMaximal_iff_isMaximal_disjoint Rₘ x _).1 this).left
  have : ((I.comap (algebraMap S Sₘ)).comap φ).IsMaximal := by
    rwa [comap_comap, hcomm, ← comap_comap] at this
  rw [← bot_quotient_isMaximal_iff] at this ⊢
  refine isMaximal_of_isIntegral_of_isMaximal_comap' f ?_ ⊥
    ((eq_bot_iff.2 (comap_bot_le_of_injective f quotientMap_injective)).symm ▸ this)
  exact RingHom.IsIntegral.tower_bot f g quotientMap_injective
    ((comp_quotientMap_eq_of_comp_eq hcomm I).symm ▸
      (RingHom.isIntegral_of_surjective _
        (IsLocalization.surjective_quotientMap_of_maximal_of_localization (Submonoid.powers x) Rₘ
          (by rwa [comap_comap, hcomm, ← bot_quotient_isMaximal_iff]))).trans _ _ (hφ'.quotient _))

/-- Used to bootstrap the proof of `isJacobsonRing_polynomial_iff_isJacobsonRing`.
  That theorem is more general and should be used instead of this one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantaa39328182a8f313a05f68ef00b1997cfe82b0c0f89459240aed74833cb5947a.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e34e0f184baf6a3ede242a0820c02ea4e616a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
