# prime_pow_coprime_prod_of_coprime_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "505c4dabde96672b72c1f24d893d197e1f308e0d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4c890f3858d7aa0abeb66bdf665137e2b766207e32e95927cf37c72efbc7b35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6310a77-7ce7-bc58-ce09-7f74ad64fce9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80b8597f-d555-148b-e37c-3e22e41953f1",
  "kind": "theorem",
  "lexical_name": "prime_pow_coprime_prod_of_coprime_insert",
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
  "slug": "prime-pow-coprime-prod-of-coprime-insert--10a06c66a6146b2472cfbf3b",
  "source": {
    "blob": "505c4dabde96672b72c1f24d893d197e1f308e0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 33,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Multiplicative/Variante4c890f3858d7aa0abeb66bdf665137e2b766207e32e95927cf37c72efbc7b35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10a06c66a6146b2472cfbf3bd1069bd79841d605a9b14664413234818f6081d0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Multiplicative/Variante4c890f3858d7aa0abeb66bdf665137e2b766207e32e95927cf37c72efbc7b35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80b8597f-d555-148b-e37c-3e22e41953f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_pow_coprime_prod_of_coprime_insert [DecidableEq α] {s : Finset α} (i : α → ℕ) (p : α)
    (hps : p ∉ s) (is_prime : ∀ q ∈ insert p s, Prime q)
    (is_coprime : ∀ᵉ (q ∈ insert p s) (q' ∈ insert p s), q ∣ q' → q = q') :
    IsRelPrime (p ^ i p) (∏ p' ∈ s, p' ^ i p') := by
  have hp := is_prime _ (Finset.mem_insert_self _ _)
  refine (isRelPrime_iff_no_prime_factors <| pow_ne_zero _ hp.ne_zero).mpr ?_
  intro d hdp hdprod hd
  apply hps
  replace hdp := hd.dvd_of_dvd_pow hdp
  obtain ⟨q, q_mem', hdq⟩ := hd.exists_mem_multiset_dvd hdprod
  obtain ⟨q, q_mem, rfl⟩ := Multiset.mem_map.mp q_mem'
  replace hdq := hd.dvd_of_dvd_pow hdq
  have : p ∣ q := dvd_trans (hd.irreducible.dvd_symm hp.irreducible hdp) hdq
  convert! q_mem using 0
  rw [Finset.mem_val,
    is_coprime _ (Finset.mem_insert_self p s) _ (Finset.mem_insert_of_mem q_mem) this]

/-- If `P` holds for units and powers of primes,
and `P x ∧ P y` for coprime `x, y` implies `P (x * y)`,
then `P` holds on a product of powers of distinct primes. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Multiplicative/Variante4c890f3858d7aa0abeb66bdf665137e2b766207e32e95927cf37c72efbc7b35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Multiplicative/Variante4c890f3858d7aa0abeb66bdf665137e2b766207e32e95927cf37c72efbc7b35.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `505c4dabde96672b72c1f24d893d197e1f308e0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
