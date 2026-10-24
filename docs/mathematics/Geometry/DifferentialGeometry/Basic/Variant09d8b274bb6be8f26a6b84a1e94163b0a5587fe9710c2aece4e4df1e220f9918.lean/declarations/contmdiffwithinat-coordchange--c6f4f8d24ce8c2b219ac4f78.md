# ContMDiffWithinAt.coordChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3d978f2-a243-0e7d-594a-3b997824a26b",
  "kind": "theorem",
  "lexical_name": "ContMDiffWithinAt.coordChange",
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
  "slug": "contmdiffwithinat-coordchange--c6f4f8d24ce8c2b219ac4f78",
  "source": {
    "blob": "e47a08139e388c55db47130e9c2b51216bab3cce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 388,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant09d8b274bb6be8f26a6b84a1e94163b0a5587fe9710c2aece4e4df1e220f9918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6f4f8d24ce8c2b219ac4f7856d962393dd1b43e54413a7352e5e58db21b26c4",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant09d8b274bb6be8f26a6b84a1e94163b0a5587fe9710c2aece4e4df1e220f9918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3d978f2-a243-0e7d-594a-3b997824a26b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ContMDiffWithinAt.coordChange
    (hf : ContMDiffWithinAt IM IB n f s x) (hg : ContMDiffWithinAt IM 𝓘(𝕜, F) n g s x)
    (he : f x ∈ e.baseSet) (he' : f x ∈ e'.baseSet) :
    ContMDiffWithinAt IM 𝓘(𝕜, F) n (fun y ↦ e.coordChange e' (f y) (g y)) s x := by
  refine ((hf.coordChangeL he he').clm_apply hg).congr_of_eventuallyEq ?_ ?_
  · have : e.baseSet ∩ e'.baseSet ∈ 𝓝 (f x) :=
     (e.open_baseSet.inter e'.open_baseSet).mem_nhds ⟨he, he'⟩
    filter_upwards [hf.continuousWithinAt this] with y hy
    exact (Trivialization.coordChangeL_apply' e e' hy (g y)).symm
  · exact (Trivialization.coordChangeL_apply' e e' ⟨he, he'⟩ (g x)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant09d8b274bb6be8f26a6b84a1e94163b0a5587fe9710c2aece4e4df1e220f9918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant09d8b274bb6be8f26a6b84a1e94163b0a5587fe9710c2aece4e4df1e220f9918.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e47a08139e388c55db47130e9c2b51216bab3cce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
