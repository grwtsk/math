# instIsTopologicalAddGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4878ce43172ac82d24a9a2fc41b68a92276f5bd63c1a3740a9d1137d013f005",
  "kind": "instance",
  "lexical_name": "instIsTopologicalAddGroup",
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
  "slug": "instistopologicaladdgroup--f49d2f1715edbdcc864523e4",
  "source": {
    "blob": "66acc2bc41e4175777a75bc965c24ba9b1722ec1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 141,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f49d2f1715edbdcc864523e4d3d719590dacb8721933d296c0130f709986c80d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4878ce43172ac82d24a9a2fc41b68a92276f5bd63c1a3740a9d1137d013f005`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsTopologicalAddGroup : IsTopologicalAddGroup (E [⋀^ι]→L[𝕜] F) :=
  isEmbedding_toContinuousMultilinearMap.isTopologicalAddGroup
    (toContinuousMultilinearMapLinear (R := ℕ))

@[continuity, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66acc2bc41e4175777a75bc965c24ba9b1722ec1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
