# forall_existsUnique_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1a8f13d11c4f3bed058018aa91ec4e5eff908a7e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 933,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1bd8c7a6b88ef80c1a6f1dabef94d5da2194abcf5cae9a56bd959f55b8f0480b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b45408c-0a40-0a92-5433-89ebc705d7e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4515383-6954-fe44-206f-79a2fe28680e",
  "kind": "lemma",
  "lexical_name": "forall_existsUnique_iff",
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
  "slug": "forall-existsunique-iff--f4a3c96f5097fa84edbd1809",
  "source": {
    "blob": "1a8f13d11c4f3bed058018aa91ec4e5eff908a7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 943,
    "line": 933,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1bd8c7a6b88ef80c1a6f1dabef94d5da2194abcf5cae9a56bd959f55b8f0480b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4a3c96f5097fa84edbd1809dcdb54c530052f154f899dfb1976fec23f397d75",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1bd8c7a6b88ef80c1a6f1dabef94d5da2194abcf5cae9a56bd959f55b8f0480b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4515383-6954-fe44-206f-79a2fe28680e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 933–943.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma forall_existsUnique_iff {r : α → β → Prop} :
    (∀ a, ∃! b, r a b) ↔ ∃ f : α → β, ∀ {a b}, r a b ↔ f a = b := by
  refine ⟨fun h ↦ ?_, ?_⟩
  · refine ⟨fun a ↦ (h a).choose, fun hr ↦ ?_, fun h' ↦ h' ▸ ?_⟩
    exacts [((h _).choose_spec.2 _ hr).symm, (h _).choose_spec.1]
  · rintro ⟨f, hf⟩
    simp [hf]

/-- A relation `r : α → β → Prop` is "function-like"
(for each `a` there exists a unique `b` such that `r a b`)
if and only if it is `(f · = ·)` for some function `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1bd8c7a6b88ef80c1a6f1dabef94d5da2194abcf5cae9a56bd959f55b8f0480b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1bd8c7a6b88ef80c1a6f1dabef94d5da2194abcf5cae9a56bd959f55b8f0480b.lean#L933).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a8f13d11c4f3bed058018aa91ec4e5eff908a7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
