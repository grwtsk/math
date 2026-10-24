# Ideal.eq_span_singleton_of_mem_of_notMem_sq_of_notMem_prime_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8a4a4ec-e9ce-d641-16b5-2ae52ff78bfa",
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
  "slug": "ideal-eq-span-singleton-of-mem-of-notmem-sq-of-notmem-prime-ne--521ba95a439a9d62af0554c9",
  "source": {
    "blob": "fff911466722f4890a4079e480f5388df6735adb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 44,
    "path": "GRWTSK/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:521ba95a439a9d62af0554c9cd991cf43a92f7a1a2ecbe63aae050a30d11d707",
  "verification": {
    "reference": "docs/verification/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8a4a4ec-e9ce-d641-16b5-2ae52ff78bfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.eq_span_singleton_of_mem_of_notMem_sq_of_notMem_prime_ne {P : Ideal R}
    (hP : P.IsPrime) [IsDedekindDomain R] {x : R} (x_mem : x ∈ P) (hxP2 : x ∉ P ^ 2)
    (hxQ : ∀ Q : Ideal R, IsPrime Q → Q ≠ P → x ∉ Q) : P = Ideal.span {x} := by
  letI := Classical.decEq (Ideal R)
  have hx0 : x ≠ 0 := by
    rintro rfl
    exact hxP2 (zero_mem _)
  by_cases hP0 : P = ⊥
  · subst hP0
    rwa [eq_comm, span_singleton_eq_bot, ← mem_bot]
  have hspan0 : span ({x} : Set R) ≠ ⊥ := mt Ideal.span_singleton_eq_bot.mp hx0
  have span_le := (Ideal.span_singleton_le_iff_mem _).mpr x_mem
  refine
    associated_iff_eq.mp
      ((associated_iff_normalizedFactors_eq_normalizedFactors hP0 hspan0).mpr
        (le_antisymm ((dvd_iff_normalizedFactors_le_normalizedFactors hP0 hspan0).mp ?_) ?_))
  · rwa [Ideal.dvd_iff_le, Ideal.span_singleton_le_iff_mem]
  simp only [normalizedFactors_irreducible (Ideal.prime_of_isPrime hP0 hP).irreducible,
    normalize_eq, Multiset.le_iff_count, Multiset.count_singleton]
  intro Q
  split_ifs with hQ
  · subst hQ
    refine (Ideal.count_normalizedFactors_eq ?_ ?_).le <;>
        simp only [Ideal.span_singleton_le_iff_mem, pow_one] <;>
      assumption
  by_cases hQp : IsPrime Q
  · refine (Ideal.count_normalizedFactors_eq ?_ ?_).le <;>
      -- Porting note: included `zero_add` in the simp arguments
      simp only [Ideal.span_singleton_le_iff_mem, zero_add, pow_one, pow_zero, one_eq_top,
                 Submodule.mem_top]
    exact hxQ _ hQp hQ
  · exact
      (Multiset.count_eq_zero.mpr fun hQi =>
          hQp
            (isPrime_of_prime
              (irreducible_iff_prime.mp (irreducible_of_normalized_factor _ hQi)))).le

@[deprecated (since := "2025-05-23")]
alias Ideal.eq_span_singleton_of_mem_of_not_mem_sq_of_not_mem_prime_ne :=
  Ideal.eq_span_singleton_of_mem_of_notMem_sq_of_notMem_prime_ne

-- Porting note: replaced three implicit coercions of `I` with explicit `(I : Submodule R A)`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fff911466722f4890a4079e480f5388df6735adb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
