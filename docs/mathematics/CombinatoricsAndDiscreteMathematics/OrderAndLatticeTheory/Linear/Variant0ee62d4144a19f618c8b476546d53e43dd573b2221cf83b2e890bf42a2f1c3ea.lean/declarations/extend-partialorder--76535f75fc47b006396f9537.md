# extend_partialOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80222c8e-b906-c22e-5fa3-798056cc58ac",
  "kind": "theorem",
  "lexical_name": "extend_partialOrder",
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
  "slug": "extend-partialorder--76535f75fc47b006396f9537",
  "source": {
    "blob": "84ee8f47b8c11e9a2c211e361a2ad55ee2f252f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 29,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variant0ee62d4144a19f618c8b476546d53e43dd573b2221cf83b2e890bf42a2f1c3ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76535f75fc47b006396f9537e09c385d252a8e0c334f49fce8e73c948c116448",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variant0ee62d4144a19f618c8b476546d53e43dd573b2221cf83b2e890bf42a2f1c3ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80222c8e-b906-c22e-5fa3-798056cc58ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extend_partialOrder {α : Type u} (r : α → α → Prop) [IsPartialOrder α r] :
    ∃ s : α → α → Prop, IsLinearOrder α s ∧ r ≤ s := by
  let S := { s | IsPartialOrder α s }
  have hS : ∀ c, c ⊆ S → IsChain (· ≤ ·) c → ∀ y ∈ c, ∃ ub ∈ S, ∀ z ∈ c, z ≤ ub := by
    rintro c hc₁ hc₂ s hs
    haveI := (hc₁ hs).1
    refine ⟨sSup c, ?_, fun z hz => le_sSup hz⟩
    refine
        { refl := ?_
          trans := ?_
          antisymm := ?_ } <;>
      simp_rw [binary_relation_sSup_iff]
    · intro x
      exact ⟨s, hs, refl x⟩
    · rintro x y z ⟨s₁, h₁s₁, h₂s₁⟩ ⟨s₂, h₁s₂, h₂s₂⟩
      haveI : IsPartialOrder _ _ := hc₁ h₁s₁
      haveI : IsPartialOrder _ _ := hc₁ h₁s₂
      rcases hc₂.total h₁s₁ h₁s₂ with h | h
      · exact ⟨s₂, h₁s₂, _root_.trans (h _ _ h₂s₁) h₂s₂⟩
      · exact ⟨s₁, h₁s₁, _root_.trans h₂s₁ (h _ _ h₂s₂)⟩
    · rintro x y ⟨s₁, h₁s₁, h₂s₁⟩ ⟨s₂, h₁s₂, h₂s₂⟩
      haveI : IsPartialOrder _ _ := hc₁ h₁s₁
      haveI : IsPartialOrder _ _ := hc₁ h₁s₂
      rcases hc₂.total h₁s₁ h₁s₂ with h | h
      · exact antisymm (h _ _ h₂s₁) h₂s₂
      · apply antisymm h₂s₁ (h _ _ h₂s₂)
  obtain ⟨s, hrs, hs⟩ := zorn_le_nonempty₀ S hS r ‹_›
  haveI : IsPartialOrder α s := hs.prop
  refine ⟨s,
    { total := ?_, refl := hs.1.refl, trans := hs.1.trans, antisymm := hs.1.antisymm }, hrs⟩
  intro x y
  by_contra! h
  let s' x' y' := s x' y' ∨ s x' x ∧ s y y'
  rw [hs.eq_of_le (y := s') ?_ fun _ _ ↦ Or.inl] at h
  · apply h.1 (Or.inr ⟨refl _, refl _⟩)
  · refine
    { refl := fun x ↦ Or.inl (refl _)
      trans := ?_
      antisymm := ?_ }
    · rintro a b c (ab | ⟨ax : s a x, yb : s y b⟩) (bc | ⟨bx : s b x, yc : s y c⟩)
      · exact Or.inl (_root_.trans ab bc)
      · exact Or.inr ⟨_root_.trans ab bx, yc⟩
      · exact Or.inr ⟨ax, _root_.trans yb bc⟩
      · exact Or.inr ⟨ax, yc⟩
    rintro a b (ab | ⟨ax : s a x, yb : s y b⟩) (ba | ⟨bx : s b x, ya : s y a⟩)
    · exact antisymm ab ba
    · exact (h.2 (_root_.trans ya (_root_.trans ab bx))).elim
    · exact (h.2 (_root_.trans yb (_root_.trans ba ax))).elim
    · exact (h.2 (_root_.trans yb bx)).elim

/-- A type alias for `α`, intended to extend a partial order on `α` to a linear order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variant0ee62d4144a19f618c8b476546d53e43dd573b2221cf83b2e890bf42a2f1c3ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variant0ee62d4144a19f618c8b476546d53e43dd573b2221cf83b2e890bf42a2f1c3ea.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84ee8f47b8c11e9a2c211e361a2ad55ee2f252f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
