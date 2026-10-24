# adjoin_roots_cyclotomic_eq_adjoin_nth_roots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c04b79552195d58566ee5f066c8dabc47ce044c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83f14c86-63c1-0e28-d350-d1446f74068f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f584e4e-adc0-5572-c94b-fe83da3d28de",
  "kind": "theorem",
  "lexical_name": "adjoin_roots_cyclotomic_eq_adjoin_nth_roots",
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
  "slug": "adjoin-roots-cyclotomic-eq-adjoin-nth-roots--165a9d5c6c3bb6cb8697ae85",
  "source": {
    "blob": "3c04b79552195d58566ee5f066c8dabc47ce044c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 348,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:165a9d5c6c3bb6cb8697ae85071c5af5bfe19c24384ca71b04811ff39e1df9b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f584e4e-adc0-5572-c94b-fe83da3d28de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_roots_cyclotomic_eq_adjoin_nth_roots [IsDomain B] {ζ : B} {n : ℕ+}
    (hζ : IsPrimitiveRoot ζ n) :
    adjoin A ((cyclotomic n A).rootSet B) =
      adjoin A {b : B | ∃ a : ℕ+, a ∈ ({n} : Set ℕ+) ∧ b ^ (a : ℕ) = 1} := by
  simp only [mem_singleton_iff, exists_eq_left, map_cyclotomic]
  refine le_antisymm (adjoin_mono fun x hx => ?_) (adjoin_le fun x hx => ?_)
  · rw [mem_rootSet'] at hx
    simp only [mem_singleton_iff, exists_eq_left, mem_setOf_eq]
    rw [isRoot_of_unity_iff n.pos]
    refine ⟨n, Nat.mem_divisors_self n n.ne_zero, ?_⟩
    rw [IsRoot.def, ← map_cyclotomic n (algebraMap A B), eval_map, ← aeval_def]
    exact hx.2
  · simp only [mem_singleton_iff, exists_eq_left, mem_setOf_eq] at hx
    obtain ⟨i, _, rfl⟩ := hζ.eq_pow_of_pow_eq_one hx
    refine SetLike.mem_coe.2 (Subalgebra.pow_mem _ (subset_adjoin ?_) _)
    rw [mem_rootSet', map_cyclotomic, aeval_def, ← eval_map, map_cyclotomic, ← IsRoot]
    exact ⟨cyclotomic_ne_zero n B, hζ.isRoot_cyclotomic n.pos⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant01d54e374c1c7624009f018a75757803e43411b0c03153b0a073e67c3d7ac84f.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c04b79552195d58566ee5f066c8dabc47ce044c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
