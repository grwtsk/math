# iso_isometry_of_normNoninc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b0eb731-d8f4-202c-f031-dbd1a02341da",
  "kind": "theorem",
  "lexical_name": "iso_isometry_of_normNoninc",
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
  "slug": "iso-isometry-of-normnoninc--67ff74be315c1d68ef069cd2",
  "source": {
    "blob": "55969c4ceb839c3eb4379814ead7cfcd55101624",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 127,
    "path": "GRWTSK/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67ff74be315c1d68ef069cd2555c0165ce660873aaa4a9ad7627f054e8f3ad71",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b0eb731-d8f4-202c-f031-dbd1a02341da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iso_isometry_of_normNoninc {V W : SemiNormedGroupCat} (i : V ≅ W) (h1 : i.hom.NormNoninc)
    (h2 : i.inv.NormNoninc) : Isometry i.hom := by
  apply AddMonoidHomClass.isometry_of_norm
  intro v
  apply le_antisymm (h1 v)
  calc
    ‖v‖ = ‖i.inv (i.hom v)‖ := by rw [Iso.hom_inv_id_apply]
    _ ≤ ‖i.hom v‖ := h2 _
#align SemiNormedGroup.iso_isometry_of_norm_noninc SemiNormedGroupCat.iso_isometry_of_normNoninc

end SemiNormedGroupCat

/-- `SemiNormedGroupCat₁` is a type synonym for `SemiNormedGroupCat`,
which we shall equip with the category structure consisting only of the norm non-increasing maps.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/SemiNormedGroupCat/Variantbca5ebe957cb8a5e5979d35a741b85afca135fd8ccdc3ac210c8c9b96088ec65.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55969c4ceb839c3eb4379814ead7cfcd55101624` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
