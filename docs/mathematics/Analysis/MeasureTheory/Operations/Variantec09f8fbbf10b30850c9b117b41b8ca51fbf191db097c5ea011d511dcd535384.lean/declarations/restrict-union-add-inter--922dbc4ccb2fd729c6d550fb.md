# restrict_union_add_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec519469-5bf9-ffd3-c3ee-1990691fa46c",
  "kind": "theorem",
  "lexical_name": "restrict_union_add_inter",
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
  "slug": "restrict-union-add-inter--922dbc4ccb2fd729c6d550fb",
  "source": {
    "blob": "9205c48eb761706cc18537e786739a6673faaa89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 455,
    "path": "GRWTSK/Analysis/MeasureTheory/Operations/Variantec09f8fbbf10b30850c9b117b41b8ca51fbf191db097c5ea011d511dcd535384.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:922dbc4ccb2fd729c6d550fbcc4746f0d011d1036caf86cc67c0c4c6909c1fc0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Operations/Variantec09f8fbbf10b30850c9b117b41b8ca51fbf191db097c5ea011d511dcd535384.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec519469-5bf9-ffd3-c3ee-1990691fa46c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrict_union_add_inter (hs : MeasurableSet s) (ht : MeasurableSet t) :
    v.restrict (s ∪ t) + v.restrict (s ∩ t) = v.restrict s + v.restrict t := by
  rw [← v.restrict_inter_add_sdiff (hs.union ht) ht, union_inter_cancel_right, union_sdiff_right,
    ← v.restrict_inter_add_sdiff hs ht, add_comm, ← add_assoc, add_right_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Operations/Variantec09f8fbbf10b30850c9b117b41b8ca51fbf191db097c5ea011d511dcd535384.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Operations/Variantec09f8fbbf10b30850c9b117b41b8ca51fbf191db097c5ea011d511dcd535384.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9205c48eb761706cc18537e786739a6673faaa89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
