# addLECancellable_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b99ca4c16b93127b88e7a052fd485da0f5fc613",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 676,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbe280adee0369a9e12b1f1e4ae6c30cd3b7e490fe86bf6c05e046bea6a35280.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d304949-5dfb-e6ff-9662-4d1e64e02eda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acd87547-abae-58cf-b5d0-1eacd01c903d",
  "kind": "theorem",
  "lexical_name": "addLECancellable_coe",
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
  "slug": "addlecancellable-coe--d16bc1bae556089964f8545c",
  "source": {
    "blob": "7b99ca4c16b93127b88e7a052fd485da0f5fc613",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 676,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/EReal/Variantfbe280adee0369a9e12b1f1e4ae6c30cd3b7e490fe86bf6c05e046bea6a35280.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d16bc1bae556089964f8545c72fb6d388d076fc803cbd41e1e2fdcd0ab145aaa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/EReal/Variantfbe280adee0369a9e12b1f1e4ae6c30cd3b7e490fe86bf6c05e046bea6a35280.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acd87547-abae-58cf-b5d0-1eacd01c903d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 676–684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addLECancellable_coe (x : ℝ) : AddLECancellable (x : EReal)
  | _, ⊤, _ => le_top
  | ⊥, _, _ => bot_le
  | ⊤, (z : ℝ), h => by simp only [coe_add_top, ← coe_add, top_le_iff, coe_ne_top] at h
  | _, ⊥, h => by simpa using h
  | (y : ℝ), (z : ℝ), h => by
    simpa only [← coe_add, EReal.coe_le_coe_iff, add_le_add_iff_left] using h

-- porting note: todo: add `MulLECancellable.strictMono*` etc
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/EReal/Variantfbe280adee0369a9e12b1f1e4ae6c30cd3b7e490fe86bf6c05e046bea6a35280.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/EReal/Variantfbe280adee0369a9e12b1f1e4ae6c30cd3b7e490fe86bf6c05e046bea6a35280.lean#L676).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b99ca4c16b93127b88e7a052fd485da0f5fc613` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
