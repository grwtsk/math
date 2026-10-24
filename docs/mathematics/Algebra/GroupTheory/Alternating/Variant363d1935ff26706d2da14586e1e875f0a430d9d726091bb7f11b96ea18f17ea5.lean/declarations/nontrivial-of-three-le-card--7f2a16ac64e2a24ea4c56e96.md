# nontrivial_of_three_le_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f6436e591fcf88179183f5db404bd2a3723669f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3353365-36eb-8c42-36d0-68de3e9449b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99f22b67-f7fa-7c7f-a434-085e4d66f8c9",
  "kind": "theorem",
  "lexical_name": "nontrivial_of_three_le_card",
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
  "slug": "nontrivial-of-three-le-card--7f2a16ac64e2a24ea4c56e96",
  "source": {
    "blob": "2f6436e591fcf88179183f5db404bd2a3723669f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 216,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f2a16ac64e2a24ea4c56e9683e361b2e4149dd719a214a9c172bdc868133ce6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99f22b67-f7fa-7c7f-a434-085e4d66f8c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_of_three_le_card (h3 : 3 ≤ card α) : Nontrivial (alternatingGroup α) := by
  haveI := Fintype.one_lt_card_iff_nontrivial.1 (lt_trans (by decide) h3)
  rw [← Fintype.one_lt_card_iff_nontrivial]
  refine' lt_of_mul_lt_mul_left _ (le_of_lt Nat.prime_two.pos)
  rw [two_mul_card_alternatingGroup, card_perm, ← Nat.succ_le_iff]
  exact le_trans h3 (card α).self_le_factorial
#align alternating_group.nontrivial_of_three_le_card alternatingGroup.nontrivial_of_three_le_card

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f6436e591fcf88179183f5db404bd2a3723669f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
