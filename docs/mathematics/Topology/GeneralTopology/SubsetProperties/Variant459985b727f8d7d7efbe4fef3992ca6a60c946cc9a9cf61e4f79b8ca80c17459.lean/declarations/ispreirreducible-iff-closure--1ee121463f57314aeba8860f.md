# isPreirreducible_iff_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e52814ff071f39927c50c6b77ea81c348738f4dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1739,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f72fe683-7624-eb5c-5c5b-5cdc384ac864",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03e68fef-7072-03a9-c5a9-9043fd2af920",
  "kind": "theorem",
  "lexical_name": "isPreirreducible_iff_closure",
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
  "slug": "ispreirreducible-iff-closure--1ee121463f57314aeba8860f",
  "source": {
    "blob": "e52814ff071f39927c50c6b77ea81c348738f4dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1745,
    "line": 1739,
    "path": "GRWTSK/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ee121463f57314aeba8860fbfdfe1dc1f2339aca3b8a2d18fbe60e6181ed8d7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03e68fef-7072-03a9-c5a9-9043fd2af920`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1739–1745.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPreirreducible_iff_closure {s : Set α} :
    IsPreirreducible (closure s) ↔ IsPreirreducible s :=
  forall₄_congr fun u v hu hv => by
    iterate 3 rw [closure_inter_open_nonempty_iff]
    exacts [hu.inter hv, hv, hu]
#align is_preirreducible_iff_closure isPreirreducible_iff_closure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean#L1739).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e52814ff071f39927c50c6b77ea81c348738f4dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
