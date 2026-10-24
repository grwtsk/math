# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:743c5f11a4edb7eaa330e280dc27d1b1108e71b31b5c3daec3e319d4dcfa5030",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--fbcff76639a9cd0130b3b4f2",
  "source": {
    "blob": "8e8f3dbe048bb75a79a5598e919021c27240e165",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 522,
    "path": "GRWTSK/Analysis/MeasureTheory/Defs/Variant3066d446ab01534a3ec4f95138a85e1681ddbd13aa46489bd0514f86af67eb90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbcff76639a9cd0130b3b4f26a29dcd763d87ef253acb4b863960408e0747f44",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Defs/Variant3066d446ab01534a3ec4f95138a85e1681ddbd13aa46489bd0514f86af67eb90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:743c5f11a4edb7eaa330e280dc27d1b1108e71b31b5c3daec3e319d4dcfa5030`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) MeasurableSingletonClass.toDiscreteMeasurableSpace [MeasurableSpace α]
    [MeasurableSingletonClass α] [Countable α] : DiscreteMeasurableSpace α where
  forall_measurableSet _ := (Set.to_countable _).measurableSet

section DiscreteMeasurableSpace
variable [MeasurableSpace α] [MeasurableSpace β] [DiscreteMeasurableSpace α] {s : Set α} {f : α → β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Defs/Variant3066d446ab01534a3ec4f95138a85e1681ddbd13aa46489bd0514f86af67eb90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Defs/Variant3066d446ab01534a3ec4f95138a85e1681ddbd13aa46489bd0514f86af67eb90.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e8f3dbe048bb75a79a5598e919021c27240e165` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
