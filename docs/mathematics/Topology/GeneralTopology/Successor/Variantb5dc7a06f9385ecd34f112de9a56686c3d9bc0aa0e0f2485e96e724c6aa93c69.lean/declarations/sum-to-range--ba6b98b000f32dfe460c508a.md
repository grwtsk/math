# sum_to_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48f0ba400d90f653e7a1697bccf77d0919046a48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 334,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbe7234f-30b7-d944-9c71-60a8fc2ef1ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f194f0b5-ad85-db81-7960-76554fb89df5",
  "kind": "theorem",
  "lexical_name": "sum_to_range",
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
  "slug": "sum-to-range--ba6b98b000f32dfe460c508a",
  "source": {
    "blob": "48f0ba400d90f653e7a1697bccf77d0919046a48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 334,
    "path": "GRWTSK/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba6b98b000f32dfe460c508a8829757d645302a80887505d9e85f4fe40c4493a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f194f0b5-ad85-db81-7960-76554fb89df5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_to_range :
    Set.range (sum_to C ho) = GoodProducts (π C (ord I · < o)) ∪ MaxProducts C ho := by
  have : Set.range (sum_to C ho) = _ ∪ _ := Set.Sum.elim_range _ _
  simp_all

/-- The equivalence from the sum of `GoodProducts (π C (ord I · < o))` and
`(MaxProducts C ho)` to `GoodProducts C`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48f0ba400d90f653e7a1697bccf77d0919046a48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
