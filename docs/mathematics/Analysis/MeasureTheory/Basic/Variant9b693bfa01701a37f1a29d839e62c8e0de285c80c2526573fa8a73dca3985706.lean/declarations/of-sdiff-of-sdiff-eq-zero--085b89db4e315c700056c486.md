# of_sdiff_of_sdiff_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5550c98cde2070a8825dfc4d48cc41cebd2b815a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b693bfa01701a37f1a29d839e62c8e0de285c80c2526573fa8a73dca3985706.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2302c931-86d1-053a-be71-a091d1c66800",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95898406-f9ad-be04-43e1-87d8ba5076e5",
  "kind": "theorem",
  "lexical_name": "of_sdiff_of_sdiff_eq_zero",
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
  "slug": "of-sdiff-of-sdiff-eq-zero--085b89db4e315c700056c486",
  "source": {
    "blob": "5550c98cde2070a8825dfc4d48cc41cebd2b815a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 137,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant9b693bfa01701a37f1a29d839e62c8e0de285c80c2526573fa8a73dca3985706.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:085b89db4e315c700056c48653021bb6c9067bae31ef4d16342250cb4e62c92e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant9b693bfa01701a37f1a29d839e62c8e0de285c80c2526573fa8a73dca3985706.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95898406-f9ad-be04-43e1-87d8ba5076e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_sdiff_of_sdiff_eq_zero {A B : Set α} (hA : MeasurableSet A) (hB : MeasurableSet B)
    (h' : v (B \ A) = 0) : v (A \ B) + v B = v A := by
  symm
  calc
    v A = v (A \ B ∪ A ∩ B) := by simp only [Set.sdiff_union_inter]
    _ = v (A \ B) + v (A ∩ B) := by
      rw [of_union]
      · rw [disjoint_comm]
        exact Set.disjoint_of_subset_left A.inter_subset_right disjoint_sdiff_self_right
      · exact hA.diff hB
      · exact hA.inter hB
    _ = v (A \ B) + v (A ∩ B ∪ B \ A) := by
      rw [of_union, h', add_zero]
      · exact Set.disjoint_of_subset_left A.inter_subset_left disjoint_sdiff_self_right
      · exact hA.inter hB
      · exact hB.diff hA
    _ = v (A \ B) + v B := by rw [Set.union_comm, Set.inter_comm, Set.sdiff_union_inter]

@[deprecated (since := "2026-06-03")] alias of_diff_of_diff_eq_zero := of_sdiff_of_sdiff_eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant9b693bfa01701a37f1a29d839e62c8e0de285c80c2526573fa8a73dca3985706.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant9b693bfa01701a37f1a29d839e62c8e0de285c80c2526573fa8a73dca3985706.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5550c98cde2070a8825dfc4d48cc41cebd2b815a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
