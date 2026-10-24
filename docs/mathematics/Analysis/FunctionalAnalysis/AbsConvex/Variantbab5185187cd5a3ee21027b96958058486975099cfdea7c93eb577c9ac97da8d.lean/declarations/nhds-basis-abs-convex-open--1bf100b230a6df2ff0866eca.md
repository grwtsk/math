# nhds_basis_abs_convex_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "460f31d8eee7ae15b8c21ab70179033b6549c922",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/bab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9004b1ff-5f40-5fea-a3a9-3fd5d2c56df2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05cc2de0-06a0-0e2c-03a7-340f6ca59b22",
  "kind": "theorem",
  "lexical_name": "nhds_basis_abs_convex_open",
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
  "slug": "nhds-basis-abs-convex-open--1bf100b230a6df2ff0866eca",
  "source": {
    "blob": "460f31d8eee7ae15b8c21ab70179033b6549c922",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 68,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bf100b230a6df2ff0866eca7ecc4c387eeb4ebc62f2de5aea35e46b3e005ac7",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05cc2de0-06a0-0e2c-03a7-340f6ca59b22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_basis_abs_convex_open :
    (𝓝 (0 : E)).HasBasis (fun s => (0 : E) ∈ s ∧ IsOpen s ∧ Balanced 𝕜 s ∧ Convex ℝ s) id := by
  refine' (nhds_basis_abs_convex 𝕜 E).to_hasBasis _ _
  · rintro s ⟨hs_nhds, hs_balanced, hs_convex⟩
    refine' ⟨interior s, _, interior_subset⟩
    exact
      ⟨mem_interior_iff_mem_nhds.mpr hs_nhds, isOpen_interior,
        hs_balanced.interior (mem_interior_iff_mem_nhds.mpr hs_nhds), hs_convex.interior⟩
  rintro s ⟨hs_zero, hs_open, hs_balanced, hs_convex⟩
  exact ⟨s, ⟨hs_open.mem_nhds hs_zero, hs_balanced, hs_convex⟩, rfl.subset⟩
#align nhds_basis_abs_convex_open nhds_basis_abs_convex_open

end NontriviallyNormedField

section AbsolutelyConvexSets

variable [TopologicalSpace E] [AddCommMonoid E] [Zero E] [SeminormedRing 𝕜]

variable [SMul 𝕜 E] [SMul ℝ E]

variable (𝕜 E)

/-- The type of absolutely convex open sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/AbsConvex/Variantbab5185187cd5a3ee21027b96958058486975099cfdea7c93eb577c9ac97da8d.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `460f31d8eee7ae15b8c21ab70179033b6549c922` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
