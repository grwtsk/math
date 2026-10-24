# Tendsto.Ioc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d0bc7562ee00a29c631c3127f7a239e89109b988",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/407d5623935d41004b1ff8c5088f944a20955ad55b0d9d782cbe30168d9c3810.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8578d13c-c0cf-9d00-cd1c-e8f620e30195",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e50093c-6c6c-f3de-cfdc-2601a9615b75",
  "kind": "theorem",
  "lexical_name": "Tendsto.Ioc",
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
  "slug": "tendsto-ioc--d00f126670d27fc8e751f61a",
  "source": {
    "blob": "d0bc7562ee00a29c631c3127f7a239e89109b988",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/Interval/Variant407d5623935d41004b1ff8c5088f944a20955ad55b0d9d782cbe30168d9c3810.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d00f126670d27fc8e751f61a8ee95878d3e16b03c7a1ed2b686bb1ec20862dd7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Interval/Variant407d5623935d41004b1ff8c5088f944a20955ad55b0d9d782cbe30168d9c3810.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e50093c-6c6c-f3de-cfdc-2601a9615b75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Tendsto.Ioc {l₁ l₂ : Filter α} [TendstoIxxClass Ioc l₁ l₂] {lb : Filter β}
    {u₁ u₂ : β → α} (h₁ : Tendsto u₁ lb l₁) (h₂ : Tendsto u₂ lb l₁) :
    Tendsto (fun x => Ioc (u₁ x) (u₂ x)) lb l₂.smallSets :=
  (@TendstoIxxClass.tendsto_Ixx α Set.Ioc _ _ _).comp <| h₁.prodMk h₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Interval/Variant407d5623935d41004b1ff8c5088f944a20955ad55b0d9d782cbe30168d9c3810.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Interval/Variant407d5623935d41004b1ff8c5088f944a20955ad55b0d9d782cbe30168d9c3810.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0bc7562ee00a29c631c3127f7a239e89109b988` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
