# ofCLM_toCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2633257d7b4f13e712f9261861c86375a97a8964",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:436a4c37-c7e5-c277-e510-0f2d44310169",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a73d4d03-a2e1-5720-a27f-212cee82cf03",
  "kind": "lemma",
  "lexical_name": "ofCLM_toCLM",
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
  "slug": "ofclm-toclm--ed16cff9479e5100fa3114f2",
  "source": {
    "blob": "2633257d7b4f13e712f9261861c86375a97a8964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 212,
    "path": "GRWTSK/Topology/GeneralTopology/WeakOperatorTopology/Variant6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed16cff9479e5100fa3114f2671ba68f2a52fdb5387f2d2eb6fcd5395d8cd8bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakOperatorTopology/Variant6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a73d4d03-a2e1-5720-a27f-212cee82cf03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofCLM_toCLM (A : E →SWOT[σ] F) : ofCLM (toCLM A) = A := rfl

-- not marked `simp` because Lean just sees `A` on the left-hand side
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakOperatorTopology/Variant6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakOperatorTopology/Variant6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2633257d7b4f13e712f9261861c86375a97a8964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
