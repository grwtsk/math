# IsSubordinate.continuous_finsum_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6e5fd80f460446bcf1d4859bcbae0b052c2d564",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35e1f74e-f498-bd84-ecff-b91ad67bb482",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebed1e39-aca9-a63b-fb05-b1c83a13e458",
  "kind": "theorem",
  "lexical_name": "IsSubordinate.continuous_finsum_smul",
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
  "slug": "issubordinate-continuous-finsum-smul--74e8503935588816ec4cd08b",
  "source": {
    "blob": "d6e5fd80f460446bcf1d4859bcbae0b052c2d564",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74e8503935588816ec4cd08bb634d1b68706ea8c221bb513235b71b986dc6232",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebed1e39-aca9-a63b-fb05-b1c83a13e458`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSubordinate.continuous_finsum_smul [ContinuousAdd E] {U : ι → Set X}
    (ho : ∀ i, IsOpen (U i)) (hf : f.IsSubordinate U) {g : ι → X → E}
    (hg : ∀ i, ContinuousOn (g i) (U i)) : Continuous fun x => ∑ᶠ i, f i x • g i x :=
  f.continuous_finsum_smul fun i _ hx => (hg i).continuousAt <| (ho i).mem_nhds <| hf i hx
#align partition_of_unity.is_subordinate.continuous_finsum_smul PartitionOfUnity.IsSubordinate.continuous_finsum_smul

end PartitionOfUnity

namespace BumpCovering

variable {s : Set X} (f : BumpCovering ι X s)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant6f5823bf8d8d6d15dcade42b8f39a076c6c12710e1c3f1181db1a7d1ccbc6ab1.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6e5fd80f460446bcf1d4859bcbae0b052c2d564` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
