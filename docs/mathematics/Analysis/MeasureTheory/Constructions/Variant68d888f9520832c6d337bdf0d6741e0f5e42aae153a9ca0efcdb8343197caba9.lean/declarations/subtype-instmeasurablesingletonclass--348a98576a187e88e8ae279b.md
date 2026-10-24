# Subtype.instMeasurableSingletonClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c20d21784d0a2ca6ba93d1daa2325b529f65573eff95426b6e4590cf39016c6b",
  "kind": "instance",
  "lexical_name": "Subtype.instMeasurableSingletonClass",
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
  "slug": "subtype-instmeasurablesingletonclass--348a98576a187e88e8ae279b",
  "source": {
    "blob": "8dc7e13c975ea4399781d9b1eb72c50572a31561",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 193,
    "path": "GRWTSK/Analysis/MeasureTheory/Constructions/Variant68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:348a98576a187e88e8ae279b8d2d333fcb6a6166b384b145a089e69ce8823d23",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Constructions/Variant68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c20d21784d0a2ca6ba93d1daa2325b529f65573eff95426b6e4590cf39016c6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Subtype.instMeasurableSingletonClass {p : α → Prop} [MeasurableSingletonClass α] :
    MeasurableSingletonClass (Subtype p) where
  measurableSet_singleton x :=
    ⟨{(x : α)}, measurableSet_singleton (x : α), by
      rw [← image_singleton, preimage_image_eq _ Subtype.val_injective]⟩

end

variable {m : MeasurableSpace α} {mβ : MeasurableSpace β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Constructions/Variant68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Constructions/Variant68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dc7e13c975ea4399781d9b1eb72c50572a31561` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
