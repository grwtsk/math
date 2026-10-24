# UniqueMDiffWithinAt.preimage_localHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79e199bd0574779cf65ad0ca6c87251b12a8c06f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2055,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2dcc032a-b5e3-52aa-915d-bbfea04a3031",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1747882d-442d-5b9d-ff23-b88aadef6507",
  "kind": "theorem",
  "lexical_name": "UniqueMDiffWithinAt.preimage_localHomeomorph",
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
  "slug": "uniquemdiffwithinat-preimage-localhomeomorph--8fdefb7be257a3f00f057ff6",
  "source": {
    "blob": "79e199bd0574779cf65ad0ca6c87251b12a8c06f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2064,
    "line": 2055,
    "path": "GRWTSK/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fdefb7be257a3f00f057ff6ba834419a0a874562bf024a74ae6546634e5a949",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1747882d-442d-5b9d-ff23-b88aadef6507`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2055–2064.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem UniqueMDiffWithinAt.preimage_localHomeomorph (hs : UniqueMDiffWithinAt I s x)
    {e : LocalHomeomorph M M'} (he : e.MDifferentiable I I') (hx : x ∈ e.source) :
    UniqueMDiffWithinAt I' (e.target ∩ e.symm ⁻¹' s) (e x) := by
  rw [← e.image_source_inter_eq', inter_comm]
  exact (hs.inter (e.open_source.mem_nhds hx)).image_denseRange
    (he.mdifferentiableAt hx).hasMFDerivAt.hasMFDerivWithinAt
    (he.mfderiv_surjective hx).denseRange

/-- If a set has the unique differential property, then its image under a local
diffeomorphism also has the unique differential property. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean#L2055).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79e199bd0574779cf65ad0ca6c87251b12a8c06f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
