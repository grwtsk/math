# coprime_sq_sub_sq_add_of_even_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f11bdcba-ec18-019c-1582-5676a213cea9",
  "kind": "theorem",
  "lexical_name": "coprime_sq_sub_sq_add_of_even_odd",
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
  "slug": "coprime-sq-sub-sq-add-of-even-odd--3328e212b14907e9aac4e479",
  "source": {
    "blob": "42638fd92f011c676c1fbbaa562c389d8592378c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 335,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant01f8bb269b87848419b489cb1ac31c70cdbc30d63b3796e614c6ca6f6dd67d8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3328e212b14907e9aac4e4799a79a782d0b7ef235a88cf74a90cc306503778ea",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant01f8bb269b87848419b489cb1ac31c70cdbc30d63b3796e614c6ca6f6dd67d8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f11bdcba-ec18-019c-1582-5676a213cea9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem coprime_sq_sub_sq_add_of_even_odd {m n : ℤ} (h : Int.gcd m n = 1) (hm : m % 2 = 0)
    (hn : n % 2 = 1) : Int.gcd (m ^ 2 - n ^ 2) (m ^ 2 + n ^ 2) = 1 := by
  by_contra H
  obtain ⟨p, hp, hp1, hp2⟩ := Nat.Prime.not_coprime_iff_dvd.mp H
  rw [← Int.coe_nat_dvd_left] at hp1 hp2
  have h2m : (p : ℤ) ∣ 2 * m ^ 2 := by
    convert dvd_add hp2 hp1 using 1
    ring
  have h2n : (p : ℤ) ∣ 2 * n ^ 2 := by
    convert dvd_sub hp2 hp1 using 1
    ring
  have hmc : p = 2 ∨ p ∣ Int.natAbs m := prime_two_or_dvd_of_dvd_two_mul_pow_self_two hp h2m
  have hnc : p = 2 ∨ p ∣ Int.natAbs n := prime_two_or_dvd_of_dvd_two_mul_pow_self_two hp h2n
  by_cases h2 : p = 2
  -- Porting note: norm_num is not enough to close h3
  · have h3 : (m ^ 2 + n ^ 2) % 2 = 1 := by field_simp [sq, Int.add_emod, Int.mul_emod, hm, hn]
    have h4 : (m ^ 2 + n ^ 2) % 2 = 0 := by
      apply Int.emod_eq_zero_of_dvd
      rwa [h2] at hp2
    rw [h4] at h3
    exact zero_ne_one h3
  · apply hp.not_dvd_one
    rw [← h]
    exact Nat.dvd_gcd (Or.resolve_left hmc h2) (Or.resolve_left hnc h2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant01f8bb269b87848419b489cb1ac31c70cdbc30d63b3796e614c6ca6f6dd67d8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Variant01f8bb269b87848419b489cb1ac31c70cdbc30d63b3796e614c6ca6f6dd67d8f.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42638fd92f011c676c1fbbaa562c389d8592378c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
