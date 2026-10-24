# inertiaDegIn_ramificationIdxIn_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8d0f39c-c044-42d4-84b4-296671c50e2f",
  "kind": "theorem",
  "lexical_name": "inertiaDegIn_ramificationIdxIn_aux",
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
  "slug": "inertiadegin-ramificationidxin-aux--715137219fcb917887dbf4cc",
  "source": {
    "blob": "1a7f19b849fdbfd6c34175328163d2742bd6a5d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 357,
    "path": "GRWTSK/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:715137219fcb917887dbf4cc8ef214478c6cc34aca78693aac24af226f347895",
  "verification": {
    "reference": "docs/verification/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8d0f39c-c044-42d4-84b4-296671c50e2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inertiaDegIn_ramificationIdxIn_aux (hn : n = p ^ (k + 1) * m) (hm : ¬ p ∣ m) :
    𝒑.inertiaDegIn (𝓞 K) = orderOf (p : ZMod m) ∧
      𝒑.ramificationIdxIn (𝓞 K) = p ^ k * (p - 1) := by
  have : IsAbelianGalois ℚ K := IsCyclotomicExtension.isAbelianGalois {n} ℚ K
  have : NeZero m := ⟨fun h ↦ by simp [h] at hm⟩
  have : NeZero n := ⟨hn ▸ NeZero.ne (p ^ (k + 1) * m)⟩
  let ζ := zeta n ℚ K
  have hζ := zeta_spec n ℚ K
  -- We construct `ℚ⟮ζₘ⟯ ⊆ ℚ⟮ζₙ⟯`
  let ζₘ := ζ ^ (p ^ (k + 1))
  have hζₘ := hζ.pow (NeZero.pos _) hn
  let Fₘ := ℚ⟮ζₘ⟯
  have : IsCyclotomicExtension {m} ℚ Fₘ :=
    (isCyclotomicExtension_singleton_iff_eq_adjoin _ _ _ _ hζₘ).mpr rfl
  -- A prime ideal of `Fₘ` above `𝒑`
  obtain ⟨Pₘ, _, _⟩ := exists_maximal_ideal_liesOver_of_isIntegral 𝒑 (S := 𝓞 Fₘ)
  -- We construct `ℚ⟮ζ_p^{k+1}⟯ ⊆ ℚ⟮ζₘ⟯`
  let ζₚ := ζ ^ m
  have hζₚ := hζ.pow (NeZero.pos _) (mul_comm _ m ▸ hn)
  let Fₚ := ℚ⟮ζₚ⟯
  have : IsCyclotomicExtension {p ^ (k + 1)} ℚ Fₚ :=
    (isCyclotomicExtension_singleton_iff_eq_adjoin _ _ _ _ hζₚ).mpr rfl
  -- A prime ideal of `Fₚ` above `𝒑`
  obtain ⟨Pₚ, hP₁, _⟩ := exists_maximal_ideal_liesOver_of_isIntegral 𝒑 (S := 𝓞 Fₚ)
  suffices Pₚ.ramificationIdxIn (𝓞 K) *
      Pₘ.inertiaDegIn (𝓞 K) * (Pₘ.primesOver (𝓞 K)).ncard = 1 by
    replace this := Nat.eq_one_of_mul_eq_one_right this
    rw [← inertiaDegIn_mul_inertiaDegIn 𝒑 Pₘ Gal(Fₘ/ℚ) _ Gal(K/ℚ) Gal(K/Fₘ),
      ← ramificationIdxIn_mul_ramificationIdxIn Pₚ Gal(Fₚ/ℚ) _ Gal(K/ℚ) Gal(K/Fₚ),
      Nat.eq_one_of_mul_eq_one_left this, Nat.eq_one_of_mul_eq_one_right this, mul_one, mul_one,
      inertiaDegIn_eq_of_not_dvd p _ hm, ramificationIdxIn_eq_of_prime_pow p k Fₚ]
    exact ⟨rfl, rfl⟩
  have h_main : Module.finrank ℚ Fₘ * Module.finrank ℚ Fₚ = Module.finrank ℚ K := by
    rw [finrank m, finrank (p ^ (k + 1)), finrank n, hn, mul_comm, Nat.totient_mul]
    exact Nat.Coprime.pow_left (k + 1) (by rwa [hp.out.coprime_iff_not_dvd])
  rwa [← IsGalois.card_aut_eq_finrank, ← IsGalois.card_aut_eq_finrank,
    ← IsGalois.card_aut_eq_finrank,
    ← ncard_primesOver_mul_ramificationIdxIn_mul_inertiaDegIn 𝒑 (𝓞 Fₘ) Gal(Fₘ/ℚ),
    ← ncard_primesOver_mul_ramificationIdxIn_mul_inertiaDegIn 𝒑 (𝓞 Fₚ) Gal(Fₚ/ℚ),
    ← ncard_primesOver_mul_ramificationIdxIn_mul_inertiaDegIn 𝒑 (𝓞 K) Gal(K/ℚ),
    ← ncard_primesOver_mul_ncard_primesOver Pₘ Gal(Fₘ/ℚ) (𝓞 K) Gal(K/ℚ),
    ramificationIdxIn_eq_of_not_dvd p Fₘ hm, inertiaDegIn_eq_of_prime_pow p k Fₚ,
    ncard_primesOver_of_prime_pow p k Fₚ, one_mul, one_mul, mul_one, mul_assoc, mul_assoc,
    mul_right_inj' (IsDedekindDomain.primesOver_ncard_ne_zero 𝒑 _), ← mul_assoc,
    ← mul_rotate (𝒑.inertiaDegIn (𝓞 K)),
    ← inertiaDegIn_mul_inertiaDegIn 𝒑 Pₘ Gal(Fₘ/ℚ) (𝓞 K) Gal(K/ℚ) Gal(K/Fₘ), mul_assoc, mul_assoc,
    mul_right_inj' (inertiaDegIn_ne_zero Gal(Fₘ/ℚ)), ← mul_rotate',
    ← ramificationIdxIn_mul_ramificationIdxIn (p := 𝒑) Pₚ Gal(Fₚ/ℚ) (𝓞 K) Gal(K/ℚ) Gal(K/Fₚ),
    eq_comm, mul_assoc, mul_eq_left₀ (ramificationIdxIn_ne_zero Gal(Fₚ/ℚ)), ← mul_assoc]
    at h_main

/--
Write `n = p ^ (k + 1) * m` where the prime `p` does not divide `m`, then the inertia degree of
`p` in `ℚ(ζₙ)` is the order of `p` modulo `m`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Ideal/Variantcee7e98bbac003c2af71218f6d7d808d4ff1464c3425f1e2a5c1b8dc3bb450f6.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a7f19b849fdbfd6c34175328163d2742bd6a5d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
