# exists_right_complement'_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb373081dc6bc8cc74c8ff72f3cfb74ca36d82c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 291,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:502cac7e-1d04-bc1d-ec8e-6ec76df9645f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:031d79a3-cdfe-27fb-ac28-234779295207",
  "kind": "theorem",
  "lexical_name": "exists_right_complement'_of_coprime",
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
  "slug": "exists-right-complement-of-coprime--a217f80cb83fc03800bf6b58",
  "source": {
    "blob": "cb373081dc6bc8cc74c8ff72f3cfb74ca36d82c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 291,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a217f80cb83fc03800bf6b58d670faf6252c1fee40e49bd11d53b9d7f8b92a39",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:031d79a3-cdfe-27fb-ac28-234779295207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_right_complement'_of_coprime {N : Subgroup G} [N.Normal]
    (hN : Nat.coprime (Nat.card N) N.index) : ∃ H : Subgroup G, IsComplement' N H := by
  by_cases hN1 : Nat.card N = 0
  · rw [hN1, Nat.coprime_zero_left, index_eq_one] at hN
    rw [hN]
    exact ⟨⊥, isComplement'_top_bot⟩
  by_cases hN2 : N.index = 0
  · rw [hN2, Nat.coprime_zero_right] at hN
    haveI := (Cardinal.toNat_eq_one_iff_unique.mp hN).1
    rw [N.eq_bot_of_subsingleton]
    exact ⟨⊤, isComplement'_bot_top⟩
  have hN3 : Nat.card G ≠ 0 := by
    rw [← N.card_mul_index]
    exact mul_ne_zero hN1 hN2
  haveI := (Cardinal.lt_aleph0_iff_fintype.mp
    (lt_of_not_ge (mt Cardinal.toNat_apply_of_aleph0_le hN3))).some
  apply exists_right_complement'_of_coprime_of_fintype
  rwa [←Nat.card_eq_fintype_card]
#align subgroup.exists_right_complement'_of_coprime Subgroup.exists_right_complement'_of_coprime

/-- **Schur-Zassenhaus** for normal subgroups:
  If `H : Subgroup G` is normal, and has order coprime to its index, then there exists a
  subgroup `K` which is a (left) complement of `H`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb373081dc6bc8cc74c8ff72f3cfb74ca36d82c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
