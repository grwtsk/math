# raster_targets_global_locus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed88f33a-88f7-f2da-6096-40c67ccf8f12",
  "kind": "theorem",
  "lexical_name": "raster_targets_global_locus",
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
  "slug": "raster-targets-global-locus--b30926129f428e9ec77af753",
  "source": {
    "blob": "2f146c9ec185fd39351c382ce0d0a1a06495180a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 168,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Variant1e5155f05b1bd2aa32390160f5dad2a930ea5faf6d31119d66676fbf4dbd813b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b30926129f428e9ec77af7533ba3d16876d619ee16eaafaabf4f22e520efa4b0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Variant1e5155f05b1bd2aa32390160f5dad2a930ea5faf6d31119d66676fbf4dbd813b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed88f33a-88f7-f2da-6096-40c67ccf8f12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem raster_targets_global_locus
    (transaction : CrossLayerSurgeryTransaction G V carrier F P)
    {patch : RasterSurgeryEnvelope G V carrier}
    (h : transaction.rasterPatch = some patch) :
    patch.surgery.patch.locus = transaction.globalLocus :=
  transaction.raster_locus_agrees patch h

/-- Every present fabric patch targets the transaction's exact locus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Variant1e5155f05b1bd2aa32390160f5dad2a930ea5faf6d31119d66676fbf4dbd813b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SurgeryTransaction/Variant1e5155f05b1bd2aa32390160f5dad2a930ea5faf6d31119d66676fbf4dbd813b.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f146c9ec185fd39351c382ce0d0a1a06495180a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
