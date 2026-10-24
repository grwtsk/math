# not_dvd_differentIdeal_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd492e0e-412d-ca31-912c-79c44604b0e8",
  "kind": "theorem",
  "lexical_name": "not_dvd_differentIdeal_iff",
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
  "slug": "not-dvd-differentideal-iff--ed887557fb1e5e0d8fb5e839",
  "source": {
    "blob": "80aa2fd72bb8b22bf434ee45037d3305580fea98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 965,
    "line": 920,
    "path": "GRWTSK/Algebra/LinearAlgebra/Different/Variant68eaea4ef0d0acf2d622cbaa114d5c350a6cf04f1fc380a12259b4206353521a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed887557fb1e5e0d8fb5e8393242fa4eea63c205dbde27f700ac105ef90e4032",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Different/Variant68eaea4ef0d0acf2d622cbaa114d5c350a6cf04f1fc380a12259b4206353521a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd492e0e-412d-ca31-912c-79c44604b0e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 920–965.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_dvd_differentIdeal_iff
    [Algebra.IsSeparable (FractionRing A) (FractionRing B)] {P : Ideal B} [P.IsPrime] :
    ¬ P ∣ differentIdeal A B ↔ Algebra.IsUnramifiedAt A P := by
  rcases eq_or_ne P ⊥ with rfl | hPbot
  · simp_rw [← Ideal.zero_eq_bot, zero_dvd_iff]
    simp only [Submodule.zero_eq_bot, differentIdeal_ne_bot, not_false_eq_true, true_iff]
    let K := FractionRing A
    let L := FractionRing B
    have : IsLocalization B⁰ (Localization.AtPrime (⊥ : Ideal B)) := by
      convert!
        (inferInstance :
          IsLocalization (⊥ : Ideal B).primeCompl (Localization.AtPrime (⊥ : Ideal B)))
      ext; simp [Ideal.primeCompl]
    refine (Algebra.FormallyUnramified.iff_of_equiv (A := L)
      ((IsLocalization.algEquiv B⁰ _ _).restrictScalars A)).mp ?_
    have : Algebra.FormallyUnramified K L := by
      rwa [Algebra.FormallyUnramified.iff_isSeparable]
    refine .comp A K L
  have hp : P.under A ≠ ⊥ := mt Ideal.eq_bot_of_under_eq_bot hPbot
  have hp' := (Ideal.map_eq_bot_iff_of_injective
    (FaithfulSMul.algebraMap_injective A B)).not.mpr hp
  have := Ideal.IsPrime.isMaximal inferInstance hPbot
  let := Localization.AtPrime.algebraOfLiesOver (P.under A) P
  constructor
  · intro H
    · rw [Algebra.isUnramifiedAt_iff_map_eq (p := P.under A)]
      constructor
      · suffices Algebra.IsSeparable (A ⧸ P.under A) (B ⧸ P) by infer_instance
        contrapose H
        exact dvd_differentIdeal_of_not_isSeparable A hp P H
      · rw [← Ideal.IsDedekindDomain.ramificationIdx'_eq_one_iff hPbot Ideal.map_comap_le]
        apply Ideal.ramificationIdx'_spec
        · simp [Ideal.map_le_iff_le_comap]
        · contrapose H
          rw [← pow_one P, show 1 = 2 - 1 by simp]
          apply pow_sub_one_dvd_differentIdeal _ _ _ hp
          simpa [Ideal.dvd_iff_le] using H
  · intro H
    obtain ⟨Q, h₁, h₂⟩ := Ideal.eq_prime_pow_mul_coprime hp' P
    rw [← Ideal.IsDedekindDomain.ramificationIdx_eq_normalizedFactors_count _ _ hp',
      Ideal.ramificationIdx_eq_one_of_isUnramifiedAt, pow_one] at h₂
    obtain ⟨h₃, h₄⟩ := (Algebra.isUnramifiedAt_iff_map_eq (p := P.under A) _ _).mp H
    exact not_dvd_differentIdeal_of_isCoprime_of_isSeparable
      A P Q (Ideal.isCoprime_iff_sup_eq.mpr h₁) h₂.symm

/-- A prime divides the different ideal iff it is ramified. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Different/Variant68eaea4ef0d0acf2d622cbaa114d5c350a6cf04f1fc380a12259b4206353521a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Different/Variant68eaea4ef0d0acf2d622cbaa114d5c350a6cf04f1fc380a12259b4206353521a.lean#L920).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80aa2fd72bb8b22bf434ee45037d3305580fea98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
