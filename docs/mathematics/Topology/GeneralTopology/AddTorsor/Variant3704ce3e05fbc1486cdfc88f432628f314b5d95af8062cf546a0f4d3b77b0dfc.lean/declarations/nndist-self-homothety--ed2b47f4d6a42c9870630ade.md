# nndist_self_homothety

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbefa7f4db786f0b2c7e81fb826b6abf5e5b56e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4e6b92c-2e6c-a082-2e24-d82f31928cc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dac95c54-69f5-9722-45a9-5d868c5ee4cf",
  "kind": "theorem",
  "lexical_name": "nndist_self_homothety",
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
  "slug": "nndist-self-homothety--ed2b47f4d6a42c9870630ade",
  "source": {
    "blob": "bbefa7f4db786f0b2c7e81fb826b6abf5e5b56e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed2b47f4d6a42c9870630ade7c89f322c90798ecfb2e237c0c7c11624a88d218",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dac95c54-69f5-9722-45a9-5d868c5ee4cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nndist_self_homothety (p₁ p₂ : P) (c : 𝕜) :
    nndist p₂ (homothety p₁ c p₂) = ‖1 - c‖₊ * nndist p₁ p₂ :=
  NNReal.eq <| dist_self_homothety _ _ _

section invertibleTwo

variable [Invertible (2 : 𝕜)]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddTorsor/Variant3704ce3e05fbc1486cdfc88f432628f314b5d95af8062cf546a0f4d3b77b0dfc.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbefa7f4db786f0b2c7e81fb826b6abf5e5b56e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
