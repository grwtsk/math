# IsStandardEtale.of_isLocalizationAway

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b5116b1-f6e6-0c11-5198-8a97ec47749d",
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
  "slug": "isstandardetale-of-islocalizationaway--cba3ad39c0298478a71d3b7c",
  "source": {
    "blob": "03b41e98db7a4d6727042f12a586e0cc1c9f34c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 410,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StandardEtale/Variantb2b5ae0db32569626ba17b97866c94d284aaabda29525b8b1f396165262d2311.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cba3ad39c0298478a71d3b7c69e7e22d175ec30ed66fa901aa695aeeea19a7ea",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StandardEtale/Variantb2b5ae0db32569626ba17b97866c94d284aaabda29525b8b1f396165262d2311.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b5116b1-f6e6-0c11-5198-8a97ec47749d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–443.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StandardEtale/Variantb2b5ae0db32569626ba17b97866c94d284aaabda29525b8b1f396165262d2311.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StandardEtale/Variantb2b5ae0db32569626ba17b97866c94d284aaabda29525b8b1f396165262d2311.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03b41e98db7a4d6727042f12a586e0cc1c9f34c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
