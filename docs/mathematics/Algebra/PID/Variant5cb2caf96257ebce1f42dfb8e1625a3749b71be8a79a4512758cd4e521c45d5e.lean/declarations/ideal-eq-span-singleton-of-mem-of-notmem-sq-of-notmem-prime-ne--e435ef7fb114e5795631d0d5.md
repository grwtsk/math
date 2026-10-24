# Ideal.eq_span_singleton_of_mem_of_notMem_sq_of_notMem_prime_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c00844e-f985-be5b-6fa8-4bd5d4c39874",
  "kind": "theorem",
  "lexical_name": "Ideal.eq_span_singleton_of_mem_of_notMem_sq_of_notMem_prime_ne",
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
  "slug": "ideal-eq-span-singleton-of-mem-of-notmem-sq-of-notmem-prime-ne--e435ef7fb114e5795631d0d5",
  "source": {
    "blob": "08f39445e525f0bdb24ee17909794b769e3784b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 49,
    "path": "GRWTSK/Algebra/PID/Variant5cb2caf96257ebce1f42dfb8e1625a3749b71be8a79a4512758cd4e521c45d5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e435ef7fb114e5795631d0d538bd9c73dc386cf58f3134dd0e8b0d9eedca1d21",
  "verification": {
    "reference": "docs/verification/Algebra/PID/Variant5cb2caf96257ebce1f42dfb8e1625a3749b71be8a79a4512758cd4e521c45d5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c00844e-f985-be5b-6fa8-4bd5d4c39874`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.eq_span_singleton_of_mem_of_notMem_sq_of_notMem_prime_ne {P : Ideal R}
    (hP : P.IsPrime) [IsDedekindDomain R] {x : R} (x_mem : x ∈ P) (hxP2 : x ∉ P ^ 2)
    (hxQ : ∀ Q : Ideal R, IsPrime Q → Q ≠ P → x ∉ Q) : P = Ideal.span {x} := by
  by_cases hP0 : P = ⊥
  · subst hP0
    rwa [eq_comm, span_singleton_eq_bot, ← mem_bot]
  have hspan0 : span {x} ≠ ⊥ := mt Ideal.span_singleton_eq_bot.mp (hxP2 <| · ▸ zero_mem _)
  rw [← associated_iff_eq, associated_iff_normalizedFactors_eq_normalizedFactors hP0 hspan0]
  refine Multiset.ext' fun Q ↦ ?_
  rw [normalizedFactors_irreducible (Ideal.prime_of_isPrime hP0 hP).irreducible, normalize_eq,
    Multiset.count_singleton]
  symm
  split_ifs with hQ
  · subst hQ
    apply Ideal.count_normalizedFactors_eq <;> simpa
  by_cases hQp : IsPrime Q
  · apply Ideal.count_normalizedFactors_eq <;> simp [hxQ _ hQp hQ]
  exact Multiset.count_eq_zero.mpr fun hQi ↦
    hQp <| isPrime_of_prime <| irreducible_iff_prime.mp <| irreducible_of_normalized_factor _ hQi

-- Porting note: replaced three implicit coercions of `I` with explicit `(I : Submodule R A)`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PID/Variant5cb2caf96257ebce1f42dfb8e1625a3749b71be8a79a4512758cd4e521c45d5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PID/Variant5cb2caf96257ebce1f42dfb8e1625a3749b71be8a79a4512758cd4e521c45d5e.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08f39445e525f0bdb24ee17909794b769e3784b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
