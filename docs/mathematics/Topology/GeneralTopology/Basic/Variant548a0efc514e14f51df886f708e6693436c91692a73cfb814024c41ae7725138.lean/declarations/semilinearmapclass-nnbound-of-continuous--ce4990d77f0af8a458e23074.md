# SemilinearMapClass.nnbound_of_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e6112200b6435832001d46b94f1aa6f6a35d0f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/548a0efc514e14f51df886f708e6693436c91692a73cfb814024c41ae7725138.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85e3a44b-f484-db70-6d1f-c5a076e849ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c15ae62-a1b7-991e-469b-d80270baaa43",
  "kind": "theorem",
  "lexical_name": "SemilinearMapClass.nnbound_of_continuous",
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
  "slug": "semilinearmapclass-nnbound-of-continuous--ce4990d77f0af8a458e23074",
  "source": {
    "blob": "0e6112200b6435832001d46b94f1aa6f6a35d0f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 119,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant548a0efc514e14f51df886f708e6693436c91692a73cfb814024c41ae7725138.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce4990d77f0af8a458e23074dc0e82439e8fc5f237cc05ff60032218afa7ef01",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant548a0efc514e14f51df886f708e6693436c91692a73cfb814024c41ae7725138.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c15ae62-a1b7-991e-469b-d80270baaa43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SemilinearMapClass.nnbound_of_continuous [SemilinearMapClass 𝓕 σ₁₂ E F] (f : 𝓕)
    (hf : Continuous f) : ∃ C : ℝ≥0, 0 < C ∧ ∀ x : E, ‖f x‖₊ ≤ C * ‖x‖₊ :=
  let ⟨c, hc, hcf⟩ := SemilinearMapClass.bound_of_continuous f hf; ⟨⟨c, hc.le⟩, hc, hcf⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant548a0efc514e14f51df886f708e6693436c91692a73cfb814024c41ae7725138.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant548a0efc514e14f51df886f708e6693436c91692a73cfb814024c41ae7725138.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e6112200b6435832001d46b94f1aa6f6a35d0f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
