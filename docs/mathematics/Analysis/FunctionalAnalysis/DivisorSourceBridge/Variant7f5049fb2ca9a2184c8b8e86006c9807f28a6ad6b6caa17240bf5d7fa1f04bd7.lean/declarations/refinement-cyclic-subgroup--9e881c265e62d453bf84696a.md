# refinement_cyclic_subgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85c8f3db51177904ee734a4c47a7597d0b76e5ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21d9e1be-82c8-05aa-9995-6eecfaffac5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:471231bc-a780-b30b-35a4-6803fd6ac67d",
  "kind": "theorem",
  "lexical_name": "refinement_cyclic_subgroup",
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
  "slug": "refinement-cyclic-subgroup--9e881c265e62d453bf84696a",
  "source": {
    "blob": "85c8f3db51177904ee734a4c47a7597d0b76e5ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 58,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e881c265e62d453bf84696ac846aa257ad40f204c9fe9d088bf7c23436c9dc1",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:471231bc-a780-b30b-35a4-6803fd6ac67d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem refinement_cyclic_subgroup {N : ℕ} [NeZero N] {s t : FactorState.State N}
    (c : FactorState.Refinement s t) :
    cyclicSubgroup (residualDivisor t) ≤ cyclicSubgroup (residualDivisor s) :=
  (cyclicSubgroup_le_iff _ _).mpr (refinement_residual_order c)

/-- Every old certified nondivisibility observation persists through the exact bridge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85c8f3db51177904ee734a4c47a7597d0b76e5ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
