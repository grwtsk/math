# le_sum_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04fc6ed3e31ef9cd594f3db95e8edf87bf593bf3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 446,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8444a25a-b252-38ab-04c4-844b372939c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c3a43cc-6f06-73bb-b933-8922a86ebeda",
  "kind": "theorem",
  "lexical_name": "le_sum_card",
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
  "slug": "le-sum-card--b0e5918e49ae9a842ff36140",
  "source": {
    "blob": "04fc6ed3e31ef9cd594f3db95e8edf87bf593bf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 446,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0e5918e49ae9a842ff361401ca82fd1d26bb1cfbdb71e2c1841474e87c34303",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c3a43cc-6f06-73bb-b933-8922a86ebeda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_sum_card [Fintype α] (h : ∀ a, n ≤ #{b ∈ B | a ∈ b}) :
    Fintype.card α * n ≤ ∑ s ∈ B, #s :=
  calc
    Fintype.card α * n ≤ ∑ s ∈ B, #(univ ∩ s) := le_sum_card_inter fun a _ ↦ h a
    _ = ∑ s ∈ B, #s := by simp_rw [univ_inter]

/-- If every element belongs to exactly `n` Finsets, then the sum of their sizes is `n` times how
many they are. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04fc6ed3e31ef9cd594f3db95e8edf87bf593bf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
