# continuousAt_add_coe_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a402a99dd47976e23cb9e470534e91059ba0f4cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 382,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd94ae135aa10f15d2861ddbdeb2d09bac0ed61835e80eb65623b2771ae43e4f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0961664-1cdb-0880-4ef7-e4ee808c5756",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f6563e2-bf3a-fcc3-1162-035bc9798ddb",
  "kind": "theorem",
  "lexical_name": "continuousAt_add_coe_bot",
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
  "slug": "continuousat-add-coe-bot--d06cf14074289f182a503e74",
  "source": {
    "blob": "a402a99dd47976e23cb9e470534e91059ba0f4cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 382,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantcd94ae135aa10f15d2861ddbdeb2d09bac0ed61835e80eb65623b2771ae43e4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d06cf14074289f182a503e7470cb9e3ae59a397b0c77ead6bcb5d6399b92b106",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variantcd94ae135aa10f15d2861ddbdeb2d09bac0ed61835e80eb65623b2771ae43e4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f6563e2-bf3a-fcc3-1162-035bc9798ddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_add_coe_bot (a : ℝ) :
    ContinuousAt (fun p : EReal × EReal => p.1 + p.2) (a, ⊥) := by
  simpa only [add_comm, Function.comp_def, ContinuousAt, Prod.swap]
    using Tendsto.comp (continuousAt_add_bot_coe a) (continuous_swap.tendsto ((a : EReal), ⊥))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variantcd94ae135aa10f15d2861ddbdeb2d09bac0ed61835e80eb65623b2771ae43e4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantcd94ae135aa10f15d2861ddbdeb2d09bac0ed61835e80eb65623b2771ae43e4f.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a402a99dd47976e23cb9e470534e91059ba0f4cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
