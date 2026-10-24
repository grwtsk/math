# inertiaDegIn_ramificationIdxIn_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61401778d0496dae7af4e4d64dc98a9e9c41ef4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 349,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dfe37db75560de5fca07e38602843fafd0acf5e52ea2bea42918ee68812d7fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74e2f650-1bae-3049-b2b7-5b9d73a2a367",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd6bc776-e5f8-849a-2cab-4007c1f39991",
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
  "slug": "inertiadegin-ramificationidxin-aux--6cbd457e534658faf6be619c",
  "source": {
    "blob": "61401778d0496dae7af4e4d64dc98a9e9c41ef4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 349,
    "path": "GRWTSK/NumberTheory/Ideal/Variant0dfe37db75560de5fca07e38602843fafd0acf5e52ea2bea42918ee68812d7fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cbd457e534658faf6be619c2921e2509ce468462bcb9fee3d74f8930c85a0b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Ideal/Variant0dfe37db75560de5fca07e38602843fafd0acf5e52ea2bea42918ee68812d7fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd6bc776-e5f8-849a-2cab-4007c1f39991`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–403.

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

[Verification target and public status](../../../../../verification/NumberTheory/Ideal/Variant0dfe37db75560de5fca07e38602843fafd0acf5e52ea2bea42918ee68812d7fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Ideal/Variant0dfe37db75560de5fca07e38602843fafd0acf5e52ea2bea42918ee68812d7fb.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61401778d0496dae7af4e4d64dc98a9e9c41ef4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
