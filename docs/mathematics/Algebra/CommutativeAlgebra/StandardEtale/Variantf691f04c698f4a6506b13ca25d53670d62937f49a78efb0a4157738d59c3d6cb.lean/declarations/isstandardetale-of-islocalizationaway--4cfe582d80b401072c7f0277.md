# IsStandardEtale.of_isLocalizationAway

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d328ace851c177e8d9c708a2ecd5dec303d88d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 402,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f691f04c698f4a6506b13ca25d53670d62937f49a78efb0a4157738d59c3d6cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff95196b-0747-2bb7-e7d7-2e60b894798b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ccf86ba6-4330-2205-1af4-716bce798bba",
  "kind": "lemma",
  "lexical_name": "IsStandardEtale.of_isLocalizationAway",
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
  "slug": "isstandardetale-of-islocalizationaway--4cfe582d80b401072c7f0277",
  "source": {
    "blob": "7d328ace851c177e8d9c708a2ecd5dec303d88d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 402,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StandardEtale/Variantf691f04c698f4a6506b13ca25d53670d62937f49a78efb0a4157738d59c3d6cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cfe582d80b401072c7f02774de59222dc57234f706ae0657284d2a114238a69",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StandardEtale/Variantf691f04c698f4a6506b13ca25d53670d62937f49a78efb0a4157738d59c3d6cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccf86ba6-4330-2205-1af4-716bce798bba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsStandardEtale.of_isLocalizationAway [IsStandardEtale R S]
    {Sₛ : Type*} [CommRing Sₛ] [Algebra S Sₛ]
    [Algebra R Sₛ] [IsScalarTower R S Sₛ] (s : S) [IsLocalization.Away s Sₛ] :
    IsStandardEtale R Sₛ := by
  have P : StandardEtalePresentation R S := IsStandardEtale.nonempty_standardEtalePresentation.some
  obtain ⟨p, n, hp⟩ := P.exists_mul_aeval_x_g_pow_eq_aeval_x s
  let P' : StandardEtalePair R := ⟨P.f, P.monic_f, p * P.g, have ⟨p₁, p₂, m, e⟩ := P.cond;
    ⟨p₁ * p ^ m, p₂ * p ^ m, m, by linear_combination e * p ^ m⟩⟩
  let S' := Localization.Away (AdjoinRoot.mk P.f P.g)
  let e : S ≃ₐ[R] S' := P.equivRing.trans P.P.equivAwayAdjoinRoot
  have := IsLocalization.Away.mul S' (Localization.Away (algebraMap _ S' (AdjoinRoot.mk P.f p)))
    (AdjoinRoot.mk P.f P.g) (.mk _ p)
  rw [← map_mul] at this
  have H : Submonoid.map e.symm.toRingEquiv.toMonoidHom (.powers
      (algebraMap _ S' (AdjoinRoot.mk P.f p))) = .powers (aeval P.x p) := by
    have : ((e.symm.toAlgHom.comp (IsScalarTower.toAlgHom R _ S')).comp (AdjoinRoot.mkₐ P.f)) =
      aeval P.x := by ext; simp [e, StandardEtalePair.equivAwayAdjoinRoot]
    rw [Submonoid.map_powers]
    exact congr(Submonoid.powers ($this p))
  have : IsLocalization.Away (aeval P.x p) Sₛ :=
    IsLocalization.Away.of_associated (r := s) ⟨(P.hasMap.2.pow n).unit, hp⟩
  let e₁ : P'.Ring ≃ₐ[R]
      Localization.Away (algebraMap _ S' (AdjoinRoot.mk P.f p)) :=
    P'.equivAwayAdjoinRoot.trans ((IsLocalization.algEquiv (.powers (AdjoinRoot.mk P.f (p * P.g)))
      (Localization.Away (AdjoinRoot.mk P.f (p * P.g))) _).restrictScalars R)
  let e₂ : Localization.Away (algebraMap _ S' (AdjoinRoot.mk P.f p)) ≃ₐ[R] Sₛ :=
    { __ := IsLocalization.ringEquivOfRingEquiv _ _ _ H,
      commutes' r := by
        simp [IsScalarTower.algebraMap_apply R S' (Localization.Away _),
          - AlgEquiv.symm_toRingEquiv, IsScalarTower.algebraMap_eq R S Sₛ] }
  exact .of_equiv (e₁.trans e₂)

/-- If `T` is an etale algebra, and a standard etale algebra surjects onto `T`, then
  `T` is also standard etale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StandardEtale/Variantf691f04c698f4a6506b13ca25d53670d62937f49a78efb0a4157738d59c3d6cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StandardEtale/Variantf691f04c698f4a6506b13ca25d53670d62937f49a78efb0a4157738d59c3d6cb.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d328ace851c177e8d9c708a2ecd5dec303d88d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
