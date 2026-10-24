# mulIndicator_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac9ba262a7111ab1494911a0519dffbd8180bd60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05b68166-3e64-b822-244e-f6d54c1cfdfb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1abe1794-d556-7ade-672e-745aeb04bcb2",
  "kind": "theorem",
  "lexical_name": "mulIndicator_const",
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
  "slug": "mulindicator-const--a22b4ed5f393c1906a1ecfd3",
  "source": {
    "blob": "ac9ba262a7111ab1494911a0519dffbd8180bd60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 183,
    "path": "GRWTSK/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a22b4ed5f393c1906a1ecfd38ee9bb4cd3c639e4b1b43c9eebe68c9ceabb0846",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1abe1794-d556-7ade-672e-745aeb04bcb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulIndicator_const (h : EventuallyEmptyOrUniv s l) (c : β) :
    EventuallyConst (s.mulIndicator fun _ ↦ c) l := by
  classical exact h.comp (if · then c else 1)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EventuallyConst/Variant37db4927ed3621b3228ccac0d7f4c258fda421a8f762e154a03cf4b5cf47bd4b.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac9ba262a7111ab1494911a0519dffbd8180bd60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
