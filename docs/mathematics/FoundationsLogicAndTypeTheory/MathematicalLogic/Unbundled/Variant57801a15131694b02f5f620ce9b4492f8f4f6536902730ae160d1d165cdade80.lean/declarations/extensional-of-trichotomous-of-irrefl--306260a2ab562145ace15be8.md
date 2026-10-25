# extensional_of_trichotomous_of_irrefl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce8971bed3e8b4b186b2104c67ff171a881c239b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 404,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57801a15131694b02f5f620ce9b4492f8f4f6536902730ae160d1d165cdade80.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2610cf10-0066-aaac-6ecc-f0f5eb78e92a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36f6880d-bc58-c58b-4fe8-ca63ca46438e",
  "kind": "theorem",
  "lexical_name": "extensional_of_trichotomous_of_irrefl",
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
  "slug": "extensional-of-trichotomous-of-irrefl--306260a2ab562145ace15be8",
  "source": {
    "blob": "ce8971bed3e8b4b186b2104c67ff171a881c239b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 404,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unbundled/Variant57801a15131694b02f5f620ce9b4492f8f4f6536902730ae160d1d165cdade80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:306260a2ab562145ace15be8a6d7ff4316537b362407f97fbf70404183f7f3df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Unbundled/Variant57801a15131694b02f5f620ce9b4492f8f4f6536902730ae160d1d165cdade80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36f6880d-bc58-c58b-4fe8-ca63ca46438e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extensional_of_trichotomous_of_irrefl (r : α → α → Prop) [Std.Trichotomous r] [Std.Irrefl r]
    {a b : α} (H : ∀ x, r x a ↔ r x b) : a = b :=
  ((@trichotomous _ r _ a b).resolve_left <| mt (H _).2 <| irrefl a).resolve_right <| mt (H _).1
    <| irrefl b
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Unbundled/Variant57801a15131694b02f5f620ce9b4492f8f4f6536902730ae160d1d165cdade80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unbundled/Variant57801a15131694b02f5f620ce9b4492f8f4f6536902730ae160d1d165cdade80.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce8971bed3e8b4b186b2104c67ff171a881c239b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
