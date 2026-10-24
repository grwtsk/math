# tendsto_const_mul_atTop_of_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82a4ec212388bd1f51132e1cd21f05b2bec4b6e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f42ecd2-4d7a-1e32-e101-42a2b363e8d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7633a2df-4933-957a-6dd9-b92fff4e6342",
  "kind": "theorem",
  "lexical_name": "tendsto_const_mul_atTop_of_neg",
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
  "slug": "tendsto-const-mul-attop-of-neg--105ee1e0c308150e754454dc",
  "source": {
    "blob": "82a4ec212388bd1f51132e1cd21f05b2bec4b6e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1155,
    "line": 1149,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:105ee1e0c308150e754454dc241c432aa89ffa8f6832d45a813b87713e9a0bd5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7633a2df-4933-957a-6dd9-b92fff4e6342`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1149–1155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_const_mul_atTop_of_neg (hr : r < 0) :
    Tendsto (fun x => r * f x) l atTop ↔ Tendsto f l atBot := by
  simpa only [neg_mul, tendsto_neg_atBot_iff] using tendsto_const_mul_atBot_of_pos (neg_pos.2 hr)
#align filter.tendsto_const_mul_at_top_of_neg Filter.tendsto_const_mul_atTop_of_neg

/-- If `r` is a negative constant, then `λ x, f x * r` tends to infinity along a filter if and only
if `f` tends to negative infinity along the same filter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant231c59fd8debdecc18f7adcd9c3e47c8ce8e157fd7a6210e9d1932a9c6954358.lean#L1149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82a4ec212388bd1f51132e1cd21f05b2bec4b6e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
