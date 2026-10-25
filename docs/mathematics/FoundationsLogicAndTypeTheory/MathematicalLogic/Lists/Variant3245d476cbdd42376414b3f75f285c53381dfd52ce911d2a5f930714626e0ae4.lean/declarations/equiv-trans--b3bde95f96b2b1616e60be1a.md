# Equiv.trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "530150334c3df6ab26670a10ad58c0ce897af5ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 274,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/3245d476cbdd42376414b3f75f285c53381dfd52ce911d2a5f930714626e0ae4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:620cffc6-ce58-827d-9ca9-c65e4f26f93d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4790ebf-fe49-ce04-7134-8592deaf6b10",
  "kind": "theorem",
  "lexical_name": "Equiv.trans",
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
  "slug": "equiv-trans--b3bde95f96b2b1616e60be1a",
  "source": {
    "blob": "530150334c3df6ab26670a10ad58c0ce897af5ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 274,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3245d476cbdd42376414b3f75f285c53381dfd52ce911d2a5f930714626e0ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3bde95f96b2b1616e60be1a12b22fe088989e685cd6643722e17c148301cb72",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3245d476cbdd42376414b3f75f285c53381dfd52ce911d2a5f930714626e0ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4790ebf-fe49-ce04-7134-8592deaf6b10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equiv.trans : ∀ {l₁ l₂ l₃ : Lists α}, l₁ ~ l₂ → l₂ ~ l₃ → l₁ ~ l₃ := by
  let trans := fun l₁ : Lists α => ∀ ⦃l₂ l₃⦄, l₁ ~ l₂ → l₂ ~ l₃ → l₁ ~ l₃
  suffices PProd (∀ l₁, trans l₁) (∀ (l : Lists' α true), ∀ l' ∈ l.toList, trans l') by exact this.1
  apply inductionMut
  · intro a l₂ l₃ h₁ h₂
    rwa [← equiv_atom.1 h₁] at h₂
  · intro l₁ IH l₂ l₃ h₁ h₂
    obtain - | l₂ := id h₁
    · exact h₂
    obtain - | l₃ := id h₂
    · exact h₁
    obtain ⟨hl₁, hr₁⟩ := Equiv.antisymm_iff.1 h₁
    obtain ⟨hl₂, hr₂⟩ := Equiv.antisymm_iff.1 h₂
    apply Equiv.antisymm_iff.2; constructor <;> apply Lists'.subset_def.2
    · intro a₁ m₁
      rcases Lists'.mem_of_subset' hl₁ m₁ with ⟨a₂, m₂, e₁₂⟩
      rcases Lists'.mem_of_subset' hl₂ m₂ with ⟨a₃, m₃, e₂₃⟩
      exact ⟨a₃, m₃, IH _ m₁ e₁₂ e₂₃⟩
    · intro a₃ m₃
      rcases Lists'.mem_of_subset' hr₂ m₃ with ⟨a₂, m₂, e₃₂⟩
      rcases Lists'.mem_of_subset' hr₁ m₂ with ⟨a₁, m₁, e₂₁⟩
      exact ⟨a₁, m₁, (IH _ m₁ e₂₁.symm e₃₂.symm).symm⟩
  · rintro _ ⟨⟩
  · intro a l IH₁ IH₂
    simpa using ⟨IH₁, IH₂⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3245d476cbdd42376414b3f75f285c53381dfd52ce911d2a5f930714626e0ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant3245d476cbdd42376414b3f75f285c53381dfd52ce911d2a5f930714626e0ae4.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `530150334c3df6ab26670a10ad58c0ce897af5ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
