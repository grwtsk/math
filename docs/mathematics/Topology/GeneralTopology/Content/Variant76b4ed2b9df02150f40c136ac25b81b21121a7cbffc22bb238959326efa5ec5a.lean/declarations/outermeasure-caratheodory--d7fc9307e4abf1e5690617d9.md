# outerMeasure_caratheodory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "111df26a5302d8043902da8a667832fe9805f21c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 297,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76b4ed2b9df02150f40c136ac25b81b21121a7cbffc22bb238959326efa5ec5a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c4aea3d-c2d7-d97c-f5c7-497f40431ca8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6629ff8f-0591-f28c-113a-7ee9b8ce502d",
  "kind": "theorem",
  "lexical_name": "outerMeasure_caratheodory",
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
  "slug": "outermeasure-caratheodory--d7fc9307e4abf1e5690617d9",
  "source": {
    "blob": "111df26a5302d8043902da8a667832fe9805f21c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 297,
    "path": "GRWTSK/Topology/GeneralTopology/Content/Variant76b4ed2b9df02150f40c136ac25b81b21121a7cbffc22bb238959326efa5ec5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7fc9307e4abf1e5690617d9de0942a372ff22543718650fda49663e2d96458c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Content/Variant76b4ed2b9df02150f40c136ac25b81b21121a7cbffc22bb238959326efa5ec5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6629ff8f-0591-f28c-113a-7ee9b8ce502d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem outerMeasure_caratheodory (A : Set G) :
    MeasurableSet[μ.outerMeasure.caratheodory] A ↔
      ∀ U : Opens G, μ.outerMeasure (U ∩ A) + μ.outerMeasure (U \ A) ≤ μ.outerMeasure U := by
  rw [Opens.forall]
  apply inducedOuterMeasure_caratheodory
  · apply innerContent_iUnion_nat
  · apply innerContent_mono'

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Content/Variant76b4ed2b9df02150f40c136ac25b81b21121a7cbffc22bb238959326efa5ec5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Content/Variant76b4ed2b9df02150f40c136ac25b81b21121a7cbffc22bb238959326efa5ec5a.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `111df26a5302d8043902da8a667832fe9805f21c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
