# completeSpace_continuousMultilinearMap_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "158bddf9b3eed744fc603d1840bf9333661b98d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5dc8ee309154ae770dabbc827df2a25c7b78c9b77814804c5f733981db73c22a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d26ac5a9-bb07-775d-4011-09ac0ec3315b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:130bdc73-1d3c-d740-e948-52f81e7487ea",
  "kind": "lemma",
  "lexical_name": "completeSpace_continuousMultilinearMap_iff",
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
  "slug": "completespace-continuousmultilinearmap-iff--e6d5689a48151b4b39c868b1",
  "source": {
    "blob": "158bddf9b3eed744fc603d1840bf9333661b98d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/CompleteCodomain/Variant5dc8ee309154ae770dabbc827df2a25c7b78c9b77814804c5f733981db73c22a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6d5689a48151b4b39c868b1e5f28c7bb91d5b1ac7b94e84b6db998094eff425",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/CompleteCodomain/Variant5dc8ee309154ae770dabbc827df2a25c7b78c9b77814804c5f733981db73c22a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:130bdc73-1d3c-d740-e948-52f81e7487ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma completeSpace_continuousMultilinearMap_iff {m : ∀ i, M i} (hm : ∀ i, m i ≠ 0) :
    CompleteSpace (ContinuousMultilinearMap 𝕜 M F) ↔ CompleteSpace F :=
  ⟨fun _h ↦ completeSpace_of_completeSpace_continuousMultilinearMap 𝕜 F hm, fun _h ↦ inferInstance⟩

end SeparatingDual
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/CompleteCodomain/Variant5dc8ee309154ae770dabbc827df2a25c7b78c9b77814804c5f733981db73c22a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/CompleteCodomain/Variant5dc8ee309154ae770dabbc827df2a25c7b78c9b77814804c5f733981db73c22a.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `158bddf9b3eed744fc603d1840bf9333661b98d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
