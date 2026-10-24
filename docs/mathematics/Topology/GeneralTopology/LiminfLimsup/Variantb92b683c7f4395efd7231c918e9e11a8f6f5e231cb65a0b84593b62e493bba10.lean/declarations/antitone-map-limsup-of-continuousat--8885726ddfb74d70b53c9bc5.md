# Antitone.map_limsup_of_continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bffb8421dbb296b06f3d93ffb4d1bd10aa2abf47",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 548,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b92b683c7f4395efd7231c918e9e11a8f6f5e231cb65a0b84593b62e493bba10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5736aca4-ba21-cbde-72c4-d4042107ed5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2eb1ef95-6181-7b51-ecbf-f6fc6b5fe8b5",
  "kind": "theorem",
  "lexical_name": "Antitone.map_limsup_of_continuousAt",
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
  "slug": "antitone-map-limsup-of-continuousat--8885726ddfb74d70b53c9bc5",
  "source": {
    "blob": "bffb8421dbb296b06f3d93ffb4d1bd10aa2abf47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 548,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantb92b683c7f4395efd7231c918e9e11a8f6f5e231cb65a0b84593b62e493bba10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8885726ddfb74d70b53c9bc59259f893f337951217228b1217ceeb769ecba630",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variantb92b683c7f4395efd7231c918e9e11a8f6f5e231cb65a0b84593b62e493bba10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2eb1ef95-6181-7b51-ecbf-f6fc6b5fe8b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Antitone.map_limsup_of_continuousAt {f : R → S} (f_decr : Antitone f) (a : ι → R)
    (f_cont : ContinuousAt f (F.limsup a))
    (bdd_above : F.IsBoundedUnder (· ≤ ·) a := by isBoundedDefault)
    (cobdd : F.IsCoboundedUnder (· ≤ ·) a := by isBoundedDefault) :
    f (F.limsup a) = F.liminf (f ∘ a) :=
  f_decr.map_limsSup_of_continuousAt f_cont bdd_above cobdd

set_option backward.isDefEq.respectTransparency false in
/-- An antitone function between (conditionally) complete linear ordered spaces sends a
`Filter.limsInf` to the `Filter.limsup` of the image if the function is continuous at the `limsInf`
(and the filter is bounded from below and frequently bounded from above). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variantb92b683c7f4395efd7231c918e9e11a8f6f5e231cb65a0b84593b62e493bba10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variantb92b683c7f4395efd7231c918e9e11a8f6f5e231cb65a0b84593b62e493bba10.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bffb8421dbb296b06f3d93ffb4d1bd10aa2abf47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
