# IsPartition.biUnionTagged

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ef0baed-b6a1-4a34-bea8-938e626a5da6",
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
  "slug": "ispartition-biuniontagged--d1d5198db7666e5f987654d5",
  "source": {
    "blob": "8e79d4035730d837a1e32ff22f53eed4727d753e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 172,
    "path": "GRWTSK/Topology/GeneralTopology/Tagged/Variantb3c850796dcb4c980b581c335576f4ddc0483ed26fd0e51f7ecb2b726569e51a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1d5198db7666e5f987654d5f531813f213a7fccd47050235786396588f68483",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tagged/Variantb3c850796dcb4c980b581c335576f4ddc0483ed26fd0e51f7ecb2b726569e51a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ef0baed-b6a1-4a34-bea8-938e626a5da6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPartition.biUnionTagged {π : Prepartition I} (h : IsPartition π)
    {πi : ∀ J, TaggedPrepartition J} (hi : ∀ J ∈ π, (πi J).IsPartition) :
    (π.biUnionTagged πi).IsPartition :=
  h.biUnion hi
#align box_integral.prepartition.is_partition.bUnion_tagged BoxIntegral.Prepartition.IsPartition.biUnionTagged

end Prepartition

namespace TaggedPrepartition

variable {I J : Box ι} {π π₁ π₂ : TaggedPrepartition I} {x : ι → ℝ}

/-- Given a tagged partition `π` of `I` and a (not tagged) partition `πi J hJ` of each `J ∈ π`,
returns the tagged partition of `I` into all the boxes of all `πi J hJ`. The tag of a box `J`
is defined to be the `π.tag` of the box of the partition `π` that includes `J`.

Note that usually the result is not a Henstock partition. -/
@[simps (config := { fullyApplied := false }) tag]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tagged/Variantb3c850796dcb4c980b581c335576f4ddc0483ed26fd0e51f7ecb2b726569e51a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tagged/Variantb3c850796dcb4c980b581c335576f4ddc0483ed26fd0e51f7ecb2b726569e51a.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e79d4035730d837a1e32ff22f53eed4727d753e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
