# Ideal.iUnion_minimalPrimes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d53d4554-775a-dc3f-ee3e-8f25a5eda2d2",
  "kind": "theorem",
  "lexical_name": "Ideal.iUnion_minimalPrimes",
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
  "slug": "ideal-iunion-minimalprimes--c630405d807bbf2ddc9f3f9e",
  "source": {
    "blob": "d47630b9103bcada6637ecd93b0b8734bd7fe2d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 45,
    "path": "GRWTSK/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c630405d807bbf2ddc9f3f9edf4ceec35c8c1d0767043c5b66a097ea941997cb",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d53d4554-775a-dc3f-ee3e-8f25a5eda2d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.iUnion_minimalPrimes :
    ⋃ p ∈ I.minimalPrimes, p = { x | ∃ y ∉ I.radical, x * y ∈ I.radical } := by
  classical
  ext x
  simp only [Set.mem_iUnion, SetLike.mem_coe, exists_prop, Set.mem_setOf_eq]
  constructor
  · rintro ⟨p, ⟨⟨hp₁, hp₂⟩, hp₃⟩, hxp⟩
    have : p.map (algebraMap R (Localization.AtPrime p)) ≤ (I.map (algebraMap _ _)).radical := by
      rw [Ideal.radical_eq_sInf, le_sInf_iff]
      rintro q ⟨hq', hq⟩
      obtain ⟨h₁, h₂⟩ := ((IsLocalization.AtPrime.orderIsoOfPrime _ p) ⟨q, hq⟩).2
      rw [Ideal.map_le_iff_le_comap] at hq' ⊢
      exact hp₃ ⟨h₁, hq'⟩ h₂
    obtain ⟨n, hn⟩ := this (Ideal.mem_map_of_mem _ hxp)
    rw [IsLocalization.mem_map_algebraMap_iff (M := p.primeCompl)] at hn
    obtain ⟨⟨a, b⟩, hn⟩ := hn
    rw [← map_pow, ← map_mul, IsLocalization.eq_iff_exists p.primeCompl] at hn
    obtain ⟨t, ht⟩ := hn
    refine ⟨t * b, fun h ↦ (t * b).2 (hp₁.radical_le_iff.mpr hp₂ h), n + 1, ?_⟩
    simp only at ht
    have : (x * (t.1 * b.1)) ^ (n + 1) = (t.1 ^ n * b.1 ^ n * x * t.1) * a := by
      rw [mul_assoc, ← ht]; ring
    rw [this]
    exact I.mul_mem_left _ a.2
  · rintro ⟨y, hy, hx⟩
    obtain ⟨p, hp, hyp⟩ : ∃ p ∈ I.minimalPrimes, y ∉ p := by
      simpa [← Ideal.sInf_minimalPrimes] using hy
    refine ⟨p, hp, (hp.1.1.mem_or_mem ?_).resolve_right hyp⟩
    exact hp.1.1.radical_le_iff.mpr hp.1.2 hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variantd3474e0f8fdba7a1c477b84ed900597332b15c2862ada44f41c38505d22a495f.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d47630b9103bcada6637ecd93b0b8734bd7fe2d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
