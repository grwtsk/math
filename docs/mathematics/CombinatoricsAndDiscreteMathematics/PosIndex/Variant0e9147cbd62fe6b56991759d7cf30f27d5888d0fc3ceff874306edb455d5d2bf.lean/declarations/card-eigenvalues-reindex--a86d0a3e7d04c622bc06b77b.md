# card_eigenvalues_reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0617aeb0c424d43a4e449b819bef4a18e6030083",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:309aba4b-6969-ffd4-8ccf-59b7325aa1dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec1e4eff-6485-3b9f-3911-6be4757c79e9",
  "kind": "lemma",
  "lexical_name": "card_eigenvalues_reindex",
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
  "slug": "card-eigenvalues-reindex--a86d0a3e7d04c622bc06b77b",
  "source": {
    "blob": "0617aeb0c424d43a4e449b819bef4a18e6030083",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a86d0a3e7d04c622bc06b77b2db985635afcce26d5a12fc5b9bac67cd8c3f01e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec1e4eff-6485-3b9f-3911-6be4757c79e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_eigenvalues_reindex (p : ℝ → Prop) [DecidablePred p] :
    #{i | p (hA.eigenvalues i)} = #{k | p (hA.eigenvalues₀ k)} := by
  apply Finset.card_nbij' (eigEquiv (n := n)).symm (eigEquiv (n := n))
  · intro i hi
    simp only [Finset.mem_coe, mem_filter, mem_univ, true_and] at hi ⊢
    rwa [← eigenvalues_eigEquiv hA, Equiv.apply_symm_apply]
  · intro k hk
    simp only [Finset.mem_coe, mem_filter, mem_univ, true_and] at hk ⊢
    rwa [eigenvalues_eigEquiv hA]
  · exact fun i _ => Equiv.apply_symm_apply _ i
  · exact fun k _ => Equiv.symm_apply_apply _ k

end Reindex

open Unitary in
/-- For a Hermitian matrix, `‖A‖_F² = ∑ᵢ λᵢ²` (sum of squared eigenvalues). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PosIndex/Variant0e9147cbd62fe6b56991759d7cf30f27d5888d0fc3ceff874306edb455d5d2bf.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0617aeb0c424d43a4e449b819bef4a18e6030083` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
