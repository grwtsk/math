# isBigOWith_of_tendsto_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7a59d0427ebce7447368cbc771063f975ea2f62",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee70d7ad-4ab4-6a52-36ef-c3d2c6f79d79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44ee5e53-5d3c-8504-c6e1-7ff4685ba7b6",
  "kind": "theorem",
  "lexical_name": "isBigOWith_of_tendsto_bot",
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
  "slug": "isbigowith-of-tendsto-bot--ade2a6a63b462e085f0d715a",
  "source": {
    "blob": "b7a59d0427ebce7447368cbc771063f975ea2f62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ade2a6a63b462e085f0d715adef683279d0517842473acf77c0a69886472cc6a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44ee5e53-5d3c-8504-c6e1-7ff4685ba7b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigOWith_of_tendsto_bot {C : ℝ} {f g : ℝ → ℝ} {l : Filter ℝ}
    (h : Tendsto (fun x ↦ g x / f x) l atBot) (hC : 0 < C) :
    IsBigOWith C l f g :=
  Asymptotics.IsLittleO.forall_isBigOWith (.of_tendsto_div_atBot h) hC

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant5603380b4ee9278e09b31a447a2653d1db76f602f9e0d6896269a79c78dcd1c5.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7a59d0427ebce7447368cbc771063f975ea2f62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
