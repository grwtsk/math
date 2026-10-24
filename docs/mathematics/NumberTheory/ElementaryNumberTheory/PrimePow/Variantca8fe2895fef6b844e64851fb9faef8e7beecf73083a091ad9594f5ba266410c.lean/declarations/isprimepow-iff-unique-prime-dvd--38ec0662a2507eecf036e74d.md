# isPrimePow_iff_unique_prime_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:755c3e0d-16de-e013-2fbf-c3ad37035d19",
  "kind": "theorem",
  "lexical_name": "isPrimePow_iff_unique_prime_dvd",
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
  "slug": "isprimepow-iff-unique-prime-dvd--38ec0662a2507eecf036e74d",
  "source": {
    "blob": "fc3bf8c50a5ad51035deedeb8981cff89a46245d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 96,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38ec0662a2507eecf036e74d0261994cd11d53bef989f94b3f8f6c6e4877cd36",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:755c3e0d-16de-e013-2fbf-c3ad37035d19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrimePow_iff_unique_prime_dvd {n : ℕ} : IsPrimePow n ↔ ∃! p : ℕ, p.Prime ∧ p ∣ n := by
  rw [isPrimePow_nat_iff]
  constructor
  · rintro ⟨p, k, hp, hk, rfl⟩
    refine ⟨p, ⟨hp, dvd_pow_self _ hk.ne'⟩, ?_⟩
    rintro q ⟨hq, hq'⟩
    exact (Nat.prime_dvd_prime_iff_eq hq hp).1 (hq.dvd_of_dvd_pow hq')
  rintro ⟨p, ⟨hp, hn⟩, hq⟩
  rcases eq_or_ne n 0 with (rfl | hn₀)
  · cases (hq 2 ⟨Nat.prime_two, dvd_zero 2⟩).trans (hq 3 ⟨Nat.prime_three, dvd_zero 3⟩).symm
  refine ⟨p, n.factorization p, hp, hp.factorization_pos_of_dvd hn₀ hn, ?_⟩
  simp only [and_imp] at hq
  apply Nat.dvd_antisymm (Nat.ordProj_dvd _ _)
  -- We need to show n ∣ p ^ n.factorization p
  apply Nat.dvd_of_primeFactorsList_subperm hn₀
  rw [hp.primeFactorsList_pow, List.subperm_ext_iff]
  intro q hq'
  rw [Nat.mem_primeFactorsList hn₀] at hq'
  cases hq _ hq'.1 hq'.2
  simp [Nat.primeFactorsList_count_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variantca8fe2895fef6b844e64851fb9faef8e7beecf73083a091ad9594f5ba266410c.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc3bf8c50a5ad51035deedeb8981cff89a46245d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
