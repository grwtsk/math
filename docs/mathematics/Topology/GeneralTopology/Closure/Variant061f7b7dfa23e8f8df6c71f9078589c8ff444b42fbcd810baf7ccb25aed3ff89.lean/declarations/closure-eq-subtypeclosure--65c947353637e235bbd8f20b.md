# closure_eq_subtypeClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c9a8e4a241339d966c3d1635358562dffa2de80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52a8a46d-e89a-c274-f748-3eb7e8a683b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c450bbf-787f-ffbb-a8cb-5dd2492ebc94",
  "kind": "lemma",
  "lexical_name": "closure_eq_subtypeClosure",
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
  "slug": "closure-eq-subtypeclosure--65c947353637e235bbd8f20b",
  "source": {
    "blob": "7c9a8e4a241339d966c3d1635358562dffa2de80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 144,
    "path": "GRWTSK/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65c947353637e235bbd8f20b861b7a76ce573a65977ab911fc09ca7d40f9e7cd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c450bbf-787f-ffbb-a8cb-5dd2492ebc94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma closure_eq_subtypeClosure (M : Matroid α) (X : Set α) :
    M.closure X = M.subtypeClosure ⟨X ∩ M.E, inter_subset_right⟩  := by
  suffices ∀ (x : α), (∀ (t : Set α), M.IsFlat t → X ∩ M.E ⊆ t → x ∈ t) ↔
    (x ∈ M.E ∧ ∀ a ⊆ M.E, X ∩ M.E ⊆ a → M.IsFlat a → x ∈ a) by
    simpa [closure, subtypeClosure, Set.ext_iff]
  exact fun x ↦ ⟨fun h ↦ ⟨h _ M.ground_isFlat inter_subset_right, fun F _ hXF hF ↦ h F hF hXF⟩,
    fun ⟨_, h⟩ F hF hXF ↦ h F hF.subset_ground hXF hF⟩

@[aesop unsafe 10% (rule_sets := [Matroid])]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c9a8e4a241339d966c3d1635358562dffa2de80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
