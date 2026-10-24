# iff_eq_top_or_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "880d7813b14732058ff59505c84e821e6442eab9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78ab4c2ec2a4d17c156c3aaed826ce9f43afa79c4c0b93e940688cc51f6355ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7aa897e6-6cfe-e411-e71a-aa72fea06494",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bce5640c-aaa1-5bcc-00cc-b1449a70752e",
  "kind": "lemma",
  "lexical_name": "iff_eq_top_or_exists",
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
  "slug": "iff-eq-top-or-exists--8a52f4877c5e291fdabb6ea8",
  "source": {
    "blob": "880d7813b14732058ff59505c84e821e6442eab9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 125,
    "path": "GRWTSK/Algebra/GroupTheory/IsSubnormal/Variant78ab4c2ec2a4d17c156c3aaed826ce9f43afa79c4c0b93e940688cc51f6355ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a52f4877c5e291fdabb6ea82c938f4a77c895c5f19d6a4d570ca020487c3b86",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IsSubnormal/Variant78ab4c2ec2a4d17c156c3aaed826ce9f43afa79c4c0b93e940688cc51f6355ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bce5640c-aaa1-5bcc-00cc-b1449a70752e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iff_eq_top_or_exists :
    IsSubnormal H ↔ H = ⊤ ∨ ∃ K, H < K ∧ IsSubnormal K ∧ (H.subgroupOf K).Normal where
  mp h := by
    induction h with
    | top => simp
    | step H K HK hS hN ih =>
      obtain rfl | ⟨K', HK', hS', hN'⟩ := ih
      · obtain rfl | hH := eq_or_ne H ⊤
        · simp
        · exact Or.inr ⟨⊤, by simp [hH.lt_top , *]⟩
      right
      obtain rfl | hH := eq_or_ne H K
      · use K'
      · exact ⟨K, by simpa [*] using HK.lt_of_ne hH⟩
  mpr h := by
    obtain rfl | ⟨K, HK, Ksn, h⟩ := h
    · exact top
    · exact step _ _ HK.le Ksn h

/-- A proper subnormal subgroup is contained in a proper normal subgroup. -/
@[to_additive /-- A proper subnormal additive subgroup is contained in a proper normal additive
subgroup. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IsSubnormal/Variant78ab4c2ec2a4d17c156c3aaed826ce9f43afa79c4c0b93e940688cc51f6355ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IsSubnormal/Variant78ab4c2ec2a4d17c156c3aaed826ce9f43afa79c4c0b93e940688cc51f6355ad.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `880d7813b14732058ff59505c84e821e6442eab9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
