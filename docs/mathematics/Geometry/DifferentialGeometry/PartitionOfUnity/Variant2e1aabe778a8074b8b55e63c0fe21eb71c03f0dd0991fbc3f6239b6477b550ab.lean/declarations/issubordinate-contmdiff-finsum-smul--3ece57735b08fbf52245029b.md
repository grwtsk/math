# IsSubordinate.contMDiff_finsum_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8df63583ae44b9cfef6e4f2f3cbbc8bfbab1fefa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e1aabe778a8074b8b55e63c0fe21eb71c03f0dd0991fbc3f6239b6477b550ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ce7ce1e-5a6d-a5c0-6681-eff830413621",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc802342-7525-d660-8136-091438d179fb",
  "kind": "theorem",
  "lexical_name": "IsSubordinate.contMDiff_finsum_smul",
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
  "slug": "issubordinate-contmdiff-finsum-smul--3ece57735b08fbf52245029b",
  "source": {
    "blob": "8df63583ae44b9cfef6e4f2f3cbbc8bfbab1fefa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 245,
    "path": "GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variant2e1aabe778a8074b8b55e63c0fe21eb71c03f0dd0991fbc3f6239b6477b550ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ece57735b08fbf52245029bbba9cc17a5d06f3d0969ef19fb685a8be1a65645",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variant2e1aabe778a8074b8b55e63c0fe21eb71c03f0dd0991fbc3f6239b6477b550ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc802342-7525-d660-8136-091438d179fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSubordinate.contMDiff_finsum_smul {g : ι → M → F} (hf : f.IsSubordinate U)
    (ho : ∀ i, IsOpen (U i)) (hg : ∀ i, ContMDiffOn I 𝓘(ℝ, F) n (g i) (U i)) :
    ContMDiff I 𝓘(ℝ, F) n fun x => ∑ᶠ i, f i x • g i x :=
  f.contMDiff_finsum_smul fun i _ hx => (hg i).contMDiffAt <| (ho i).mem_nhds (hf i hx)
#align smooth_partition_of_unity.is_subordinate.cont_mdiff_finsum_smul SmoothPartitionOfUnity.IsSubordinate.contMDiff_finsum_smul

/-- If `f` is a smooth partition of unity on a set `s : Set M` subordinate to a family of open sets
`U : ι → Set M` and `g : ι → M → F` is a family of functions such that `g i` is smooth on `U i`,
then the sum `λ x, ∑ᶠ i, f i x • g i x` is smooth on the whole manifold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variant2e1aabe778a8074b8b55e63c0fe21eb71c03f0dd0991fbc3f6239b6477b550ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variant2e1aabe778a8074b8b55e63c0fe21eb71c03f0dd0991fbc3f6239b6477b550ab.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8df63583ae44b9cfef6e4f2f3cbbc8bfbab1fefa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
