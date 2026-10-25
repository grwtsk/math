# cutExpand_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ce3d2a4339fd55b11be144e9906c908259b2ca8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09afd978-2b5f-d3e3-b984-a59a1fb5aed5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09769569-9ca1-a1af-d167-452a11be5de6",
  "kind": "lemma",
  "lexical_name": "cutExpand_closed",
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
  "slug": "cutexpand-closed--55e70084262cac812b8c26bc",
  "source": {
    "blob": "7ce3d2a4339fd55b11be144e9906c908259b2ca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55e70084262cac812b8c26bce7ff7ee95f0e8d4babe37a9716a5d9d6531dd519",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09769569-9ca1-a1af-d167-452a11be5de6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cutExpand_closed [Std.Irrefl r] (p : α → Prop)
    (h : ∀ {a' a}, r a' a → p a → p a') {s' s : Multiset α} :
    CutExpand r s' s → (∀ a ∈ s, p a) → ∀ a ∈ s', p a := by
  classical
  rw [cutExpand_iff]
  rintro ⟨t, a, hr, ha, rfl⟩ hsp a' h'
  obtain (h' | h') := mem_add.1 h'
  exacts [hsp a' (mem_of_mem_erase h'), h (hr a' h') (hsp a ha)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant7bd51a301e6c2ebc44a6b796aab0f7f081bd4ba764b382d8dfe9fff196f03bed.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ce3d2a4339fd55b11be144e9906c908259b2ca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
