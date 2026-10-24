# directSum_isInternal_of_pairwise_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6fc4f2884d095b3bce6d460c25f5e1ee0f5d33df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a23e8884e3df5ab3446259288a58601e0fcb9a528e78786416999b15066ce23.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:caf57800-7b0a-a25b-69b3-c30ca5084e9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2ad42c0-7e7b-ac03-552f-16cd4b9b3b8c",
  "kind": "theorem",
  "lexical_name": "directSum_isInternal_of_pairwise_commute",
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
  "slug": "directsum-isinternal-of-pairwise-commute--dfd7c7426ca2ac26fb32baa9",
  "source": {
    "blob": "6fc4f2884d095b3bce6d460c25f5e1ee0f5d33df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 136,
    "path": "GRWTSK/Algebra/LinearAlgebra/JointEigenspace/Variant0a23e8884e3df5ab3446259288a58601e0fcb9a528e78786416999b15066ce23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfd7c7426ca2ac26fb32baa995d086bdfbe49be7900e3e7a14811bf2ec9490a4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JointEigenspace/Variant0a23e8884e3df5ab3446259288a58601e0fcb9a528e78786416999b15066ce23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2ad42c0-7e7b-ac03-552f-16cd4b9b3b8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem directSum_isInternal_of_pairwise_commute [DecidableEq (n → 𝕜)]
    (hT : ∀ i, (T i).IsSymmetric) (hC : Pairwise (Commute on T)) :
    DirectSum.IsInternal (fun α : n → 𝕜 ↦ ⨅ j, eigenspace (T j) (α j)) := by
  rw [OrthogonalFamily.isInternal_iff]
  · rw [iSup_iInf_eq_top_of_commute hT hC, top_orthogonal_eq_bot]
  · exact orthogonalFamily_iInf_eigenspaces hT

set_option linter.dupNamespace false in
@[deprecated (since := "2026-05-24")]
alias LinearMap.IsSymmetric.directSum_isInternal_of_pairwise_commute :=
  directSum_isInternal_of_pairwise_commute

end RCLike

end IsSymmetric

end LinearMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JointEigenspace/Variant0a23e8884e3df5ab3446259288a58601e0fcb9a528e78786416999b15066ce23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JointEigenspace/Variant0a23e8884e3df5ab3446259288a58601e0fcb9a528e78786416999b15066ce23.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fc4f2884d095b3bce6d460c25f5e1ee0f5d33df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
