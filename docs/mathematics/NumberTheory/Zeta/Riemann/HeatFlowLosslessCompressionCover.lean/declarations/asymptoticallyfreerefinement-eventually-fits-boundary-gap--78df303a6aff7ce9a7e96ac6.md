# AsymptoticallyFreeRefinement.eventually_fits_boundary_gap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0ee29b1-40c8-cc56-ab8e-47169db372b5",
  "kind": "theorem",
  "lexical_name": "AsymptoticallyFreeRefinement.eventually_fits_boundary_gap",
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
  "slug": "asymptoticallyfreerefinement-eventually-fits-boundary-gap--78df303a6aff7ce9a7e96ac6",
  "source": {
    "blob": "07d01211798fe4e845067da3fced11bea45821c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 177,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78df303a6aff7ce9a7e96ac66b19fae415e12840f0baf63f3a6f77aabe28c861",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0ee29b1-40c8-cc56-ab8e-47169db372b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AsymptoticallyFreeRefinement.eventually_fits_boundary_gap
    (refinement : AsymptoticallyFreeRefinement) :
    ∃ cutoff : ℕ, ∀ n, cutoff ≤ n →
      threeQuarterBoundary + refinement.cost n < sevenEighthBoundary := by
  obtain ⟨cutoff, hcutoff⟩ :=
    refinement.eventually_lt (1 / 8 : ℝ) (by norm_num)
  refine ⟨cutoff, ?_⟩
  intro n hn
  calc
    threeQuarterBoundary + refinement.cost n <
        threeQuarterBoundary + (1 / 8 : ℝ) :=
      by simpa only [add_comm] using add_lt_add_left (hcutoff n hn) threeQuarterBoundary
    _ = sevenEighthBoundary := by
      norm_num [threeQuarterBoundary, sevenEighthBoundary]

/-- The minimal finite-state observable used below. This is deliberately less
than a definition of a sofic shift, presentation, language, or entropy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07d01211798fe4e845067da3fced11bea45821c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
