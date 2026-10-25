# map_decode_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5b32a9fb28e5e6073023a67849921041ec4df68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 658,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49870014-e477-fe3a-cf07-e9bddb0f6671",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af47f7c0-1c04-c4fc-c6dc-29a255dd5f6f",
  "kind": "theorem",
  "lexical_name": "map_decode_iff",
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
  "slug": "map-decode-iff--8d4fd6bcf574c16be7e2b93b",
  "source": {
    "blob": "e5b32a9fb28e5e6073023a67849921041ec4df68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 658,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d4fd6bcf574c16be7e2b93b959ffa7caf0f19d4daa0b868a57d97a6f0538ca9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af47f7c0-1c04-c4fc-c6dc-29a255dd5f6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 658–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_decode_iff {f : α → β → σ} :
    (Computable₂ fun a n => (decode (α := β) n).map (f a)) ↔ Computable₂ f := by
  convert (bind_decode_iff (f := fun a => Option.some ∘ f a)).trans option_some_iff
  apply Option.map_eq_bind
#align computable.map_decode_iff Computable.map_decode_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean#L658).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5b32a9fb28e5e6073023a67849921041ec4df68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
