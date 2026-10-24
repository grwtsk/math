# completeCycleTransport_not_involutive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c729cc82a0c98452be7d925093abd06c68df8b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9bca6dd-8d6d-f918-d931-296b1c44864d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f88824f4-1d41-b3c0-1ea1-867c7f7425e1",
  "kind": "theorem",
  "lexical_name": "completeCycleTransport_not_involutive",
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
  "slug": "completecycletransport-not-involutive--961861f1466654d0569b1479",
  "source": {
    "blob": "2c729cc82a0c98452be7d925093abd06c68df8b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 254,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:961861f1466654d0569b1479f47379d0b03afc4803b718bab8398e358d681348",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f88824f4-1d41-b3c0-1ea1-867c7f7425e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeCycleTransport_not_involutive
    {cycle : DirectedCycleQuantum X}
    (witness : CompleteCycleOrderWitness cycle) :
    (cycle.forwardTransport cycle.period) ^ 2 ≠ 1 := by
  exact witness.minimal 2 (by decide) witness.order_gt_two

end DirectedCycleQuantum

end FinitePermutationDynamics
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c729cc82a0c98452be7d925093abd06c68df8b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
