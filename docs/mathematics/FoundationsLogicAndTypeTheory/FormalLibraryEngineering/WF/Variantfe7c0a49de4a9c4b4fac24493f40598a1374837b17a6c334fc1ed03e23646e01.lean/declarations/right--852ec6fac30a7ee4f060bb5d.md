# right'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d0216ed49d1250db35bc6b551fb03c0c7777293",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 324,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe7c0a49de4a9c4b4fac24493f40598a1374837b17a6c334fc1ed03e23646e01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ffa14d6-6383-e2b2-6fc7-053beff9975a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:707593c0-89e8-e864-cbb6-0bc6539a10fe",
  "kind": "theorem",
  "lexical_name": "right'",
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
  "slug": "right--852ec6fac30a7ee4f060bb5d",
  "source": {
    "blob": "1d0216ed49d1250db35bc6b551fb03c0c7777293",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 324,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantfe7c0a49de4a9c4b4fac24493f40598a1374837b17a6c334fc1ed03e23646e01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:852ec6fac30a7ee4f060bb5d5d19f607a02acceb76e96c5384fc1ea7f86019d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantfe7c0a49de4a9c4b4fac24493f40598a1374837b17a6c334fc1ed03e23646e01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:707593c0-89e8-e864-cbb6-0bc6539a10fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem right' {a₁ : Nat} {b₁ : β} (h₁ : a₁ ≤ a₂) (h₂ : rb b₁ b₂) : Prod.Lex Nat.lt rb (a₁, b₁) (a₂, b₂) :=
  match Nat.eq_or_lt_of_le h₁ with
  | Or.inl h => h ▸ Prod.Lex.right a₁ h₂
  | Or.inr h => Prod.Lex.left b₁ _ h

end Lex

-- relational product based on ra and rb
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantfe7c0a49de4a9c4b4fac24493f40598a1374837b17a6c334fc1ed03e23646e01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantfe7c0a49de4a9c4b4fac24493f40598a1374837b17a6c334fc1ed03e23646e01.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d0216ed49d1250db35bc6b551fb03c0c7777293` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
