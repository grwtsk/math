# continuous_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3f60c89-286c-cedc-4e1a-04d9eef7d007",
  "kind": "theorem",
  "lexical_name": "continuous_comp",
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
  "slug": "continuous-comp--ce3ee135d743a2c7ed4bf109",
  "source": {
    "blob": "590ae39e7aab26e6d3953f21e6e38a9938ce61dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 100,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce3ee135d743a2c7ed4bf109bb731ad642c2d990d177d45f0eee3f8cfe665332",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3f60c89-286c-cedc-4e1a-04d9eef7d007`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_comp [LocallyCompactSpace B] :
    Continuous fun f : ContinuousMonoidHom A B × ContinuousMonoidHom B C => f.2.comp f.1 :=
  (isInducing_toContinuousMap A C).continuous_iff.2 <|
    ContinuousMap.continuous_comp'.comp
      ((isInducing_toContinuousMap A B).prodMap (isInducing_toContinuousMap B C)).continuous

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variantda77117ea183bc7ce038669a8de437fd647157f9d18c618e6cc2944d3659ec42.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `590ae39e7aab26e6d3953f21e6e38a9938ce61dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
