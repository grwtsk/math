# prime_log_sum_pos_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62e3b518-3276-8de4-e9e9-3c49390f2e84",
  "kind": "theorem",
  "lexical_name": "prime_log_sum_pos_iff",
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
  "slug": "prime-log-sum-pos-iff--88e4638a9e22d774d993cdf2",
  "source": {
    "blob": "91d560478f09103eeb1a7ec76767c8ce407727ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 32,
    "path": "GRWTSK/NumberTheory/Chebyshev/PrimeIntervalWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88e4638a9e22d774d993cdf21052b0805b297a8eed637a17141f421ae312425b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/PrimeIntervalWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62e3b518-3276-8de4-e9e9-3c49390f2e84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_log_sum_pos_iff (s : Finset ℕ) :
    0 < (∑ p ∈ s with Nat.Prime p, Real.log (p : ℝ)) ↔
      ∃ p ∈ s, Nat.Prime p := by
  classical
  have hlog : ∀ p ∈ s.filter Nat.Prime, 0 < Real.log (p : ℝ) := by
    intro p hp
    apply Real.log_pos
    exact_mod_cast (Finset.mem_filter.mp hp).2.one_lt
  rw [Finset.sum_pos_iff_of_nonneg (fun p hp => (hlog p hp).le)]
  constructor
  · rintro ⟨p, hp, _⟩
    exact ⟨p, (Finset.mem_filter.mp hp).1, (Finset.mem_filter.mp hp).2⟩
  · rintro ⟨p, hp, hprime⟩
    have hmem : p ∈ s.filter Nat.Prime := Finset.mem_filter.mpr ⟨hp, hprime⟩
    exact ⟨p, hmem, hlog p hmem⟩

/-- Exact closed-right differencing of the existing cumulative theta function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/PrimeIntervalWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/PrimeIntervalWitness.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91d560478f09103eeb1a7ec76767c8ce407727ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
