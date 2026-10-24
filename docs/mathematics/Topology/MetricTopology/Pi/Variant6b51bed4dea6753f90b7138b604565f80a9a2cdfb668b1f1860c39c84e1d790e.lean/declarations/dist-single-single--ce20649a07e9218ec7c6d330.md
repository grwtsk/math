# dist_single_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27d029ee8e68efb7a99c2399e7cd2678bd5d7889",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b51bed4dea6753f90b7138b604565f80a9a2cdfb668b1f1860c39c84e1d790e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8faad58-fdce-647b-968b-0a947b28669e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:654753a5-d30f-5801-8289-440fa86e34e6",
  "kind": "lemma",
  "lexical_name": "dist_single_single",
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
  "slug": "dist-single-single--ce20649a07e9218ec7c6d330",
  "source": {
    "blob": "27d029ee8e68efb7a99c2399e7cd2678bd5d7889",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 178,
    "path": "GRWTSK/Topology/MetricTopology/Pi/Variant6b51bed4dea6753f90b7138b604565f80a9a2cdfb668b1f1860c39c84e1d790e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce20649a07e9218ec7c6d330677734c1a53de9e82807367bf920ad69a0c38f53",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pi/Variant6b51bed4dea6753f90b7138b604565f80a9a2cdfb668b1f1860c39c84e1d790e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:654753a5-d30f-5801-8289-440fa86e34e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dist_single_single {Y : Type*} [PseudoMetricSpace Y] [Zero Y] [DecidableEq β]
    (i j : β) (a b : Y) (h : i ≠ j) :
    dist (Pi.single i a : β → Y) (Pi.single j b) = max (dist a 0) (dist b 0) := by
  simp only [dist_nndist, nndist_single_single i j a b h, NNReal.coe_max]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pi/Variant6b51bed4dea6753f90b7138b604565f80a9a2cdfb668b1f1860c39c84e1d790e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pi/Variant6b51bed4dea6753f90b7138b604565f80a9a2cdfb668b1f1860c39c84e1d790e.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27d029ee8e68efb7a99c2399e7cd2678bd5d7889` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
