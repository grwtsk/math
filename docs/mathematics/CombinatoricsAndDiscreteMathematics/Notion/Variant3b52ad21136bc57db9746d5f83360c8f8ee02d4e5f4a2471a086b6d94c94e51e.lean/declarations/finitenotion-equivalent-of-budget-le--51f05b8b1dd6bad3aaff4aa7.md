# FiniteNotion.equivalent_of_budget_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "348096950286c06f1fa5d9fced13347b41f388df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b28f98a2-a346-fdd7-e321-b270a7b07b14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:919f76d9-6517-c9bf-d5d6-9163de8ebae1",
  "kind": "theorem",
  "lexical_name": "FiniteNotion.equivalent_of_budget_le",
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
  "slug": "finitenotion-equivalent-of-budget-le--51f05b8b1dd6bad3aaff4aa7",
  "source": {
    "blob": "348096950286c06f1fa5d9fced13347b41f388df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 81,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51f05b8b1dd6bad3aaff4aa7b0bc81053f99cecfbe1ea1d2d97b221d228cd722",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:919f76d9-6517-c9bf-d5d6-9163de8ebae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiniteNotion.equivalent_of_budget_le {Object Test Value : Type*}
    {notion : FiniteNotion Object Test Value} {small large : ℕ} {x y : Object}
    (hbudget : small ≤ large) (h : notion.Equivalent large x y) :
    notion.Equivalent small x y :=
  fun test hmem hcost => h test hmem (hcost.trans hbudget)

/-- Full semantic equivalence implies equivalence in each finite subfamily. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Notion/Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `348096950286c06f1fa5d9fced13347b41f388df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
