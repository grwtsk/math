# coe_ofContinuousOpenRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4acd020f153386f3b70cab436fb7a9c689ba2a43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0a50ce74ed65fe5dd9fa25f901c9eeeb3241e3da4539805d58893ef8a6563a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3145a5ec-e1b4-b3a8-1625-4d8e6612e653",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c7d6a08-194c-7b6d-e08f-f40fa5fa86a2",
  "kind": "theorem",
  "lexical_name": "coe_ofContinuousOpenRestrict",
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
  "slug": "coe-ofcontinuousopenrestrict--831fde68a08d6b2deb2295d1",
  "source": {
    "blob": "4acd020f153386f3b70cab436fb7a9c689ba2a43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc0a50ce74ed65fe5dd9fa25f901c9eeeb3241e3da4539805d58893ef8a6563a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:831fde68a08d6b2deb2295d19b22600009bcd0080194aed27159123f3164e55f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc0a50ce74ed65fe5dd9fa25f901c9eeeb3241e3da4539805d58893ef8a6563a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c7d6a08-194c-7b6d-e08f-f40fa5fa86a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_ofContinuousOpenRestrict (e : PartialEquiv X Y) (hc : ContinuousOn e e.source)
    (ho : IsOpenMap (e.source.domRestrict e)) (hs : IsOpen e.source) :
    ⇑(ofContinuousOpenRestrict e hc ho hs) = e :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc0a50ce74ed65fe5dd9fa25f901c9eeeb3241e3da4539805d58893ef8a6563a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc0a50ce74ed65fe5dd9fa25f901c9eeeb3241e3da4539805d58893ef8a6563a3.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4acd020f153386f3b70cab436fb7a9c689ba2a43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
