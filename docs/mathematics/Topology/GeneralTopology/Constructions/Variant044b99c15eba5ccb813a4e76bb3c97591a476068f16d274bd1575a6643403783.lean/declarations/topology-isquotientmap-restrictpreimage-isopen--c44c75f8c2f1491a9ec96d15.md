# Topology.IsQuotientMap.restrictPreimage_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f56f467-7ea8-a80a-a760-826e762c3e44",
  "kind": "theorem",
  "lexical_name": "Topology.IsQuotientMap.restrictPreimage_isOpen",
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
  "slug": "topology-isquotientmap-restrictpreimage-isopen--c44c75f8c2f1491a9ec96d15",
  "source": {
    "blob": "ad260d583f2d60ca9a6d9b358f550a8ebd6d220b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 495,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant044b99c15eba5ccb813a4e76bb3c97591a476068f16d274bd1575a6643403783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c44c75f8c2f1491a9ec96d15cf685e045699f6ec1cfb106bc40c505326ef4f96",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant044b99c15eba5ccb813a4e76bb3c97591a476068f16d274bd1575a6643403783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f56f467-7ea8-a80a-a760-826e762c3e44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Topology.IsQuotientMap.restrictPreimage_isOpen {f : X → Y} (hf : IsQuotientMap f)
    {s : Set Y} (hs : IsOpen s) : IsQuotientMap (s.restrictPreimage f) := by
  refine isQuotientMap_iff.2 ⟨hf.surjective.restrictPreimage _, fun U ↦ ?_⟩
  rw [hs.isOpenEmbedding_subtypeVal.isOpen_iff_image_isOpen, ← hf.isOpen_preimage,
    (hs.preimage hf.continuous).isOpenEmbedding_subtypeVal.isOpen_iff_image_isOpen,
    image_val_preimage_restrictPreimage]

@[deprecated (since := "2024-10-22")]
alias QuotientMap.restrictPreimage_isOpen := IsQuotientMap.restrictPreimage_isOpen

open scoped Set.Notation in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant044b99c15eba5ccb813a4e76bb3c97591a476068f16d274bd1575a6643403783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant044b99c15eba5ccb813a4e76bb3c97591a476068f16d274bd1575a6643403783.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad260d583f2d60ca9a6d9b358f550a8ebd6d220b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
