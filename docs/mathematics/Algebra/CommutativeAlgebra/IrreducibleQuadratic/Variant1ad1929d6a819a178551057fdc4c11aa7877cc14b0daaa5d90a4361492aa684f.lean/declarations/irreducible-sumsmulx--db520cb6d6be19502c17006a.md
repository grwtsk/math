# irreducible_sumSMulX

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "743a164c8b8c6bad9b9141f290845d6229486268",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1ad1929d6a819a178551057fdc4c11aa7877cc14b0daaa5d90a4361492aa684f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19a7bb14-aeff-fb5f-0e23-7b1d7dc5e438",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebcba455-32fa-2867-498f-afabe2dae3e8",
  "kind": "theorem",
  "lexical_name": "irreducible_sumSMulX",
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
  "slug": "irreducible-sumsmulx--db520cb6d6be19502c17006a",
  "source": {
    "blob": "743a164c8b8c6bad9b9141f290845d6229486268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 173,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant1ad1929d6a819a178551057fdc4c11aa7877cc14b0daaa5d90a4361492aa684f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db520cb6d6be19502c17006a59296984d09199031fb600730460f058fce75eb7",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant1ad1929d6a819a178551057fdc4c11aa7877cc14b0daaa5d90a4361492aa684f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebcba455-32fa-2867-498f-afabe2dae3e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irreducible_sumSMulX [IsDomain R]
    (hc_nonempty : c.support.Nonempty)
    (hc_gcd : ∀ r, (∀ i, r ∣ c i) → IsUnit r) :
    Irreducible (sumSMulX c) := by
  apply irreducible_of_totalDegree_eq_one
  · apply le_antisymm
    · simp only [sumSMulX, Finsupp.linearCombination_apply, Finsupp.sum]
      apply totalDegree_finsetSum_le
      intros
      apply le_trans (totalDegree_smul_le ..)
      simp
    · rw [← not_lt, Nat.lt_one_iff, totalDegree_eq_zero_iff]
      intro h
      obtain ⟨i, hi⟩ := hc_nonempty
      simp only [Finsupp.mem_support_iff] at hi
      specialize h (Finsupp.single i 1) (by
        rwa [mem_support_iff, coeff_sumSMulX]) i
      simp only [Finsupp.single_eq_same, one_ne_zero] at h
  · intro r hr
    apply hc_gcd
    intro i
    simpa [coeff_sumSMulX] using hr (Finsupp.single i 1)

/-- The quadratic polynomial $$\sum_i c_i X_i Y_i$$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant1ad1929d6a819a178551057fdc4c11aa7877cc14b0daaa5d90a4361492aa684f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IrreducibleQuadratic/Variant1ad1929d6a819a178551057fdc4c11aa7877cc14b0daaa5d90a4361492aa684f.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `743a164c8b8c6bad9b9141f290845d6229486268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
