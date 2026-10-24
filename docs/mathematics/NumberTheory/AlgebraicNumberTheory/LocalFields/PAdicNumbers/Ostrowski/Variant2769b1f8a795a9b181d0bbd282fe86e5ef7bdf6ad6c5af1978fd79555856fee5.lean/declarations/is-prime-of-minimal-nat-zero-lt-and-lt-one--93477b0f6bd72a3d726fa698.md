# is_prime_of_minimal_nat_zero_lt_and_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35cc152a-e058-b607-8a1e-13c8c6fda296",
  "kind": "lemma",
  "lexical_name": "is_prime_of_minimal_nat_zero_lt_and_lt_one",
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
  "slug": "is-prime-of-minimal-nat-zero-lt-and-lt-one--93477b0f6bd72a3d726fa698",
  "source": {
    "blob": "f3edb13cdff78abe1e73b357aee38e8342727f14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 162,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant2769b1f8a795a9b181d0bbd282fe86e5ef7bdf6ad6c5af1978fd79555856fee5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93477b0f6bd72a3d726fa698d88eb014691023df41a7294d80e5133ca13b1610",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant2769b1f8a795a9b181d0bbd282fe86e5ef7bdf6ad6c5af1978fd79555856fee5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35cc152a-e058-b607-8a1e-13c8c6fda296`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma is_prime_of_minimal_nat_zero_lt_and_lt_one : p.Prime := by
  have hp2 : 2 ≤ p := by
    by_contra! hp
    interval_cases p <;> grind
  rw [Nat.prime_iff_not_exists_mul_eq]
  refine ⟨hp2, ?_⟩
  rintro ⟨a, b, ha, hb, rfl⟩
  obtain ⟨ha₀, hb₀⟩ := mul_ne_zero_iff.mp (by omega : a * b ≠ 0)
  have h {n : ℕ} (hn₀ : n ≠ 0) (hn : n < a * b) : 1 ≤ f n := by
    by_contra! hn₁
    exact (not_le_of_gt hn) <| hmin n ⟨map_pos_of_ne_zero f (mod_cast hn₀), hn₁⟩
  rw [Nat.cast_mul, map_mul] at hp1
  exact not_le_of_gt hp1 <| one_le_mul_of_one_le_of_one_le (h ha₀ ha) (h hb₀ hb)

-- ## Step 3: if p does not divide m, then f m = 1

open Real

include hp0 hp1 hmin bdd in
/-- A natural number not divisible by `p` has absolute value 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant2769b1f8a795a9b181d0bbd282fe86e5ef7bdf6ad6c5af1978fd79555856fee5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant2769b1f8a795a9b181d0bbd282fe86e5ef7bdf6ad6c5af1978fd79555856fee5.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3edb13cdff78abe1e73b357aee38e8342727f14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
