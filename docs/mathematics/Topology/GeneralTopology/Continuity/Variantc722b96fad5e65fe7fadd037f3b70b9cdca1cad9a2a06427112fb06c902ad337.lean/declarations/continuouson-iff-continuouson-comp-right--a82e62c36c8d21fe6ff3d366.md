# continuousOn_iff_continuousOn_comp_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fda8bed9-df53-e69a-0bad-d217bd5554a9",
  "kind": "theorem",
  "lexical_name": "continuousOn_iff_continuousOn_comp_right",
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
  "slug": "continuouson-iff-continuouson-comp-right--a82e62c36c8d21fe6ff3d366",
  "source": {
    "blob": "50a55be9e76555cd9149977c32a7154a5be0e7cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 166,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantc722b96fad5e65fe7fadd037f3b70b9cdca1cad9a2a06427112fb06c902ad337.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a82e62c36c8d21fe6ff3d36629020eb730e19091daea102715962ae073028adb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantc722b96fad5e65fe7fadd037f3b70b9cdca1cad9a2a06427112fb06c902ad337.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fda8bed9-df53-e69a-0bad-d217bd5554a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_iff_continuousOn_comp_right {f : Y → Z} {s : Set Y} (h : s ⊆ e.target) :
    ContinuousOn f s ↔ ContinuousOn (f ∘ e) (e.source ∩ e ⁻¹' s) := by
  simp only [← e.symm_image_eq_source_inter_preimage h, ContinuousOn, forall_mem_image]
  refine forall₂_congr fun x hx => ?_
  rw [e.continuousWithinAt_iff_continuousWithinAt_comp_right (h hx),
    e.symm_image_eq_source_inter_preimage h, inter_comm, continuousWithinAt_inter]
  exact IsOpen.mem_nhds e.open_source (e.map_target (h hx))

/-- Continuity within a set at a point can be read under left composition with a local
homeomorphism if a neighborhood of the initial point is sent to the source of the local
homeomorphism -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantc722b96fad5e65fe7fadd037f3b70b9cdca1cad9a2a06427112fb06c902ad337.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantc722b96fad5e65fe7fadd037f3b70b9cdca1cad9a2a06427112fb06c902ad337.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50a55be9e76555cd9149977c32a7154a5be0e7cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
