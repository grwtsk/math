# Antitone.map_limsInf_of_continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b74ea00a047a9c4ce5e8ec4f3d6afd4fd6b5c4a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 376,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80e365eb-d389-5528-26b4-f577a726e65b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:578cf100-6796-e04b-913d-6032a277e20c",
  "kind": "theorem",
  "lexical_name": "Antitone.map_limsInf_of_continuousAt",
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
  "slug": "antitone-map-limsinf-of-continuousat--c8cc743733282c12318cd143",
  "source": {
    "blob": "b74ea00a047a9c4ce5e8ec4f3d6afd4fd6b5c4a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 376,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8cc743733282c12318cd143cc36bdb723140a78a616d5046aa27350558b24fe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:578cf100-6796-e04b-913d-6032a277e20c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Antitone.map_limsInf_of_continuousAt {F : Filter R} [NeBot F] {f : R → S}
    (f_decr : Antitone f) (f_cont : ContinuousAt f F.limsInf)
    (bdd_above : F.IsBounded (· ≤ ·) := by isBoundedDefault)
    (bdd_below : F.IsBounded (· ≥ ·) := by isBoundedDefault) : f F.limsInf = F.limsup f :=
  Antitone.map_limsSup_of_continuousAt (R := Rᵒᵈ) (S := Sᵒᵈ) f_decr.dual f_cont bdd_below bdd_above
set_option linter.uppercaseLean3 false in
#align antitone.map_Liminf_of_continuous_at Antitone.map_limsInf_of_continuousAt

/-- A continuous antitone function between (conditionally) complete linear ordered spaces sends a
`Filter.liminf` to the `Filter.limsup` of the images (if the filter is bounded from above and
below). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantd4693b471d3246c751201650cd5bf3230d610034a35c94a76b519ab6507c620c.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b74ea00a047a9c4ce5e8ec4f3d6afd4fd6b5c4a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
