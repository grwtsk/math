# sum_le_sum_Ioc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d55bda393d43c9a32017eb7f30bc31c3145d09a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd45ec2f-bdbc-24e8-3565-8ac738e39979",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c7b0fa5-52fb-074d-7881-b415c798015b",
  "kind": "lemma",
  "lexical_name": "sum_le_sum_Ioc",
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
  "slug": "sum-le-sum-ioc--1ff1d5a97487291d2213df5b",
  "source": {
    "blob": "d55bda393d43c9a32017eb7f30bc31c3145d09a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 23,
    "path": "GRWTSK/Algebra/Sum/Variant581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ff1d5a97487291d2213df5bc3543c9babb9c6926c78c78261f8b49a12c8b9fe",
  "verification": {
    "reference": "docs/verification/Algebra/Sum/Variant581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c7b0fa5-52fb-074d-7881-b415c798015b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_le_sum_Ioc {s : Finset ℤ} {c : ℤ} (hs : ∀ x ∈ s, x ≤ c) :
    ∑ x ∈ s, x ≤ ∑ x ∈ Ioc (c - #s) c, x := by
  set r := Ioc (c - #s) c
  calc
    _ ≤ ∑ x ∈ s ∩ r, x + #(s \ r) • (c - #s) := by
      rw [← sum_inter_add_sum_diff s r _]
      gcongr
      refine sum_le_card_nsmul _ _ _ fun x mx ↦ ?_
      rw [mem_sdiff, mem_Ioc, not_and'] at mx
      have := mx.2 (hs _ mx.1); omega
    _ = ∑ x ∈ r ∩ s, x + #(r \ s) • (c - #s) := by
      rw [inter_comm, card_sdiff_comm]
      rw [Int.card_Ioc, sub_sub_cancel, Int.toNat_natCast]
    _ ≤ _ := by
      rw [← sum_inter_add_sum_diff r s _]
      gcongr
      refine card_nsmul_le_sum _ _ _ fun x mx ↦ ?_
      rw [mem_sdiff, mem_Ioc] at mx; exact mx.1.1.le

/-- Sharp upper bound for the sum of a finset of integers that is bounded above, `range` version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Sum/Variant581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Sum/Variant581814eb3f3f081ddcb8f1a4bfa93162cdf5078858727174775af5c20a8c448c.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d55bda393d43c9a32017eb7f30bc31c3145d09a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
