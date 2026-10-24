# isCompact_closure_of_totallyBounded_quasiComplete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9545b7beb3a6dd139e49a0997fb93db1a00f19a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 551,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/017aebaddb68bef54f973388181db7ea7f1523e2b175a9cd74bf2763b0d97684.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c73c4b4e-dabe-55aa-84cd-84daa007de24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0923a82a-0d74-d0a2-f345-e8a013e86362",
  "kind": "theorem",
  "lexical_name": "isCompact_closure_of_totallyBounded_quasiComplete",
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
  "slug": "iscompact-closure-of-totallybounded-quasicomplete--f7e8bab13a8a266aeb869e2b",
  "source": {
    "blob": "9545b7beb3a6dd139e49a0997fb93db1a00f19a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 551,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant017aebaddb68bef54f973388181db7ea7f1523e2b175a9cd74bf2763b0d97684.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7e8bab13a8a266aeb869e2bfc531aa12396bab1cec3916cf92e2f3d40a03786",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant017aebaddb68bef54f973388181db7ea7f1523e2b175a9cd74bf2763b0d97684.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0923a82a-0d74-d0a2-f345-e8a013e86362`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_closure_of_totallyBounded_quasiComplete {E : Type*} {𝕜 : Type*} [NormedField 𝕜]
    [AddCommGroup E] [Module 𝕜 E] [UniformSpace E] [IsUniformAddGroup E] [ContinuousSMul 𝕜 E]
    [QuasiCompleteSpace 𝕜 E] {s : Set E} (hs : TotallyBounded s) : IsCompact (closure s) :=
  hs.closure.isCompact_of_isComplete
    (QuasiCompleteSpace.quasiComplete (TotallyBounded.isVonNBounded 𝕜 (TotallyBounded.closure hs))
    isClosed_closure)

end QuasiCompleteSpace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant017aebaddb68bef54f973388181db7ea7f1523e2b175a9cd74bf2763b0d97684.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant017aebaddb68bef54f973388181db7ea7f1523e2b175a9cd74bf2763b0d97684.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9545b7beb3a6dd139e49a0997fb93db1a00f19a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
