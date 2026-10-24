# mlieBracketWithin_of_mem_nhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1be8b63db73d21e9a34ba421d3fea814566239d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 371,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:848d4a22-cea7-c9b8-0ca0-95316de44ed8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf2f1ed7-be94-82fd-7ceb-125c675c0bec",
  "kind": "theorem",
  "lexical_name": "mlieBracketWithin_of_mem_nhdsWithin",
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
  "slug": "mliebracketwithin-of-mem-nhdswithin--6d4ffcdff115a34396037782",
  "source": {
    "blob": "d1be8b63db73d21e9a34ba421d3fea814566239d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 371,
    "path": "GRWTSK/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d4ffcdff115a343960377829712031a6272c48d1c553ea5f68895e8d77e7e7e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf2f1ed7-be94-82fd-7ceb-125c675c0bec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mlieBracketWithin_of_mem_nhdsWithin
    (st : t ∈ 𝓝[s] x) (hs : UniqueMDiffWithinAt I s x)
    (hV : MDifferentiableWithinAt I I.tangent (fun x ↦ (V x : TangentBundle I M)) t x)
    (hW : MDifferentiableWithinAt I I.tangent (fun x ↦ (W x : TangentBundle I M)) t x) :
    mlieBracketWithin I V W s x = mlieBracketWithin I V W t x := by
  simp only [mlieBracketWithin_apply]
  congr 1
  rw [lieBracketWithin_of_mem_nhdsWithin]
  · apply Filter.inter_mem
    · apply nhdsWithin_mono _ inter_subset_left
      exact (continuousAt_extChartAt_symm x).continuousWithinAt.preimage_mem_nhdsWithin''
        st (by simp)
    · exact nhdsWithin_mono _ inter_subset_right self_mem_nhdsWithin
  · exact uniqueMDiffWithinAt_iff_inter_range.1 hs
  · exact hV.differentiableWithinAt_mpullbackWithin_vectorField
  · exact hW.differentiableWithinAt_mpullbackWithin_vectorField

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LieBracket/Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1be8b63db73d21e9a34ba421d3fea814566239d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
