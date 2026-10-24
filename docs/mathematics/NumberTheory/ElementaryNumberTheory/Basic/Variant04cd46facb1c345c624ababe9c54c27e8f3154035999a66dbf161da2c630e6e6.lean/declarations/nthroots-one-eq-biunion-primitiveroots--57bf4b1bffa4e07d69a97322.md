# nthRoots_one_eq_biUnion_primitiveRoots'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee7d346b387e87d7ad658156243fed6149b1957e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 899,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5c5884e-d5c7-d24e-bec2-e107c20d116e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a992057d-dae1-c66e-d1ec-f3a6b26927cb",
  "kind": "theorem",
  "lexical_name": "nthRoots_one_eq_biUnion_primitiveRoots'",
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
  "slug": "nthroots-one-eq-biunion-primitiveroots--57bf4b1bffa4e07d69a97322",
  "source": {
    "blob": "ee7d346b387e87d7ad658156243fed6149b1957e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 927,
    "line": 899,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57bf4b1bffa4e07d69a97322d29291a04699dd1d3c0a0fbd6738e5c5778c1998",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a992057d-dae1-c66e-d1ec-f3a6b26927cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 899–927.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nthRoots_one_eq_biUnion_primitiveRoots' {ζ : R} {n : ℕ+} (h : IsPrimitiveRoot ζ n) :
    nthRootsFinset n R = (Nat.divisors ↑n).biUnion fun i => primitiveRoots i R := by
  symm
  apply Finset.eq_of_subset_of_card_le
  · intro x
    simp only [nthRootsFinset, ← Multiset.toFinset_eq (nthRoots_nodup h), exists_prop,
      Finset.mem_biUnion, Finset.mem_filter, Finset.mem_range, mem_nthRoots, Finset.mem_mk,
      Nat.mem_divisors, and_true_iff, Ne.def, PNat.ne_zero, PNat.pos, not_false_iff]
    rintro ⟨a, ⟨d, hd⟩, ha⟩
    have hazero : 0 < a := by
      contrapose! hd with ha0
      simp_all only [nonpos_iff_eq_zero, zero_mul]
      exact n.ne_zero
    rw [mem_primitiveRoots hazero] at ha
    rw [hd, pow_mul, ha.pow_eq_one, one_pow]
  · apply le_of_eq
    rw [h.card_nthRootsFinset, Finset.card_biUnion]
    · nth_rw 1 [← Nat.sum_totient n]
      refine' sum_congr rfl _
      simp only [Nat.mem_divisors]
      rintro k ⟨⟨d, hd⟩, -⟩
      rw [mul_comm] at hd
      rw [(h.pow n.pos hd).card_primitiveRoots]
    · intro i _ j _ hdiff
      exact disjoint hdiff
#align is_primitive_root.nth_roots_one_eq_bUnion_primitive_roots' IsPrimitiveRoot.nthRoots_one_eq_biUnion_primitiveRoots'

/-- `nthRoots n` as a `Finset` is equal to the union of `primitiveRoots i R` for `i ∣ n`
if there is a primitive root of unity in `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant04cd46facb1c345c624ababe9c54c27e8f3154035999a66dbf161da2c630e6e6.lean#L899).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee7d346b387e87d7ad658156243fed6149b1957e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
