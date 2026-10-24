# continuous_finsum_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:106180a5-4949-5df6-96de-8f367e0d5957",
  "kind": "theorem",
  "lexical_name": "continuous_finsum_smul",
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
  "slug": "continuous-finsum-smul--e8699d8419692abb37742b3b",
  "source": {
    "blob": "a2331e8bd597103cfe054e13d05202419fe43f85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 197,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8699d8419692abb37742b3bc0601c9d5fdef9b75ae9b8e5ae3aa61cd2a9b0ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:106180a5-4949-5df6-96de-8f367e0d5957`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_finsum_smul [ContinuousAdd E] {g : ι → X → E}
    (hg : ∀ (i), ∀ x ∈ tsupport (f i), ContinuousAt (g i) x) :
    Continuous fun x => ∑ᶠ i, f i x • g i x :=
  (continuous_finsum fun i => f.continuous_smul (hg i)) <|
    f.locallyFinite.subset fun _ => support_smul_subset_left _ _
#align partition_of_unity.continuous_finsum_smul PartitionOfUnity.continuous_finsum_smul

/-- A partition of unity `f i` is subordinate to a family of sets `U i` indexed by the same type if
for each `i` the closure of the support of `f i` is a subset of `U i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant74ff3d1c3ddbbf3ae197a62257a4442d5bddbe02ad5e044450bec9a91005def3.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2331e8bd597103cfe054e13d05202419fe43f85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
