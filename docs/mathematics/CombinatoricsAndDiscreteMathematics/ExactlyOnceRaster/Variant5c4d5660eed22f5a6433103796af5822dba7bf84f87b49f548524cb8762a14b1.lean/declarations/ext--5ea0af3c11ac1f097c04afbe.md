# ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e24e015c2a0f629bd9a679ce140557935bf34ac3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:225c5ead-6e51-7ebf-eaa1-368b53d8b8ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f890deb-f91d-2a66-b36e-8788dc648bb3",
  "kind": "theorem",
  "lexical_name": "ext",
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
  "slug": "ext--5ea0af3c11ac1f097c04afbe",
  "source": {
    "blob": "e24e015c2a0f629bd9a679ce140557935bf34ac3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 93,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ea0af3c11ac1f097c04afbeb7b96e51bc97d430bf7619b442ba6e9cc5be7789",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f890deb-f91d-2a66-b36e-8788dc648bb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ext
    {left right : RasterState Cell Event}
    (raster :
      ∀ cell, left.raster.bit cell = right.raster.bit cell)
    (ledger :
      ∀ event, left.ledger.seen event = right.ledger.seen event) :
    left = right := by
  cases left
  cases right
  simp only [mk.injEq]
  constructor
  · exact RasterSection.ext raster
  · exact EventLedger.ext ledger

end RasterState

/-- An event fires exactly when its condition is true and it is not yet seen. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e24e015c2a0f629bd9a679ce140557935bf34ac3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
