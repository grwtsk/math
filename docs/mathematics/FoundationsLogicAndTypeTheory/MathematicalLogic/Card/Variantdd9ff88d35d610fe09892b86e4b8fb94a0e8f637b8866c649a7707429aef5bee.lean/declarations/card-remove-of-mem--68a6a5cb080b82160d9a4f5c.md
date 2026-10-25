# card_remove_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd16ff4fd9099651c4d940d4387f16b51b86395f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3c752c8-2537-35c8-60d9-e6fabe114627",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aebbcf7b-b6a5-0c19-7438-32293b501f98",
  "kind": "theorem",
  "lexical_name": "card_remove_of_mem",
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
  "slug": "card-remove-of-mem--68a6a5cb080b82160d9a4f5c",
  "source": {
    "blob": "bd16ff4fd9099651c4d940d4387f16b51b86395f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68a6a5cb080b82160d9a4f5cd0d0cbdb40bad12b806a5a7ca25ff30b5ca529e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aebbcf7b-b6a5-0c19-7438-32293b501f98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_remove_of_mem {a : α} : ∀ {as : List α}, a ∈ as → card as = card (remove a as) + 1
  | [], h => False.elim (not_mem_nil _ h)
  | (a' :: as), h => by
    cases Decidable.em (a = a') with
    | inl h' =>
      simp [remove, if_pos h']
      cases Decidable.em (a ∈ as) with
      | inl h'' =>
        have h₃ : a' ∈ as := h' ▸ h''
        simp [card_remove_of_mem h'', h₃]
      | inr h'' =>
        have h₃ : a' ∉ as := h' ▸ h''
        simp [card_cons_of_not_mem h₃, remove_eq_of_not_mem h'']
    | inr h' =>
        have h₃ : a ∈ as := (mem_cons.1 h).resolve_left h'
        simp [remove, h']
        cases Decidable.em (a' ∈ as) with
        | inl h'' =>
          have : a' ∈ remove a as := by rw [mem_remove_iff]; exact ⟨h'', Ne.symm h'⟩
          simp [h'', this, card_remove_of_mem h₃]
        | inr h'' =>
          have : a' ∉ remove a as := fun h ↦ h'' (mem_of_mem_remove h)
          simp [h'', this, card_remove_of_mem h₃]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd16ff4fd9099651c4d940d4387f16b51b86395f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
