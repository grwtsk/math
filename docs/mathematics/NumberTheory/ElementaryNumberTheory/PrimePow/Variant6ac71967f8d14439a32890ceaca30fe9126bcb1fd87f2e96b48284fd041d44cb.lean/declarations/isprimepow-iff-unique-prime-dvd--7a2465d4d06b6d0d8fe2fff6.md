# isPrimePow_iff_unique_prime_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a12b1363a6e2b7473a1a6ca7ff0b1003706dd570",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f473ca69-e80c-5b82-eef1-f4c2525cdee5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3f3812b-c909-b347-9ad5-32a3d8552254",
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
  "slug": "isprimepow-iff-unique-prime-dvd--7a2465d4d06b6d0d8fe2fff6",
  "source": {
    "blob": "a12b1363a6e2b7473a1a6ca7ff0b1003706dd570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 88,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a2465d4d06b6d0d8fe2fff6a0c4f2fbd158976b14b4633a71b5007e096b2df0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3f3812b-c909-b347-9ad5-32a3d8552254`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–108.

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

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant6ac71967f8d14439a32890ceaca30fe9126bcb1fd87f2e96b48284fd041d44cb.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a12b1363a6e2b7473a1a6ca7ff0b1003706dd570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
