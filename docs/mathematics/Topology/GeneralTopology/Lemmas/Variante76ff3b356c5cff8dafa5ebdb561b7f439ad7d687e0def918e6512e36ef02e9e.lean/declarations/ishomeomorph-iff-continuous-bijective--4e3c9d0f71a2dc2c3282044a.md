# isHomeomorph_iff_continuous_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6baab7e4c182041ffe730e81632aaec349057894",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 538,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f0d0ea8-c9b9-e3a9-89fd-825b5c4f60f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e42fafd7-74cc-06e7-48d0-f002382e405d",
  "kind": "lemma",
  "lexical_name": "isHomeomorph_iff_continuous_bijective",
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
  "slug": "ishomeomorph-iff-continuous-bijective--4e3c9d0f71a2dc2c3282044a",
  "source": {
    "blob": "6baab7e4c182041ffe730e81632aaec349057894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 538,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variante76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e3c9d0f71a2dc2c3282044a17e9069f9a71eee5463f3764fe390a0e7f250a6e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variante76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e42fafd7-74cc-06e7-48d0-f002382e405d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isHomeomorph_iff_continuous_bijective [CompactSpace X] [T2Space Y] :
    IsHomeomorph f ↔ Continuous f ∧ Bijective f := by
  rw [isHomeomorph_iff_continuous_isClosedMap_bijective]
  refine and_congr_right fun hf ↦ ?_
  rw [eq_true hf.isClosedMap, true_and]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variante76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variante76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6baab7e4c182041ffe730e81632aaec349057894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
