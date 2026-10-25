# getD_inter_of_not_mem_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab3b83eee1db77c29b4370b58f848ec79e7e165a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2303,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff49f9f9b9d21380740fe92dce99bc6f6726383d69c18200f58580b80335ebec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52300d5d-9c73-5697-3606-e8b624d92eb0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df4f5af5-baa2-8997-a3ac-e3e9f8edbcd6",
  "kind": "theorem",
  "lexical_name": "getD_inter_of_not_mem_left",
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
  "slug": "getd-inter-of-not-mem-left--70123271ac691a17d475b8de",
  "source": {
    "blob": "ab3b83eee1db77c29b4370b58f848ec79e7e165a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2309,
    "line": 2303,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantff49f9f9b9d21380740fe92dce99bc6f6726383d69c18200f58580b80335ebec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70123271ac691a17d475b8deee93e5d8d5d90454470a3920e3b0019a52ab0773",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantff49f9f9b9d21380740fe92dce99bc6f6726383d69c18200f58580b80335ebec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df4f5af5-baa2-8997-a3ac-e3e9f8edbcd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2303–2309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getD_inter_of_not_mem_left [LawfulBEq α]
    {k : α} {fallback : β k} (not_mem : k ∉ m₁) :
    (m₁ ∩ m₂).getD k fallback = fallback := by
  rw [← contains_eq_false_iff_not_mem] at not_mem
  exact @Raw₀.getD_inter_of_contains_eq_false_left _ _ _ _ ⟨m₁.1, m₁.2.size_buckets_pos⟩ ⟨m₂.1, m₂.2.size_buckets_pos⟩ _ m₁.2 m₂.2 k fallback not_mem

/- get! -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantff49f9f9b9d21380740fe92dce99bc6f6726383d69c18200f58580b80335ebec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantff49f9f9b9d21380740fe92dce99bc6f6726383d69c18200f58580b80335ebec.lean#L2303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab3b83eee1db77c29b4370b58f848ec79e7e165a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
