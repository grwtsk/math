# nonprime_primePower_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87784346-0e38-cd5f-fcaf-37b4fc5e72e9",
  "kind": "theorem",
  "lexical_name": "nonprime_primePower_iff",
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
  "slug": "nonprime-primepower-iff--cd48227ae096bbd0c844972a",
  "source": {
    "blob": "b69257196a7d59b9ab2a003edc6add38e5659fa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd48227ae096bbd0c844972ad82857d51ef8e2558ba5ef207d2db393f43c075e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87784346-0e38-cd5f-fcaf-37b4fc5e72e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonprime_primePower_iff (n : ℕ) :
    (¬n.Prime ∧ IsPrimePow n) ↔ IsPrimeSquare n ∨ IsHigherPrimePower n := by
  constructor
  · rintro ⟨hn, p, k, hp, hk, hpn⟩
    have hkp : k ≠ 1 := by
      intro he
      rw [he, pow_one] at hpn
      exact hn (hpn ▸ hp.nat_prime)
    by_cases hk2 : k = 2
    · exact Or.inl ⟨p, hp.nat_prime, by simpa [hk2] using hpn⟩
    · exact Or.inr ⟨p, k, hp.nat_prime, by omega, hpn⟩
  · rintro (hs | hh)
    · refine ⟨primeSquare_not_prime n hs, ?_⟩
      obtain ⟨p, hp, hpn⟩ := hs
      exact ⟨p, 2, hp.prime, by norm_num, hpn⟩
    · refine ⟨higher_not_prime n hh, ?_⟩
      obtain ⟨p, k, hp, hk, hpn⟩ := hh
      exact ⟨p, k, hp.prime, by omega, hpn⟩

/-- Composite indices outside the two proper-power sectors have exactly zero Mangoldt weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b69257196a7d59b9ab2a003edc6add38e5659fa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
