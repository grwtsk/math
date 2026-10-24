# isPrimePow_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "466ce1cf2d323594886f58fcdb148923be5add4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:854dfc8f-9e4f-8c7f-b410-e23843d73b24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7abc480-3ccc-f1ef-27eb-b8ae58be8126",
  "kind": "theorem",
  "lexical_name": "isPrimePow_iff",
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
  "slug": "isprimepow-iff--9e207a917e4b9a4bde8e98f5",
  "source": {
    "blob": "466ce1cf2d323594886f58fcdb148923be5add4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 132,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e207a917e4b9a4bde8e98f5156f98384f370fd308faa0e42281e5bdb67dacd5",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7abc480-3ccc-f1ef-27eb-b8ae58be8126`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrimePow_iff {a : Cardinal} : IsPrimePow a ↔ ℵ₀ ≤ a ∨ ∃ n : ℕ, a = n ∧ IsPrimePow n := by
  by_cases h : ℵ₀ ≤ a
  · simp [h, (prime_of_aleph0_le h).isPrimePow]
  simp only [h, Nat.cast_inj, exists_eq_left', false_or, isPrimePow_nat_iff]
  lift a to ℕ using not_le.mp h
  rw [isPrimePow_def]
  refine
    ⟨?_, fun ⟨n, han, p, k, hp, hk, h⟩ =>
          ⟨p, k, nat_is_prime_iff.2 hp, hk, by rw [han]; exact mod_cast h⟩⟩
  rintro ⟨p, k, hp, hk, hpk⟩
  have key : p ^ (1 : Cardinal) ≤ ↑a := by
    rw [← hpk]; apply power_le_power_left hp.ne_zero; exact mod_cast hk
  rw [power_one] at key
  lift p to ℕ using key.trans_lt (nat_lt_aleph0 a)
  exact ⟨a, rfl, p, k, nat_is_prime_iff.mp hp, hk, mod_cast hpk⟩

end Cardinal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Divisibility/Variant34a4c1d7adf292a069ba9a6408df62cc344d4a6f8d51bfcef7c8bcfd559bc8f4.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `466ce1cf2d323594886f58fcdb148923be5add4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
