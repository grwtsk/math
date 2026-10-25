# Equiv.trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d255e951-a0ee-42e8-6d14-961a1d40f0f2",
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
  "slug": "equiv-trans--be46da62be1fd00b4654f617",
  "source": {
    "blob": "df5ecb33c68697a9d3be27bc7615c9452583bd80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 323,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be46da62be1fd00b4654f617ffb84d76b634f49cbf3618f87b5c9153ef9b1fc8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d255e951-a0ee-42e8-6d14-961a1d40f0f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equiv.trans : ∀ {l₁ l₂ l₃ : Lists α}, l₁ ~ l₂ → l₂ ~ l₃ → l₁ ~ l₃ := by
  let trans := fun l₁ : Lists α => ∀ ⦃l₂ l₃⦄, l₁ ~ l₂ → l₂ ~ l₃ → l₁ ~ l₃
  suffices PProd (∀ l₁, trans l₁) (∀ (l : Lists' α true), ∀ l' ∈ l.toList, trans l') by exact this.1
  apply inductionMut
  · intro a l₂ l₃ h₁ h₂
    rwa [← equiv_atom.1 h₁] at h₂
  · intro l₁ IH l₂ l₃ h₁ h₂
    -- Porting note: Two 'have's are for saving the state.
    have h₁' := h₁
    have h₂' := h₂
    cases' h₁ with _ _ l₂
    · exact h₂
    cases' h₂ with _ _ l₃
    · exact h₁'
    cases' Equiv.antisymm_iff.1 h₁' with hl₁ hr₁
    cases' Equiv.antisymm_iff.1 h₂' with hl₂ hr₂
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
  · intro a l IH₁ IH
    -- Porting note: Previous code was:
    -- simpa [IH₁] using IH
    --
    -- Assumption fails.
    simp only [Lists'.toList, Sigma.eta, List.find?, List.mem_cons, forall_eq_or_imp]
    constructor
    · intros l₂ l₃ h₁ h₂
      exact IH₁ h₁ h₂
    · intros a h₁ l₂ l₃ h₂ h₃
      exact IH _ h₁ h₂ h₃
#align lists.equiv.trans Lists.Equiv.trans

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e101d47eaf29e9b9d2d650b0e465827237709e215d26c3f40d42fa4ef00b4d.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df5ecb33c68697a9d3be27bc7615c9452583bd80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
