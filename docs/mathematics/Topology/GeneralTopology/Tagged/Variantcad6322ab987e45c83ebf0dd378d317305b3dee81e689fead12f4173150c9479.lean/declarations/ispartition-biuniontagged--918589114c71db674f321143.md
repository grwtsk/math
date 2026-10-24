# IsPartition.biUnionTagged

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c842359a5c3ecbe86ce80dcb171cafbe6f95dfb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/cad6322ab987e45c83ebf0dd378d317305b3dee81e689fead12f4173150c9479.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0df7d62-5502-74c3-77ae-c93de30a6ed7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ba63d3c-3194-3d70-2b3a-94ccf8a0b846",
  "kind": "theorem",
  "lexical_name": "IsPartition.biUnionTagged",
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
  "slug": "ispartition-biuniontagged--918589114c71db674f321143",
  "source": {
    "blob": "c842359a5c3ecbe86ce80dcb171cafbe6f95dfb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/Tagged/Variantcad6322ab987e45c83ebf0dd378d317305b3dee81e689fead12f4173150c9479.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:918589114c71db674f321143c89510599d87e27c4d5726d1cb8966118c71a139",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tagged/Variantcad6322ab987e45c83ebf0dd378d317305b3dee81e689fead12f4173150c9479.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ba63d3c-3194-3d70-2b3a-94ccf8a0b846`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPartition.biUnionTagged {π : Prepartition I} (h : IsPartition π)
    {πi : ∀ J, TaggedPrepartition J} (hi : ∀ J ∈ π, (πi J).IsPartition) :
    (π.biUnionTagged πi).IsPartition :=
  h.biUnion hi

end Prepartition

namespace TaggedPrepartition

variable {I J : Box ι} {π π₁ π₂ : TaggedPrepartition I} {x : ι → ℝ}

/-- Given a tagged partition `π` of `I` and a (not tagged) partition `πi J hJ` of each `J ∈ π`,
returns the tagged partition of `I` into all the boxes of all `πi J hJ`. The tag of a box `J`
is defined to be the `π.tag` of the box of the partition `π` that includes `J`.

Note that usually the result is not a Henstock partition. -/
@[simps -fullyApplied tag]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tagged/Variantcad6322ab987e45c83ebf0dd378d317305b3dee81e689fead12f4173150c9479.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tagged/Variantcad6322ab987e45c83ebf0dd378d317305b3dee81e689fead12f4173150c9479.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c842359a5c3ecbe86ce80dcb171cafbe6f95dfb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
