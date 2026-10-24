# productFiberSum_eq_sum_positive_pairs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3fadeb44f84271d94dbefc61af6a2c3703452b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab79b76c-1c7b-3441-911b-d964d60ad6a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09f3d061-b826-a78f-6b4c-8eb27b8c899b",
  "kind": "theorem",
  "lexical_name": "productFiberSum_eq_sum_positive_pairs",
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
  "slug": "productfibersum-eq-sum-positive-pairs--d91bd6953d309bc944b6b943",
  "source": {
    "blob": "a3fadeb44f84271d94dbefc61af6a2c3703452b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d91bd6953d309bc944b6b9430cec25638c1f1b78f5c9fde13ea0bc9b0232079a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09f3d061-b826-a78f-6b4c-8eb27b8c899b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem productFiberSum_eq_sum_positive_pairs
    (F : Nat → Nat → Complex)
    (n : Nat) :
    productFiberSum F n =
      ∑ x : PositiveFactorPair n, F x.left x.right := by
  classical
  let e : PositiveFactorPair n ≃ {d // d ∈ Nat.divisors n} :=
    { toFun := fun x => ⟨x.d, x.hdvd⟩
      invFun := fun x => ⟨x.1, x.2⟩
      left_inv := by
        intro x
        cases x
        rfl
      right_inv := by
        intro x
        cases x
        rfl }
  have hsum :
      (∑ x : PositiveFactorPair n, F x.left x.right) =
        ∑ x : {d // d ∈ Nat.divisors n}, F x.1 (n / x.1) := by
    exact Fintype.sum_equiv e _ _ (by intro x; rfl)
  rw [hsum]
  simp [productFiberSum]

end AnalyticNumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PositivePairReindexing/Variant31a912f7c67e0d3f8b21dcf2dea57910f20275a81c5471ddc9ab1a112e5ab9ea.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3fadeb44f84271d94dbefc61af6a2c3703452b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
