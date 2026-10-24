# eligibleResidueSixPrime_iff_prime_and_three_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9985cab-ed29-228e-a561-2c83dbdf3ad3",
  "kind": "theorem",
  "lexical_name": "eligibleResidueSixPrime_iff_prime_and_three_lt",
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
  "slug": "eligibleresiduesixprime-iff-prime-and-three-lt--7a8b4422755fc24d07fd0018",
  "source": {
    "blob": "db8181eba682ff15d4baf598fbcb3c8815994841",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a8b4422755fc24d07fd00181218db125c1a1cd216c8c7bff6d5779406ed1031",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9985cab-ed29-228e-a561-2c83dbdf3ad3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eligibleResidueSixPrime_iff_prime_and_three_lt (p : ℕ) :
    IsEligibleResidueSixPrime p ↔ p.Prime ∧ 3 < p := by
  change (p.Prime ∧ p % 6 = 1) ∨ (p.Prime ∧ p % 6 = 5) ↔
    p.Prime ∧ 3 < p
  constructor
  · rintro (⟨hp, hres⟩ | ⟨hp, hres⟩)
    · refine ⟨hp, ?_⟩
      by_contra hnot
      have hle : p ≤ 3 := Nat.le_of_not_gt hnot
      have hp6 : p < 6 := by omega
      rw [Nat.mod_eq_of_lt hp6] at hres
      exact (hp.ne_one hres).elim
    · exact ⟨hp, by omega⟩
  · rintro ⟨hp, hp3⟩
    have hp2ne : p ≠ 2 := by omega
    have hp3ne : p ≠ 3 := by omega
    have hp2 : p.Coprime 2 :=
      (Nat.coprime_primes hp Nat.prime_two).2 hp2ne
    have hp3' : p.Coprime 3 :=
      (Nat.coprime_primes hp Nat.prime_three).2 hp3ne
    have hp6 : p.Coprime 6 := by
      simpa only [show 6 = 2 * 3 by norm_num] using hp2.mul_right hp3'
    have hmodcop : (p % 6).Coprime 6 :=
      (ZMod.coprime_mod_iff_coprime p 6).2 hp6
    have hmodlt : p % 6 < 6 := Nat.mod_lt p (by norm_num)
    have hres : p % 6 = 1 ∨ p % 6 = 5 := by
      interval_cases h : p % 6
      all_goals norm_num [h] at hmodcop
      all_goals simp
    rcases hres with hres | hres
    · exact Or.inl ⟨hp, hres⟩
    · exact Or.inr ⟨hp, hres⟩

/-- General index shift: deleting the primes `2` and `3` advances the ordinary
prime index by exactly two. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db8181eba682ff15d4baf598fbcb3c8815994841` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
