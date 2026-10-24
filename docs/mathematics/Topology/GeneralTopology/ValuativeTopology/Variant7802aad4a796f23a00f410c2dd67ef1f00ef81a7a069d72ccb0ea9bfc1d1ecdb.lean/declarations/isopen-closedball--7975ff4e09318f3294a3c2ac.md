# isOpen_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27470c74-c454-d328-427a-89c738a87442",
  "kind": "theorem",
  "lexical_name": "isOpen_closedBall",
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
  "slug": "isopen-closedball--7975ff4e09318f3294a3c2ac",
  "source": {
    "blob": "7ba47d631fda672aa66fff4c8f28932743a08507",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 334,
    "path": "GRWTSK/Topology/GeneralTopology/ValuativeTopology/Variant7802aad4a796f23a00f410c2dd67ef1f00ef81a7a069d72ccb0ea9bfc1d1ecdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7975ff4e09318f3294a3c2acd02088657f8cf90945199422ebba6bf4f07b121d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuativeTopology/Variant7802aad4a796f23a00f410c2dd67ef1f00ef81a7a069d72ccb0ea9bfc1d1ecdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27470c74-c454-d328-427a-89c738a87442`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isOpen_closedBall {r : ValueGroup₀ (.ofClass v)} (hr : r ≠ 0) :
  IsOpen {x | v.restrict x ≤ r} := by
  rw [isOpen_iff_mem_nhds]
  intro x hx
  simp only [v.mem_nhds_iff, ofPred_subset_ofPred]
  exact ⟨Units.mk0 _ hr, fun y hy ↦
    (sub_add_cancel y x).symm ▸ le_trans (v.restrict.map_add _ _) (max_le (le_of_lt hy) hx)⟩

/-- For any valuation `v` compatible with the valuative relation on `R`, the closed `r`-ball
around zero `{x | v.restrict x ≤ r}` is closed in the valuative topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuativeTopology/Variant7802aad4a796f23a00f410c2dd67ef1f00ef81a7a069d72ccb0ea9bfc1d1ecdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuativeTopology/Variant7802aad4a796f23a00f410c2dd67ef1f00ef81a7a069d72ccb0ea9bfc1d1ecdb.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ba47d631fda672aa66fff4c8f28932743a08507` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
