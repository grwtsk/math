# not_continuousAt_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8650eeb53e70bac5ead941682e4055d17b8f1c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b47e0d3c-eb26-7201-c3f7-fd2548721ce9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34026d46-313f-1bc0-0986-11aea320bef3",
  "kind": "lemma",
  "lexical_name": "not_continuousAt_of_tendsto",
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
  "slug": "not-continuousat-of-tendsto--b643baf23069bdb0bd38ea81",
  "source": {
    "blob": "b8650eeb53e70bac5ead941682e4055d17b8f1c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b643baf23069bdb0bd38ea81ba4e9cdafe2f3758a42009ea9b273f6467d0f02c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuous/Variant3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34026d46-313f-1bc0-0986-11aea320bef3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_continuousAt_of_tendsto {f : X → Y} {l₁ : Filter X} {l₂ : Filter Y} {x : X}
    (hf : Tendsto f l₁ l₂) [l₁.NeBot] (hl₁ : l₁ ≤ 𝓝 x) (hl₂ : Disjoint (𝓝 (f x)) l₂) :
    ¬ ContinuousAt f x := fun cont ↦
  (cont.mono_left hl₁).not_tendsto hl₂ hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuous/Variant3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuous/Variant3dbe7c34d501c518c2ea4d56ec5af6d982394efecf25bcfe3f77f5ffee6d2647.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8650eeb53e70bac5ead941682e4055d17b8f1c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
