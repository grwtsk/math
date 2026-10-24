# openSegment_subset_iff_segment_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ea05c30-2bf3-9bf9-60b1-d4dc21b6533e",
  "kind": "theorem",
  "lexical_name": "openSegment_subset_iff_segment_subset",
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
  "slug": "opensegment-subset-iff-segment-subset--1d504566e06393d25cd28cdf",
  "source": {
    "blob": "523919ae0d967c84b944a1b53bed08e1bf59e24d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 166,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Segment/Variant5f24bd3bddc6c3d2a734a9172236be9a5c22f50fba18b3cec002a1ea2187c8ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d504566e06393d25cd28cdfec78cb6f465cbe8b43daf4a9b32f08c074878232",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Segment/Variant5f24bd3bddc6c3d2a734a9172236be9a5c22f50fba18b3cec002a1ea2187c8ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ea05c30-2bf3-9bf9-60b1-d4dc21b6533e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem openSegment_subset_iff_segment_subset (hx : x ∈ s) (hy : y ∈ s) :
    openSegment 𝕜 x y ⊆ s ↔ [x -[𝕜] y] ⊆ s := by
  simp only [← insert_endpoints_openSegment, insert_subset_iff, *, true_and_iff]
#align open_segment_subset_iff_segment_subset openSegment_subset_iff_segment_subset

end Module

end OrderedSemiring

open Convex

section OrderedRing

variable (𝕜) [OrderedRing 𝕜] [AddCommGroup E] [AddCommGroup F] [AddCommGroup G] [Module 𝕜 E]
  [Module 𝕜 F]

section DenselyOrdered

variable [Nontrivial 𝕜] [DenselyOrdered 𝕜]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Segment/Variant5f24bd3bddc6c3d2a734a9172236be9a5c22f50fba18b3cec002a1ea2187c8ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Segment/Variant5f24bd3bddc6c3d2a734a9172236be9a5c22f50fba18b3cec002a1ea2187c8ec.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `523919ae0d967c84b944a1b53bed08e1bf59e24d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
