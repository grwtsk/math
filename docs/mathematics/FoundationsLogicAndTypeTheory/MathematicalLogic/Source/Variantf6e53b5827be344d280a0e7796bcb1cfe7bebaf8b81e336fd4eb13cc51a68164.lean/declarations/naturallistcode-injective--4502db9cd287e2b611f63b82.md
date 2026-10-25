# naturalListCode_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "553ab5df0ace9944033341d97ad7ed539c5bc8e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6e53b5827be344d280a0e7796bcb1cfe7bebaf8b81e336fd4eb13cc51a68164.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ff795c8-6a38-ee9c-f3b2-d140a450626d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53d5eae7-aff7-90c1-b1ad-2af7ec8e3781",
  "kind": "theorem",
  "lexical_name": "naturalListCode_injective",
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
  "slug": "naturallistcode-injective--4502db9cd287e2b611f63b82",
  "source": {
    "blob": "553ab5df0ace9944033341d97ad7ed539c5bc8e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variantf6e53b5827be344d280a0e7796bcb1cfe7bebaf8b81e336fd4eb13cc51a68164.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4502db9cd287e2b611f63b82ab7df4e4d07a506e55da71614ad6132f5e80a433",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variantf6e53b5827be344d280a0e7796bcb1cfe7bebaf8b81e336fd4eb13cc51a68164.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53d5eae7-aff7-90c1-b1ad-2af7ec8e3781`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem naturalListCode_injective : Function.Injective naturalListCode := by
  intro left
  induction left with
  | nil =>
      intro right equal
      cases right with
      | nil => rfl
      | cons head tail => simp [naturalListCode] at equal
  | cons head tail inductionHypothesis =>
      intro right equal
      cases right with
      | nil => simp [naturalListCode] at equal
      | cons otherHead otherTail =>
          simp only [naturalListCode, Nat.add_right_cancel_iff] at equal
          have parts := Nat.pair_eq_pair.mp equal
          congr
          · exact parts.1
          · exact inductionHypothesis parts.2

/-- A lossless natural code for canonical source records. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variantf6e53b5827be344d280a0e7796bcb1cfe7bebaf8b81e336fd4eb13cc51a68164.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Source/Variantf6e53b5827be344d280a0e7796bcb1cfe7bebaf8b81e336fd4eb13cc51a68164.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `553ab5df0ace9944033341d97ad7ed539c5bc8e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
