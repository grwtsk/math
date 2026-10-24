# dvd_sub_pow_of_dvd_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05bf57ab-0f57-5ee0-05ed-aad5df47a836",
  "kind": "theorem",
  "lexical_name": "dvd_sub_pow_of_dvd_sub",
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
  "slug": "dvd-sub-pow-of-dvd-sub--b0483f6019b7007ca0ba4c13",
  "source": {
    "blob": "4cfc6a17432c70e703afa858edd497de2f9f362a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 37,
    "path": "GRWTSK/Algebra/Basic/Variant1f19d53786e48e2a0f4e3eb7b966ce7ff44e22d2880f9ea6e6fafea0d5551c34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0483f6019b7007ca0ba4c137bea8e84434a4c439cbfcc358f306fcaf735f10e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant1f19d53786e48e2a0f4e3eb7b966ce7ff44e22d2880f9ea6e6fafea0d5551c34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05bf57ab-0f57-5ee0-05ed-aad5df47a836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_sub_pow_of_dvd_sub {R : Type*} [CommRing R] {p : ℕ} {a b : R} (h : (p : R) ∣ a - b)
    (k : ℕ) : (p ^ (k + 1) : R) ∣ a ^ p ^ k - b ^ p ^ k := by
  induction' k with k ih
  · rwa [pow_one, pow_zero, pow_one, pow_one]
  rw [pow_succ' p k, pow_mul, pow_mul, ← geom_sum₂_mul, pow_succ, Nat.cast_mul]
  refine' mul_dvd_mul _ ih
  let f : R →+* R ⧸ span {(p : R)} := mk (span {(p : R)})
  have hf : ∀ r : R, (p : R) ∣ r ↔ f r = 0 := fun r ↦ by rw [eq_zero_iff_mem, mem_span_singleton]
  rw [hf, map_sub, sub_eq_zero] at h
  rw [hf, RingHom.map_geom_sum₂, map_pow, map_pow, h, geom_sum₂_self, mul_eq_zero_of_left]
  rw [← map_natCast f, eq_zero_iff_mem, mem_span_singleton]
#align dvd_sub_pow_of_dvd_sub dvd_sub_pow_of_dvd_sub

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant1f19d53786e48e2a0f4e3eb7b966ce7ff44e22d2880f9ea6e6fafea0d5551c34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant1f19d53786e48e2a0f4e3eb7b966ce7ff44e22d2880f9ea6e6fafea0d5551c34.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cfc6a17432c70e703afa858edd497de2f9f362a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
