# regular_boundaryIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cb6a4d8-bb98-7073-e12b-c4d006607f94",
  "kind": "theorem",
  "lexical_name": "regular_boundaryIntegrable",
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
  "slug": "regular-boundaryintegrable--642b0808cc3caccb7e84881a",
  "source": {
    "blob": "3ce76ec1e5d723bcae7f2380a2fd0de7ed6b24e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 179,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:642b0808cc3caccb7e84881aa9f76307a066f734a691f1ab1c8ed6f4757706b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cb6a4d8-bb98-7073-e12b-c4d006607f94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regular_boundaryIntegrable {N : ℕ}
    (extension : RectangleRegularExtension N) :
    RectangleBoundaryIntegrable N extension.regular := by
  have hleftEdge : leftEdge N ≤ 2 :=
    (leftEdge_neg N).le.trans (by norm_num)
  have hheight : -contourHeight N ≤ contourHeight N := by
    linarith [contourHeight_pos N]
  refine ⟨?_, ?_, ?_, ?_⟩
  · apply ContinuousOn.intervalIntegrable
    apply extension.continuous.comp (by fun_prop)
    intro u hu
    apply boundary_subset_closedRectangle N
    apply bottomPoint_mem_boundary N
    simpa only [uIcc_of_le hleftEdge] using hu
  · apply ContinuousOn.intervalIntegrable
    apply extension.continuous.comp (by fun_prop)
    intro u hu
    apply boundary_subset_closedRectangle N
    apply topPoint_mem_boundary N
    simpa only [uIcc_of_le hleftEdge] using hu
  · apply ContinuousOn.intervalIntegrable
    apply extension.continuous.comp (by fun_prop)
    intro t ht
    apply boundary_subset_closedRectangle N
    apply rightPoint_mem_boundary N
    simpa only [uIcc_of_le hheight] using ht
  · apply ContinuousOn.intervalIntegrable
    apply extension.continuous.comp (by fun_prop)
    intro t ht
    apply boundary_subset_closedRectangle N
    apply rectangleLeftPoint_mem_boundary N
    simpa only [uIcc_of_le hheight] using ht

/-- Punctured source agreement forces agreement on every boundary point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleRegularization.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ce76ec1e5d723bcae7f2380a2fd0de7ed6b24e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
