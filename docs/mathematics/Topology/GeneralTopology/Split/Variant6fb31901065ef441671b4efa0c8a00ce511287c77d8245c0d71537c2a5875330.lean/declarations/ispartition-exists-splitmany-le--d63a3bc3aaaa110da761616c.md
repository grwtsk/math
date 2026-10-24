# IsPartition.exists_splitMany_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea5234a6-fa25-bf35-b9b0-60bcc146742a",
  "kind": "theorem",
  "lexical_name": "IsPartition.exists_splitMany_le",
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
  "slug": "ispartition-exists-splitmany-le--d63a3bc3aaaa110da761616c",
  "source": {
    "blob": "5a1a3b75199761e6c692626bb2f32c35008c22ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 351,
    "path": "GRWTSK/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d63a3bc3aaaa110da761616c15f03ee160c7e44575188276c54dee27b11a1c8e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea5234a6-fa25-bf35-b9b0-60bcc146742a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPartition.exists_splitMany_le {I : Box ι} {π : Prepartition I} (h : IsPartition π) :
    ∃ s, splitMany I s ≤ π := by
  refine' (eventually_splitMany_inf_eq_filter π).exists.imp fun s hs => _
  rwa [h.iUnion_eq, filter_of_true, inf_eq_right] at hs
  exact fun J hJ => le_of_mem _ hJ
#align box_integral.prepartition.is_partition.exists_split_many_le BoxIntegral.Prepartition.IsPartition.exists_splitMany_le

/-- For every prepartition `π` of `I` there exists a prepartition that covers exactly
`I \ π.iUnion`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a1a3b75199761e6c692626bb2f32c35008c22ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
