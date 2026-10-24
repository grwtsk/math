# chainCoeff_chainTopIdx_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59ee2edeade04c28abb7620e5857f6fda667c14b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5fcb93a0-fa7f-a53a-9c44-f29e75d5fb21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:249415a8-af34-aed3-20c9-1aba7565cda8",
  "kind": "lemma",
  "lexical_name": "chainCoeff_chainTopIdx_aux",
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
  "slug": "chaincoeff-chaintopidx-aux--895fd4a00e931fb933cff9b9",
  "source": {
    "blob": "59ee2edeade04c28abb7620e5857f6fda667c14b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 331,
    "path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:895fd4a00e931fb933cff9b994b99778713ff251b2e513c23e6c7ccf8b7a91ed",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:249415a8-af34-aed3-20c9-1aba7565cda8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma chainCoeff_chainTopIdx_aux :
    P.chainBotCoeff i (P.chainTopIdx i j) = P.chainBotCoeff i j + P.chainTopCoeff i j ∧
    P.chainTopCoeff i (P.chainTopIdx i j) = 0 := by
  have aux : LinearIndependent R ![P.root i, P.root j] ↔
      LinearIndependent R ![P.root i, P.root (P.chainTopIdx i j)] := by
    rw [P.root_chainTopIdx, add_comm (P.root j), ← natCast_zsmul,
      LinearIndependent.pair_add_smul_right_iff]
  by_cases h : LinearIndependent R ![P.root i, P.root j]
  swap; · simp [chainTopCoeff_of_not_linearIndependent, chainBotCoeff_of_not_linearIndependent, h]
  have h' : LinearIndependent R ![P.root i, P.root (P.chainTopIdx i j)] := by rwa [← aux]
  set S₁ : Set ℤ := {z | P.root j + z • P.root i ∈ range P.root} with S₁_def
  set S₂ : Set ℤ := {z | P.root (P.chainTopIdx i j) + z • P.root i ∈ range P.root} with S₂_def
  have hS₁₂ : S₂ = (fun z ↦ (-P.chainTopCoeff i j : ℤ) + z) '' S₁ := by
    ext; simp [S₁_def, S₂_def, root_chainTopIdx, add_smul, add_assoc, natCast_zsmul]
  have hS₁ : S₁ = Icc (- P.chainBotCoeff i j : ℤ) (P.chainTopCoeff i j) := by
    ext; rw [S₁_def, mem_setOf_eq, root_add_zsmul_mem_range_iff h]
  have hS₂ : S₂ = Icc (- P.chainBotCoeff i (P.chainTopIdx i j) : ℤ)
      (P.chainTopCoeff i (P.chainTopIdx i j)) := by
    ext; rw [S₂_def, mem_setOf_eq, root_add_zsmul_mem_range_iff h']
  rw [hS₁, hS₂, image_const_add_Icc, neg_add_cancel, Icc_eq_Icc_iff (by simp), neg_eq_iff_eq_neg,
    neg_add_rev, neg_neg, neg_neg] at hS₁₂
  norm_cast at hS₁₂

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59ee2edeade04c28abb7620e5857f6fda667c14b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
