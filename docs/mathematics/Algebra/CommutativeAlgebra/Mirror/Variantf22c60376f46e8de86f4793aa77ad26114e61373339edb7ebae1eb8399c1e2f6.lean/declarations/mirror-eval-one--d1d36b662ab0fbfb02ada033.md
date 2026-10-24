# mirror_eval_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37be3dc36a43c6c4bbcefa8ba17c7cf2ba81a90c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f22c60376f46e8de86f4793aa77ad26114e61373339edb7ebae1eb8399c1e2f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e05db56e-61b8-2480-deb4-28200f929ba1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83524980-9e90-ba2f-588c-cf20f3ef375b",
  "kind": "theorem",
  "lexical_name": "mirror_eval_one",
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
  "slug": "mirror-eval-one--d1d36b662ab0fbfb02ada033",
  "source": {
    "blob": "37be3dc36a43c6c4bbcefa8ba17c7cf2ba81a90c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 91,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Mirror/Variantf22c60376f46e8de86f4793aa77ad26114e61373339edb7ebae1eb8399c1e2f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1d36b662ab0fbfb02ada033b68a9014959147b65f0a98af5457b9b90f1297ba",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Mirror/Variantf22c60376f46e8de86f4793aa77ad26114e61373339edb7ebae1eb8399c1e2f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83524980-9e90-ba2f-588c-cf20f3ef375b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mirror_eval_one : p.mirror.eval 1 = p.eval 1 := by
  simp_rw [eval_eq_sum_range, one_pow, mul_one, mirror_natDegree]
  refine Finset.sum_bij_ne_zero ?_ ?_ ?_ ?_ ?_
  · exact fun n _ _ => revAt (p.natDegree + p.natTrailingDegree) n
  · intro n hn hp
    rw [Finset.mem_range_succ_iff] at *
    rw [revAt_le (hn.trans (Nat.le_add_right _ _))]
    rw [tsub_le_iff_tsub_le, add_comm, add_tsub_cancel_right, ← mirror_natTrailingDegree]
    exact natTrailingDegree_le_of_ne_zero hp
  · exact fun n₁ _ _ _ _ _ h => by rw [← @revAt_invol _ n₁, h, revAt_invol]
  · intro n hn hp
    use revAt (p.natDegree + p.natTrailingDegree) n
    refine ⟨?_, ?_, revAt_invol⟩
    · rw [Finset.mem_range_succ_iff] at *
      rw [revAt_le (hn.trans (Nat.le_add_right _ _))]
      rw [tsub_le_iff_tsub_le, add_comm, add_tsub_cancel_right]
      exact natTrailingDegree_le_of_ne_zero hp
    · change p.mirror.coeff _ ≠ 0
      rwa [coeff_mirror, revAt_invol]
  · exact fun n _ _ => p.coeff_mirror n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Mirror/Variantf22c60376f46e8de86f4793aa77ad26114e61373339edb7ebae1eb8399c1e2f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Mirror/Variantf22c60376f46e8de86f4793aa77ad26114e61373339edb7ebae1eb8399c1e2f6.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37be3dc36a43c6c4bbcefa8ba17c7cf2ba81a90c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
