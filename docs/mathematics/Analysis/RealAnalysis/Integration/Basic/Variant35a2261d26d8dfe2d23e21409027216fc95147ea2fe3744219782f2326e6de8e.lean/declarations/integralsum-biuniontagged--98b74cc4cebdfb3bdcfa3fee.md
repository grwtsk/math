# integralSum_biUnionTagged

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d6091b8a7da0397a7e4e9c6d3d15c3ca2a85990",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35a2261d26d8dfe2d23e21409027216fc95147ea2fe3744219782f2326e6de8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32d30e01-38ec-bb3c-fd49-4ba8f75e2e47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6958a13-95c8-203b-1751-60fcc4f46a52",
  "kind": "theorem",
  "lexical_name": "integralSum_biUnionTagged",
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
  "slug": "integralsum-biuniontagged--98b74cc4cebdfb3bdcfa3fee",
  "source": {
    "blob": "8d6091b8a7da0397a7e4e9c6d3d15c3ca2a85990",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant35a2261d26d8dfe2d23e21409027216fc95147ea2fe3744219782f2326e6de8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98b74cc4cebdfb3bdcfa3fee88560e70f836ff813172681b41e4b2d60a0f469b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant35a2261d26d8dfe2d23e21409027216fc95147ea2fe3744219782f2326e6de8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6958a13-95c8-203b-1751-60fcc4f46a52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralSum_biUnionTagged (f : ℝⁿ → E) (vol : ι →ᵇᵃ E →L[ℝ] F) (π : Prepartition I)
    (πi : ∀ J, TaggedPrepartition J) :
    integralSum f vol (π.biUnionTagged πi) = ∑ J ∈ π.boxes, integralSum f vol (πi J) := by
  refine (π.sum_biUnion_boxes _ _).trans <| sum_congr rfl fun J hJ => sum_congr rfl fun J' hJ' => ?_
  rw [π.tag_biUnionTagged hJ hJ']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant35a2261d26d8dfe2d23e21409027216fc95147ea2fe3744219782f2326e6de8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant35a2261d26d8dfe2d23e21409027216fc95147ea2fe3744219782f2326e6de8e.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d6091b8a7da0397a7e4e9c6d3d15c3ca2a85990` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
