# liftCommShift_compatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1876ef4343f554a3f73b371a03a5af56bf91b45b70f930fdd7520cb0b0cf4865",
  "kind": "instance",
  "lexical_name": "liftCommShift_compatibility",
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
  "slug": "liftcommshift-compatibility--c7f2fb4a9c3f1c184c4972be",
  "source": {
    "blob": "3ea668302cc4c4e943bc6b6d143e5fbc410714a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 137,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7f2fb4a9c3f1c184c4972beadb2943e91a69ea9642c640e823f90c15f91c528",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1876ef4343f554a3f73b371a03a5af56bf91b45b70f930fdd7520cb0b0cf4865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance liftCommShift_compatibility :
    NatTrans.CommShift (Quotient.lift.isLift r F hF).hom A where
  shift_comm a := by
    ext X
    dsimp
    erw [Functor.map_id, id_comp, comp_id]
    rw [Functor.commShiftIso_comp_hom_app]
    erw [LiftCommShift.iso_hom_app]
    rw [← Functor.map_comp_assoc, Iso.hom_inv_id_app, Functor.map_id, id_comp]

end Quotient

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ea668302cc4c4e943bc6b6d143e5fbc410714a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
