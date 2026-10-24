# hasTrivialRadical_and_of_isIrreducible_of_isFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44232e325f8438f5be17487343e85ed9e3f41161",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f2cc9f6ade0fa72c53fa9de9c2dfbb9b8a967aa53ac3141c5da85c0ecbb2f358.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8387b804-362d-e073-2ef8-2f67faf5a57d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30951442-6385-e8ab-6321-38a543f695e9",
  "kind": "theorem",
  "lexical_name": "hasTrivialRadical_and_of_isIrreducible_of_isFaithful",
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
  "slug": "hastrivialradical-and-of-isirreducible-of-isfaithful--ba26d6e2ebd59ecf88140a3a",
  "source": {
    "blob": "44232e325f8438f5be17487343e85ed9e3f41161",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 67,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantf2cc9f6ade0fa72c53fa9de9c2dfbb9b8a967aa53ac3141c5da85c0ecbb2f358.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba26d6e2ebd59ecf88140a3a373886cdf43127a77a634fa34c34696d36a4b537",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variantf2cc9f6ade0fa72c53fa9de9c2dfbb9b8a967aa53ac3141c5da85c0ecbb2f358.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30951442-6385-e8ab-6321-38a543f695e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasTrivialRadical_and_of_isIrreducible_of_isFaithful
    (h : ∀ x, LinearMap.trace k _ (toEnd k L M x) = 0) : HasTrivialRadical k L := by
  have : finrank k M ≠ 0 := ((finrank_pos_iff).mpr <| nontrivial_of_isIrreducible k L M).ne'
  obtain ⟨_i, h'⟩ := hasCentralRadical_and_of_isIrreducible_of_isFaithful k L M
  rw [hasTrivialRadical_iff, (hasCentralRadical_iff k L).mp inferInstance, LieSubmodule.eq_bot_iff]
  intro x hx
  specialize h x
  rw [h' x] at hx
  obtain ⟨t, ht⟩ := Submodule.mem_span_singleton.mp hx
  suffices t = 0 by simp [← toEnd_eq_zero_iff (R := k) (L := L) (M := M), ← ht, this]
  simpa [this, ← ht] using h

end LieAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variantf2cc9f6ade0fa72c53fa9de9c2dfbb9b8a967aa53ac3141c5da85c0ecbb2f358.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variantf2cc9f6ade0fa72c53fa9de9c2dfbb9b8a967aa53ac3141c5da85c0ecbb2f358.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44232e325f8438f5be17487343e85ed9e3f41161` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
