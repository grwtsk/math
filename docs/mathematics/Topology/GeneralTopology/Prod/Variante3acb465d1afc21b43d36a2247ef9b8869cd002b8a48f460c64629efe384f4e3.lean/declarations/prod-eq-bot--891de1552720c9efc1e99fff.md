# prod_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78018720c807c48411e914ffbc8e4fbc3b5a7abf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 388,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3acb465d1afc21b43d36a2247ef9b8869cd002b8a48f460c64629efe384f4e3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c47901b-81f3-3781-d093-0b148af2bf80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66d8fdec-32e8-1cb5-1f21-27a1e5c0f6d3",
  "kind": "theorem",
  "lexical_name": "prod_eq_bot",
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
  "slug": "prod-eq-bot--891de1552720c9efc1e99fff",
  "source": {
    "blob": "78018720c807c48411e914ffbc8e4fbc3b5a7abf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 388,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variante3acb465d1afc21b43d36a2247ef9b8869cd002b8a48f460c64629efe384f4e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:891de1552720c9efc1e99fffd0af1da6e711e2256c3f5feeb58c05ea37c3355d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variante3acb465d1afc21b43d36a2247ef9b8869cd002b8a48f460c64629efe384f4e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66d8fdec-32e8-1cb5-1f21-27a1e5c0f6d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_eq_bot : f ×ˢ g = ⊥ ↔ f = ⊥ ∨ g = ⊥ := by
  simp_rw [← empty_mem_iff_bot, mem_prod_iff, subset_empty_iff, prod_eq_empty_iff, ← exists_prop,
    Subtype.exists', exists_or, exists_const, Subtype.exists, exists_prop, exists_eq_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variante3acb465d1afc21b43d36a2247ef9b8869cd002b8a48f460c64629efe384f4e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variante3acb465d1afc21b43d36a2247ef9b8869cd002b8a48f460c64629efe384f4e3.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78018720c807c48411e914ffbc8e4fbc3b5a7abf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
