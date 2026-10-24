# ContinuousAt.prodMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32a4e92f214c24d3ffa422acb7e345a78119464b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 366,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e7ed699c43351eef51053b774a3347c6f8989ee65ce9b53f5a8eb0dde57f82d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b957f961-09e2-2359-d478-a49cf8369bee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1250a501-88f2-b48a-4e87-d0772629a324",
  "kind": "theorem",
  "lexical_name": "ContinuousAt.prodMap",
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
  "slug": "continuousat-prodmap--1790ecd5728297df0774823c",
  "source": {
    "blob": "32a4e92f214c24d3ffa422acb7e345a78119464b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 366,
    "path": "GRWTSK/Topology/GeneralTopology/SumProd/Variant0e7ed699c43351eef51053b774a3347c6f8989ee65ce9b53f5a8eb0dde57f82d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1790ecd5728297df0774823caeaf14d015658ac058ac690d498de1070756ef52",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SumProd/Variant0e7ed699c43351eef51053b774a3347c6f8989ee65ce9b53f5a8eb0dde57f82d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1250a501-88f2-b48a-4e87-d0772629a324`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousAt.prodMap {f : X → Z} {g : Y → W} {p : X × Y} (hf : ContinuousAt f p.fst)
    (hg : ContinuousAt g p.snd) : ContinuousAt (Prod.map f g) p :=
  hf.fst''.prodMk hg.snd''

/-- A version of `ContinuousAt.prodMap` that avoids `Prod.fst`/`Prod.snd`
by assuming that the point is `(x, y)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SumProd/Variant0e7ed699c43351eef51053b774a3347c6f8989ee65ce9b53f5a8eb0dde57f82d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SumProd/Variant0e7ed699c43351eef51053b774a3347c6f8989ee65ce9b53f5a8eb0dde57f82d.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32a4e92f214c24d3ffa422acb7e345a78119464b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
