# card_remove_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57b1c109-53f0-47f6-d47f-b2f22a87eaf3",
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
  "slug": "card-remove-of-mem--dc775dee666861c91394f596",
  "source": {
    "blob": "74b069a5e423102def4332a301a36654753412ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant1dce1d3c3e0a7a0f5feef3a28766b7328b8ebec8b5375c4ae0baa5b058d2d7f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc775dee666861c91394f5965faa27c9298c2cd616c736d5156341724d61d23f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant1dce1d3c3e0a7a0f5feef3a28766b7328b8ebec8b5375c4ae0baa5b058d2d7f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57b1c109-53f0-47f6-d47f-b2f22a87eaf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–131.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant1dce1d3c3e0a7a0f5feef3a28766b7328b8ebec8b5375c4ae0baa5b058d2d7f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant1dce1d3c3e0a7a0f5feef3a28766b7328b8ebec8b5375c4ae0baa5b058d2d7f3.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74b069a5e423102def4332a301a36654753412ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
