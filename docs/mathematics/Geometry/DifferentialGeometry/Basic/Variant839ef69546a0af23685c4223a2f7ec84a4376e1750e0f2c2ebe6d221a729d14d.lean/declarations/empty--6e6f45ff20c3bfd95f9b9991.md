# empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a5a7b0b5950ec0a486bdf1121bce60c15dc729d5ea8a80ae812fc5a6e58a7bd",
  "kind": "instance",
  "lexical_name": "empty",
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
  "slug": "empty--6e6f45ff20c3bfd95f9b9991",
  "source": {
    "blob": "ee3c2d7d5a330683c58061f8093012ae5079e619",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 795,
    "line": 776,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant839ef69546a0af23685c4223a2f7ec84a4376e1750e0f2c2ebe6d221a729d14d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e6f45ff20c3bfd95f9b99911377d09d0d7bf2076ebad2b96ac58720aa16d2b7",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant839ef69546a0af23685c4223a2f7ec84a4376e1750e0f2c2ebe6d221a729d14d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a5a7b0b5950ec0a486bdf1121bce60c15dc729d5ea8a80ae812fc5a6e58a7bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 776–795.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance empty [IsEmpty M] : IsManifold I n M := by
  apply isManifold_of_contDiffOn
  intro e e' _ _ x hx
  set t := I.symm ⁻¹' (e.symm ≫ₕ e').source ∩ range I
  -- Since `M` is empty, the condition about compatibility of transition maps is vacuous.
  have : (e.symm ≫ₕ e').source = ∅ := calc (e.symm ≫ₕ e').source
    _ = (e.symm.source) ∩ e.symm ⁻¹' e'.source := by rw [← PartialHomeomorph.trans_source]
    _ = (e.symm.source) ∩ e.symm ⁻¹' ∅ := by rw [eq_empty_of_isEmpty (e'.source)]
    _ = (e.symm.source) ∩ ∅ := by rw [preimage_empty]
    _ = ∅ := inter_empty e.symm.source
  have : t = ∅ := calc t
    _ = I.symm ⁻¹' (e.symm ≫ₕ e').source ∩ range I := by
      rw [← Subtype.preimage_val_eq_preimage_val_iff]
    _ = ∅ ∩ range I := by rw [this, preimage_empty]
    _ = ∅ := empty_inter (range I)
  apply (this ▸ hx).elim

attribute [local instance] ChartedSpace.of_discreteTopology in
variable (n) in
/-- A discrete space `M` is a smooth manifold over the trivial model on a trivial normed space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant839ef69546a0af23685c4223a2f7ec84a4376e1750e0f2c2ebe6d221a729d14d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant839ef69546a0af23685c4223a2f7ec84a4376e1750e0f2c2ebe6d221a729d14d.lean#L776).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee3c2d7d5a330683c58061f8093012ae5079e619` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
