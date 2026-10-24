# enorm_smul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3077e85faf1a0225b540ec0952c6a6ed11684d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f46a525b-8176-7bd2-a49c-8c7593d908a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e7dd53f-48f1-9183-e0ee-19ff3b2fde9e",
  "kind": "lemma",
  "lexical_name": "enorm_smul_le",
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
  "slug": "enorm-smul-le--ef266cf6b46ba7ee9b0c6d54",
  "source": {
    "blob": "b3077e85faf1a0225b540ec0952c6a6ed11684d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 38,
    "path": "GRWTSK/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef266cf6b46ba7ee9b0c6d542624409f40d7bced5a1923d991e8f472b00bcb32",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e7dd53f-48f1-9183-e0ee-19ff3b2fde9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma enorm_smul_le : ‖r • x‖ₑ ≤ ‖r‖ₑ * ‖x‖ₑ := by
  simpa [enorm, ← ENNReal.coe_mul] using nnnorm_smul_le ..

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/MulAction/Variant4b8bcc2e83d882c53b9b27cf9f9f9161875d1cdbc0b04341ac24551cbe09b04e.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3077e85faf1a0225b540ec0952c6a6ed11684d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
