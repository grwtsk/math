# some_append_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90a1c499b3aed5a4b0c9368068b16a3d6679ae8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 712,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08bce44eb67ea1edbe55459dc8a7e43063d2c9659cbb269c47ed9c657e791b87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:242dc1e1-bd13-31cf-22a1-7d3f569354da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1291e9f-de1a-364c-9081-3a4ebc855909",
  "kind": "theorem",
  "lexical_name": "some_append_some",
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
  "slug": "some-append-some--063d12c61557c95faabe64ee",
  "source": {
    "blob": "90a1c499b3aed5a4b0c9368068b16a3d6679ae8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 714,
    "line": 712,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant08bce44eb67ea1edbe55459dc8a7e43063d2c9659cbb269c47ed9c657e791b87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:063d12c61557c95faabe64ee5f6300c6c4abbfbb4e7a8337cec60f4b4edfc45f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant08bce44eb67ea1edbe55459dc8a7e43063d2c9659cbb269c47ed9c657e791b87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1291e9f-de1a-364c-9081-3a4ebc855909`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 712–714.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem some_append_some [Append α] (a b : α) : some a ++ some b = some (a ++ b) := by
  simp [append_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant08bce44eb67ea1edbe55459dc8a7e43063d2c9659cbb269c47ed9c657e791b87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Part/Variant08bce44eb67ea1edbe55459dc8a7e43063d2c9659cbb269c47ed9c657e791b87.lean#L712).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90a1c499b3aed5a4b0c9368068b16a3d6679ae8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
